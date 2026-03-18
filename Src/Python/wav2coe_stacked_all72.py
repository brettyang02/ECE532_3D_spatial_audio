import scipy.io.wavfile as wav
import numpy as np
import glob
import os

# --- CONFIGURATION ---
ELEVATION_FOLDERS = [
    "../../KEMAR/elev-30/",
    "../../KEMAR/elev-20/",
    "../../KEMAR/elev-10/",
    "../../KEMAR/elev0/",
    "../../KEMAR/elev10/",
    "../../KEMAR/elev20/",
    "../../KEMAR/elev30/",
    "../../KEMAR/elev40/",
    "../../KEMAR/elev50/",
    "../../KEMAR/elev60/",
    "../../KEMAR/elev70/",
    "../../KEMAR/elev80/",
    "../../KEMAR/elev90/"
]

OUT_LEFT = "hrtf_coefficients_left_3D.coe"
OUT_RIGHT = "hrtf_coefficients_right_3D.coe"

def write_coe(filename, data_list):
    print(f"Writing {filename} with {len(data_list)} total filters...")
    with open(filename, "w") as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        
        total = len(data_list)
        for i, data in enumerate(data_list):
            for j, sample in enumerate(data):
                hex_val = f"{(sample & 0xFFFF):04x}"
                if i == total - 1 and j == len(data) - 1:
                    f.write(f"{hex_val};")
                else:
                    f.write(f"{hex_val},\n")

def get_padded_arrays(file_list):
    """ 
    Takes a list of N files and nearest-neighbor interpolates them 
    up to exactly 72 files. 
    """
    num_available = len(file_list)
    padded_data = []
    
    # We want exactly 72 angles (every 5 degrees)
    for target_idx in range(72):
        target_angle = target_idx * 5
        
        # The available files are spaced evenly around 360 degrees
        # E.g., if 36 files, they are spaced by 10 degrees.
        available_spacing = 360.0 / num_available
        
        # Find the index of the closest available file
        # Round target_angle / available_spacing to nearest integer
        closest_idx = int(round(target_angle / available_spacing)) % num_available
        
        # Read and format the closest file
        fname = file_list[closest_idx]
        _, data = wav.read(fname)
        if data.dtype != np.int16: 
            data = (data * 32767).astype(np.int16)
        
        if len(data) > 128: 
            data = data[:128]
        elif len(data) < 128: 
            data = np.pad(data, (0, 128-len(data)), 'constant')
            
        padded_data.append(data)
        
    return padded_data

def process_files():
    left_master_list = []
    right_master_list = []

    for folder in ELEVATION_FOLDERS:
        print(f"--- Processing folder: {folder} ---")
        all_files = sorted(glob.glob(os.path.join(folder, "*.wav")))
        
        left_files = [f for f in all_files if os.path.basename(f).startswith('L')]
        right_files = [f for f in all_files if os.path.basename(f).startswith('R')]

        print(f"  Found {len(left_files)} Left and {len(right_files)} Right files.")
        
        # Pad them both out to exactly 72 arrays
        left_padded = get_padded_arrays(left_files)
        right_padded = get_padded_arrays(right_files)
        
        left_master_list.extend(left_padded)
        right_master_list.extend(right_padded)
        
        print(f"  -> Padded to {len(left_padded)} Left and {len(right_padded)} Right arrays.")

    print("\n--- Final Generation ---")
    write_coe(OUT_LEFT, left_master_list)
    write_coe(OUT_RIGHT, right_master_list)
    print("Done! Generated rectangular 3D stacked COE files.")

if __name__ == "__main__":
    process_files()