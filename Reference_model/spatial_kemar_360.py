import numpy as np
import scipy.signal as signal
import soundfile as sf
import os

# --- CONFIGURATION ---
INPUT_FILENAME = 'test.wav'
OUTPUT_FILENAME = 'kemar_360_rotation_noclip.wav'

# Path to the KEMAR folder you verified
KEMAR_DIR = os.path.join('KEMAR', 'elev0') 

SAMPLE_RATE = 44100
BLOCK_SIZE = 4096      # Size of audio chunks to process
ROTATION_SPEED = 0.3   # Revolutions per second

def load_kemar_filters(angle_deg):
    """ Loads KEMAR HRTF (128 taps) for a specific angle. """
    target_angle = int(round(angle_deg / 5.0) * 5) % 360
    fname_l = f"L0e{target_angle:03d}a.wav"
    fname_r = f"R0e{target_angle:03d}a.wav"
    path_l = os.path.join(KEMAR_DIR, fname_l)
    path_r = os.path.join(KEMAR_DIR, fname_r)
    
    # Defaults
    h_l = np.zeros(128); h_l[0] = 1.0
    h_r = np.zeros(128); h_r[0] = 1.0
    
    if os.path.exists(path_l): h_l, _ = sf.read(path_l)
    if os.path.exists(path_r): h_r, _ = sf.read(path_r)

    # Force 128 Taps
    limit = 128
    h_l = np.pad(h_l, (0, max(0, limit - len(h_l))))[:limit]
    h_r = np.pad(h_r, (0, max(0, limit - len(h_r))))[:limit]
        
    return h_l, h_r

def main():
    print(f"--- Generating 360 Clean Rotation (Stateful) ---")
    
    # 1. Load Audio
    try:
        audio_in, fs = sf.read(INPUT_FILENAME)
        if len(audio_in.shape) > 1: audio_in = audio_in[:, 0]
    except FileNotFoundError:
        print("Input missing. Generating Noise.")
        audio_in = np.random.uniform(-0.5, 0.5, 44100*10)
        fs = 44100

    num_blocks = len(audio_in) // BLOCK_SIZE
    output_l = []
    output_r = []

    # --- INITIALIZATION ---
    # Start at Angle 0
    curr_angle = 0
    h_prev_l, h_prev_r = load_kemar_filters(curr_angle)
    
    # Initialize Filter States (zi)
    # We need a state vector of size max(len(a), len(b)) - 1.
    # Since b=128 and a=1, size is 127.
    zi_prev_l = np.zeros(len(h_prev_l) - 1)
    zi_prev_r = np.zeros(len(h_prev_r) - 1)
    
    print(f"Processing...")

    for i in range(num_blocks):
        # A. Slice Chunk
        start = i * BLOCK_SIZE
        end = start + BLOCK_SIZE
        chunk = audio_in[start:end]
        
        # B. Calculate Target Angle
        t = i * BLOCK_SIZE / fs
        # Calculate angle for the END of this block
        target_angle = (t * ROTATION_SPEED * 360) % 360
        
        # C. Load "Next" Filters
        h_next_l, h_next_r = load_kemar_filters(target_angle)
        
        # D. STATEFUL FILTERING (The Fix)
        
        # 1. Run the OLD filter (Fade Out)
        # We use 'zi_prev' to continue the sound from the last block seamlessly.
        out_old_l, _ = signal.lfilter(h_prev_l, 1.0, chunk, zi=zi_prev_l)
        out_old_r, _ = signal.lfilter(h_prev_r, 1.0, chunk, zi=zi_prev_r)
        
        # 2. Run the NEW filter (Fade In)
        # We start with a "Cold" state (zeros). 
        # Why is this okay? Because we fade this in from Silence (0.0).
        zi_new_init_l = np.zeros(len(h_next_l) - 1)
        zi_new_init_r = np.zeros(len(h_next_r) - 1)
        
        out_new_l, zi_next_l = signal.lfilter(h_next_l, 1.0, chunk, zi=zi_new_init_l)
        out_new_r, zi_next_r = signal.lfilter(h_next_r, 1.0, chunk, zi=zi_new_init_r)
        
        # 3. Cross-Fade
        fade_in = np.linspace(0, 1, BLOCK_SIZE)
        fade_out = 1.0 - fade_in
        
        chunk_out_l = (out_old_l * fade_out) + (out_new_l * fade_in)
        chunk_out_r = (out_old_r * fade_out) + (out_new_r * fade_in)
        
        output_l.append(chunk_out_l)
        output_r.append(chunk_out_r)
        
        # E. Update State for Next Loop
        # The "Next" filter now becomes the "Prev" filter.
        # We MUST carry over its final state (zi_next) to prevent clicking at the next boundary.
        h_prev_l = h_next_l
        h_prev_r = h_next_r
        zi_prev_l = zi_next_l
        zi_prev_r = zi_next_r
        
        if i % 10 == 0:
            print(f"Block {i}/{num_blocks} -> {int(target_angle)}°", end='\r')

    # Save
    full_l = np.concatenate(output_l)
    full_r = np.concatenate(output_r)
    stereo_out = np.column_stack((full_l, full_r))
    
    sf.write(OUTPUT_FILENAME, stereo_out, fs)
    print(f"\nDone! Saved to {OUTPUT_FILENAME}")
    print("This version should have ZERO clicks between blocks.")

if __name__ == "__main__":
    main()