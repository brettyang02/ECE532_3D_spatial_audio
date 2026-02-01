import glob
import scipy.io.wavfile as wav
import os

# Scan all wav files
files = glob.glob("KEMAR/elev0/*.wav")
if not files:
    print("No files found! Check your path.")
    exit()

print(f"Checking {len(files)} files...")
lengths = []

for f in files:
    _, data = wav.read(f)
    lengths.append(len(data))

# Analysis
min_len = min(lengths)
max_len = max(lengths)
avg_len = sum(lengths) / len(lengths)

print(f"\n--- REPORT ---")
print(f"Minimum Length: {min_len} taps")
print(f"Maximum Length: {max_len} taps")
print(f"Most Common:    {max(set(lengths), key=lengths.count)} taps")

if max_len == 128 and min_len == 128:
    print("\n✅ VERDICT: Perfect! All files are exactly 128 taps.")
elif max_len > 128:
    print(f"\n⚠️ WARNING: Some files are longer ({max_len}). You MUST truncate them.")
else:
    print(f"\n⚠️ WARNING: Files are weird sizes.")