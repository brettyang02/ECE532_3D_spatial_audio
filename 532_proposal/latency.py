import numpy as np
import scipy.signal as signal
import soundfile as sf
import os
import time  # <--- Added for timing

# --- CONFIGURATION ---
INPUT_FILENAME = 'test.wav'
OUTPUT_FILENAME = 'kemar_360_rotation_latency_test.wav'
KEMAR_DIR = os.path.join('KEMAR', 'elev0') 

SAMPLE_RATE = 44100
BLOCK_SIZE = 4096 
ROTATION_SPEED = 0.3 

def load_kemar_filters(angle_deg):
    """ Loads KEMAR HRTF with strict checking. """
    target_angle = int(round(angle_deg / 5.0) * 5) % 360
    fname_l = f"L0e{target_angle:03d}a.wav"
    fname_r = f"R0e{target_angle:03d}a.wav"
    path_l = os.path.join(KEMAR_DIR, fname_l)
    path_r = os.path.join(KEMAR_DIR, fname_r)
    
    if not os.path.exists(path_l): raise FileNotFoundError(f"Missing: {path_l}")
    if not os.path.exists(path_r): raise FileNotFoundError(f"Missing: {path_r}")

    h_l, _ = sf.read(path_l)
    h_r, _ = sf.read(path_r)

    limit = 128
    h_l = np.pad(h_l, (0, max(0, limit - len(h_l))))[:limit]
    h_r = np.pad(h_r, (0, max(0, limit - len(h_r))))[:limit]
        
    return h_l, h_r

def main():
    print(f"--- Software Latency Benchmark ---")
    
    # 1. Setup Input
    try:
        audio_in, fs = sf.read(INPUT_FILENAME)
        if len(audio_in.shape) > 1: audio_in = audio_in[:, 0]
    except FileNotFoundError:
        print("Input missing. Using Noise.")
        audio_in = np.random.uniform(-0.5, 0.5, 44100*5) # 5 seconds
        fs = 44100

    num_blocks = len(audio_in) // BLOCK_SIZE
    output_l = []
    output_r = []

    # 2. Init State
    curr_angle = 0
    h_prev_l, h_prev_r = load_kemar_filters(curr_angle)
    zi_prev_l = np.zeros(len(h_prev_l) - 1)
    zi_prev_r = np.zeros(len(h_prev_r) - 1)
    
    # --- METRICS STORAGE ---
    processing_times = []
    block_duration_ms = (BLOCK_SIZE / fs) * 1000.0

    print(f"Block Size: {BLOCK_SIZE} samples")
    print(f"Audio per Block: {block_duration_ms:.2f} ms")
    print(f"Processing {num_blocks} blocks...")

    for i in range(num_blocks):
        # Prepare Data
        start = i * BLOCK_SIZE
        end = start + BLOCK_SIZE
        chunk = audio_in[start:end]
        t = i * BLOCK_SIZE / fs
        target_angle = (t * ROTATION_SPEED * 360) % 360
        
        # --- START TIMER ---
        t_start = time.perf_counter()
        
        # 1. Load Filter (Simulating Memory Access)
        h_next_l, h_next_r = load_kemar_filters(target_angle)
        
        # 2. DSP Math (Convolution + Crossfade)
        out_old_l, _ = signal.lfilter(h_prev_l, 1.0, chunk, zi=zi_prev_l)
        out_old_r, _ = signal.lfilter(h_prev_r, 1.0, chunk, zi=zi_prev_r)
        
        zi_new_init_l = np.zeros(len(h_next_l) - 1)
        zi_new_init_r = np.zeros(len(h_next_r) - 1)
        
        out_new_l, zi_next_l = signal.lfilter(h_next_l, 1.0, chunk, zi=zi_new_init_l)
        out_new_r, zi_next_r = signal.lfilter(h_next_r, 1.0, chunk, zi=zi_new_init_r)
        
        fade_in = np.linspace(0, 1, BLOCK_SIZE)
        fade_out = 1.0 - fade_in
        
        chunk_out_l = (out_old_l * fade_out) + (out_new_l * fade_in)
        chunk_out_r = (out_old_r * fade_out) + (out_new_r * fade_in)
        
        # Update State
        h_prev_l = h_next_l; h_prev_r = h_next_r
        zi_prev_l = zi_next_l; zi_prev_r = zi_next_r
        
        # --- STOP TIMER ---
        t_end = time.perf_counter()
        processing_times.append((t_end - t_start) * 1000.0) # Convert to ms
        
        output_l.append(chunk_out_l)
        output_r.append(chunk_out_r)

    # --- REPORT ---
    avg_proc = np.mean(processing_times)
    max_proc = np.max(processing_times)
    
    print("\n--- PERFORMANCE RESULTS ---")
    print(f"Audio Buffer Delay:   {block_duration_ms:.2f} ms (Fixed by Block Size)")
    print(f"Avg Processing Time:  {avg_proc:.2f} ms")
    print(f"Max Processing Time:  {max_proc:.2f} ms")
    print("-" * 30)
    
    cpu_load = (avg_proc / block_duration_ms) * 100.0
    print(f"CPU Load Estimate:    {cpu_load:.1f}%")
    
    if max_proc < block_duration_ms:
        print("Verdict: REAL-TIME CAPABLE (In Software)")
    else:
        print("Verdict: BUFFER UNDERRUN (Too Slow for Real-Time)")

    # Comparison to FPGA
    print("\n--- HARDWARE COMPARISON ---")
    print(f"Software Input-Output Delay: {block_duration_ms:.2f} ms")
    print(f"FPGA Input-Output Delay:     ~0.02 ms (1 sample)")

if __name__ == "__main__":
    main()