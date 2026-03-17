import scipy.io.wavfile as wav
import numpy as np
import glob
import os

# --- CONFIGURATION ---
TARGET_FOLDER = "KEMAR/elev0/"
OUT_LEFT = "hrtf_coefficients_left.coe"
OUT_RIGHT = "hrtf_coefficients_right.coe"

def write_coe(filename, data_list):
    """ Writes a list of 128-tap arrays to a COE file """
    print(f"Writing {filename} with {len(data_list)} filters...")
    with open(filename, "w") as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        
        total_filters = len(data_list)
        for i, data in enumerate(data_list):
            for j, sample in enumerate(data):
                # Convert to 4-digit Hex (Two's Complement)
                hex_val = f"{(sample & 0xFFFF):04x}"
                
                # Semicolon at the very end of the file, comma otherwise
                if i == total_filters - 1 and j == len(data) - 1:
                    f.write(f"{hex_val};")
                else:
                    f.write(f"{hex_val},\n")

def process_files():
    # 1. Find all wav files
    all_files = sorted(glob.glob(os.path.join(TARGET_FOLDER, "*.wav")))
    
    # 2. Separate into Left and Right lists
    # KEMAR Naming: "L0e000a.wav" vs "R0e000a.wav"
    left_files = [f for f in all_files if os.path.basename(f).startswith('L')]
    right_files = [f for f in all_files if os.path.basename(f).startswith('R')]

    # 3. Validation
    if len(left_files) == 0:
        print("Error: No 'L' files found.")
        return
    if len(right_files) == 0:
        print("Warning: No 'R' files found! (Are they in a different folder?)")
    if len(left_files) != len(right_files):
        print(f"Warning: Mismatch! Left: {len(left_files)} files, Right: {len(right_files)} files.")
        # We proceed, but the user should check if an angle is missing.

    print(f"Found {len(left_files)} Left files and {len(right_files)} Right files.")

    # 4. Process Loop
    left_data_list = []
    right_data_list = []

    # Process Left
    for fname in left_files:
        _, data = wav.read(fname)
        if data.dtype != np.int16: data = (data * 32767).astype(np.int16)
        
        # Pad/Truncate to 128
        if len(data) > 128: data = data[:128]
        elif len(data) < 128: data = np.pad(data, (0, 128-len(data)), 'constant')
        
        left_data_list.append(data)

    # Process Right
    for fname in right_files:
        _, data = wav.read(fname)
        if data.dtype != np.int16: data = (data * 32767).astype(np.int16)
        
        if len(data) > 128: data = data[:128]
        elif len(data) < 128: data = np.pad(data, (0, 128-len(data)), 'constant')
        
        right_data_list.append(data)

    # 5. Write COEs
    write_coe(OUT_LEFT, left_data_list)
    if right_files:
        write_coe(OUT_RIGHT, right_data_list)

    print("Done! Generated COE files.")

if __name__ == "__main__":
    process_files()