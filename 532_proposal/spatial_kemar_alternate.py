import numpy as np
import scipy.signal as signal
import soundfile as sf
import os

# --- CONFIGURATION ---
INPUT_FILENAME = 'test.wav'
OUTPUT_FILENAME = 'kemar_toggle_noclip.wav'
KEMAR_DIR = os.path.join('KEMAR', 'elev0') 
BLOCK_SIZE = 4096 
TOGGLE_INTERVAL = 2.0  # Seconds per position

def load_hrtf(angle_deg):
    """ Loads and prepares the FIR coefficients (128 taps). """
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
    print("--- Generating Pitch-Perfect Toggle Test ---")
    
    # 1. Load Audio & Capture Sample Rate (The Fix)
    try:
        audio_in, fs = sf.read(INPUT_FILENAME)
        if len(audio_in.shape) > 1: audio_in = audio_in[:, 0]
        print(f"Input detected as {fs} Hz") # Debug print
    except FileNotFoundError:
        print("Input missing. Generating Noise.")
        fs = 44100
        audio_in = np.random.uniform(-0.5, 0.5, fs*10)

    # 2. PRE-LOAD Both Filters
    # We will run these two distinct "machines" continuously.
    h_front_l, h_front_r = load_hrtf(45)   # Front Right
    h_back_l, h_back_r = load_hrtf(135)    # Back Right

    # 3. Initialize States (zi) for all 4 channels
    # Front Left/Right and Back Left/Right
    zi_front_l = np.zeros(len(h_front_l) - 1)
    zi_front_r = np.zeros(len(h_front_r) - 1)
    zi_back_l  = np.zeros(len(h_back_l) - 1)
    zi_back_r  = np.zeros(len(h_back_r) - 1)

    output_l = []
    output_r = []
    num_blocks = len(audio_in) // BLOCK_SIZE
    
    print("Processing...")
    
    for i in range(num_blocks):
        # A. Get Chunk
        start = i * BLOCK_SIZE
        end = start + BLOCK_SIZE
        chunk = audio_in[start:end]
        
        # B. Run PARALLEL FILTERS
        # Both filters process the audio every single time.
        # This prevents the "memory amnesia" that causes clicks.
        
        # Stream 1: Front
        out_f_l, zi_front_l = signal.lfilter(h_front_l, 1.0, chunk, zi=zi_front_l)
        out_f_r, zi_front_r = signal.lfilter(h_front_r, 1.0, chunk, zi=zi_front_r)
        
        # Stream 2: Back
        out_b_l, zi_back_l = signal.lfilter(h_back_l, 1.0, chunk, zi=zi_back_l)
        out_b_r, zi_back_r = signal.lfilter(h_back_r, 1.0, chunk, zi=zi_back_r)
        
        # C. Calculate Mix Weight
        # We want a smooth crossfade between Stream 1 and Stream 2
        t = i * BLOCK_SIZE / float(fs)
        period = TOGGLE_INTERVAL * 2
        phase = t % period
        
        # Target: 1.0 = Front, 0.0 = Back
        if phase < TOGGLE_INTERVAL:
            target_mix = 1.0 
        else:
            target_mix = 0.0 
            
        # Create a weight vector for the block to allow smooth transitions
        # (Simple block-level switching for clarity, but you can ramp if needed)
        mix = np.full(BLOCK_SIZE, target_mix)
        
        # Optional: If you want to hear the switch happen "inside" the block
        # You would generate a ramp here. For now, instant switch at block boundary
        # is usually fine if filters are continuous (no click, just sudden change).
        
        # D. Blend
        final_l = (out_f_l * mix) + (out_b_l * (1.0 - mix))
        final_r = (out_f_r * mix) + (out_b_r * (1.0 - mix))
        
        output_l.append(final_l)
        output_r.append(final_r)

    # Save
    full_l = np.concatenate(output_l)
    full_r = np.concatenate(output_r)
    stereo_out = np.column_stack((full_l, full_r))
    
    # --- CRITICAL FIX: Use 'fs' variable, not hardcoded 44100 ---
    sf.write(OUTPUT_FILENAME, stereo_out, fs) 
    print(f"Done! Saved to {OUTPUT_FILENAME} at {fs} Hz")

if __name__ == "__main__":
    main()