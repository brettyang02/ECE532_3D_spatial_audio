import numpy as np
import scipy.signal as signal
import soundfile as sf
import os

# --- CONFIGURATION ---
INPUT_FILENAME = 'test.wav'
OUTPUT_FILENAME = 'coe_verification_output.wav'

# COE Files to Load
COE_PATH_L = 'hrtf_coefficients_left.coe'
# If you haven't generated the Right COE yet, set this to None (will use Left for both)
COE_PATH_R = 'hrtf_coefficients_right.coe'

SAMPLE_RATE = 44100
BLOCK_SIZE = 4096
ROTATION_SPEED = 0.3 # Revolutions per second

def parse_coe_file(filepath):
    """ 
    Parses a Xilinx .coe file back into a numpy array of coefficients.
    Returns: Array of shape (Num_Angles, 128) 
    """
    print(f"Parsing {filepath}...")
    coeffs = []
    
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Clean up the file content to get just the numbers
    # Remove headers like "memory_initialization_radix=16;"
    if "memory_initialization_vector=" in content:
        _, data_str = content.split("memory_initialization_vector=")
    else:
        print("Error: Invalid COE format. Missing vector header.")
        return None

    # Remove trailing semicolon, newlines, and split by comma
    data_str = data_str.replace(';', '').replace('\n', '')
    hex_values = data_str.split(',')
    
    for h in hex_values:
        h = h.strip()
        if not h: continue
        
        # 1. Convert Hex String to Integer
        val = int(h, 16)
        
        # 2. Handle 16-bit Signed Two's Complement
        # (If val > 32767, it represents a negative number)
        if val > 32767:
            val -= 65536
            
        # 3. Normalize to Float (-1.0 to 1.0) for processing
        # We divide by 32768.0 because 0x7FFF = 32767
        coeffs.append(val / 32768.0)
        
    coeffs = np.array(coeffs)
    
    # 4. Reshape into filters (Num_Angles x 128 Taps)
    if len(coeffs) % 128 != 0:
        print(f"Warning: Total samples {len(coeffs)} is not divisible by 128!")
        
    num_angles = len(coeffs) // 128
    print(f" -> Loaded {num_angles} filters (Angles 0-{num_angles*5}°)")
    
    return coeffs.reshape((num_angles, 128))

def main():
    print(f"--- COE Verification Tool ---")
    
    # 1. Load COE Data
    if not os.path.exists(COE_PATH_L):
        print(f"Error: Could not find {COE_PATH_L}")
        return

    filters_l = parse_coe_file(COE_PATH_L)
    
    if COE_PATH_R and os.path.exists(COE_PATH_R):
        filters_r = parse_coe_file(COE_PATH_R)
    else:
        print("Warning: Right COE not found/provided. Using Left coefficients for both ears.")
        filters_r = filters_l

    # 2. Load Audio
    try:
        audio_in, fs = sf.read(INPUT_FILENAME)
        if len(audio_in.shape) > 1: audio_in = audio_in[:, 0]
        print(f"Loaded {INPUT_FILENAME}")
    except FileNotFoundError:
        print("Input missing. Generating White Noise.")
        audio_in = np.random.uniform(-0.1, 0.1, 44100*5)
        fs = 44100

    num_blocks = len(audio_in) // BLOCK_SIZE
    output_l = []
    output_r = []

    # --- INITIALIZATION ---
    curr_angle_idx = 0
    h_prev_l = filters_l[curr_angle_idx]
    h_prev_r = filters_r[curr_angle_idx]
    
    zi_prev_l = np.zeros(127)
    zi_prev_r = np.zeros(127)
    
    print(f"Processing audio...")

    for i in range(num_blocks):
        # A. Slice Chunk
        start = i * BLOCK_SIZE
        end = start + BLOCK_SIZE
        chunk = audio_in[start:end]
        
        # B. Calculate Target Angle Index
        # Logic: 0.3 rot/sec -> Angle -> Divide by 5 -> Integer Index
        t = i * BLOCK_SIZE / fs
        angle_deg = (t * ROTATION_SPEED * 360) % 360
        target_idx = int(round(angle_deg / 5.0)) % 72 # Assuming 72 filters (0-355)
        
        # Safety clamp if your COE has fewer angles
        target_idx = min(target_idx, len(filters_l) - 1)
        
        # C. Fetch "Next" Filters from Memory Arrays
        h_next_l = filters_l[target_idx]
        h_next_r = filters_r[target_idx]
        
        # D. STATEFUL FILTERING (Exact logic from your previous script)
        
        # 1. Fade Out Old
        out_old_l, _ = signal.lfilter(h_prev_l, 1.0, chunk, zi=zi_prev_l)
        out_old_r, _ = signal.lfilter(h_prev_r, 1.0, chunk, zi=zi_prev_r)
        
        # 2. Fade In New
        zi_new_init_l = np.zeros(127)
        zi_new_init_r = np.zeros(127)
        out_new_l, zi_next_l = signal.lfilter(h_next_l, 1.0, chunk, zi=zi_new_init_l)
        out_new_r, zi_next_r = signal.lfilter(h_next_r, 1.0, chunk, zi=zi_new_init_r)
        
        # 3. Cross-Fade
        fade_in = np.linspace(0, 1, BLOCK_SIZE)
        fade_out = 1.0 - fade_in
        
        chunk_out_l = (out_old_l * fade_out) + (out_new_l * fade_in)
        chunk_out_r = (out_old_r * fade_out) + (out_new_r * fade_in)
        
        output_l.append(chunk_out_l)
        output_r.append(chunk_out_r)
        
        # E. Update State
        h_prev_l = h_next_l
        h_prev_r = h_next_r
        zi_prev_l = zi_next_l
        zi_prev_r = zi_next_r
        
        if i % 10 == 0:
            print(f"Block {i}/{num_blocks} -> Index {target_idx}", end='\r')

    # Save
    full_l = np.concatenate(output_l)
    full_r = np.concatenate(output_r)
    stereo_out = np.column_stack((full_l, full_r))
    
    sf.write(OUTPUT_FILENAME, stereo_out, fs)
    print(f"\nDone! Verification file saved to {OUTPUT_FILENAME}")

if __name__ == "__main__":
    main()