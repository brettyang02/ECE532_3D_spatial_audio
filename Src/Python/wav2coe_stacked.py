import scipy.io.wavfile as wav
import numpy as np
import glob
import os

# --- CONFIGURATION ---
# List your folders in the EXACT order you want them stacked in memory.
# Index 0 will be the first folder, Index 1 the second, etc.
ELEVATION_FOLDERS = [
    "../../KEMAR/elev-30/",
    "../../KEMAR/elev0/",
    "../../KEMAR/elev30/",
    "../../KEMAR/elev60/",
    "../../KEMAR/elev90/"
]

OUT_LEFT = "hrtf_coefficients_left_3D.coe"
OUT_RIGHT = "hrtf_coefficients_right_3D.coe"

def write_coe(filename, data_list):
    """ Writes a list of 128-tap arrays to a COE file """
    print(f"Writing {filename} with {len(data_list)} total filters...")
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
    # 1. Initialize master lists outside the loop to accumulate all elevations
    left_data_list = []
    right_data_list = []

    # 2. Iterate through each elevation folder sequentially
    for folder in ELEVATION_FOLDERS:
        print(f"--- Processing folder: {folder} ---")
        
        # Find all wav files in THIS specific folder
        search_path = os.path.join(folder, "*.wav")
        all_files = sorted(glob.glob(search_path))
        
        # Separate into Left and Right lists
        left_files = [f for f in all_files if os.path.basename(f).startswith('L')]
        right_files = [f for f in all_files if os.path.basename(f).startswith('R')]

        if not left_files or not right_files:
            print(f"Warning: Missing files in {folder}. L: {len(left_files)}, R: {len(right_files)}")

        print(f"  Added {len(left_files)} Left and {len(right_files)} Right files.")

        # Process Left
        for fname in left_files:
            _, data = wav.read(fname)
            if data.dtype != np.int16: data = (data * 32767).astype(np.int16)
            
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

    # 3. Write massive stacked COEs
    print("\n--- Final Generation ---")
    write_coe(OUT_LEFT, left_data_list)
    if right_data_list:
        write_coe(OUT_RIGHT, right_data_list)

    print("Done! Generated 3D stacked COE files.")

if __name__ == "__main__":
    process_files()