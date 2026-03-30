# import serial
# import re
# import numpy as np
# import matplotlib.pyplot as plt
# from matplotlib.animation import FuncAnimation

# # --- Configuration ---
# COM_PORT = 'COM15' 
# BAUD_RATE = 9600

# # Set default starting position to Front (0, 0)
# current_azi = 0.0
# current_elev = 0.0

# # --- 1. Setup Serial ---
# print(f"Connecting to {COM_PORT}...")
# try:
#     ser = serial.Serial(COM_PORT, BAUD_RATE, timeout=0.01) 
#     print("Connected! Waiting for data...")
# except serial.SerialException as e:
#     print(f"Failed to open {COM_PORT}. Is another terminal open?")
#     exit()

# # --- 2. Setup 3D Figure ---
# fig = plt.figure(figsize=(9, 9))
# ax = fig.add_subplot(111, projection='3d')
# fig.canvas.manager.set_window_title('Live Spatial Audio Radar')

# # Draw a static wireframe sphere for reference
# u, v = np.mgrid[0:2*np.pi:30j, -np.pi/2:np.pi/2:15j]
# x_sph = np.cos(u)*np.cos(v)
# y_sph = np.sin(u)*np.cos(v)
# z_sph = np.sin(v)
# ax.plot_wireframe(x_sph, y_sph, z_sph, color="gray", alpha=0.15)

# # --- The Sleek Forward Indicator ---
# # 1. A vector arrow shooting from center (0,0,0) towards the front (1.2, 0, 0)
# ax.quiver(0, 0, 0, 1.2, 0, 0, color='lime', arrow_length_ratio=0.1, linewidth=1.5, alpha=0.7)
# # 2. A sharp Diamond ('D') exactly on the sphere's surface (X=1, Y=0, Z=0)
# ax.scatter([1], [0], [0], color='lime', marker='D', s=120, edgecolor='white', linewidth=1, label='FORWARD (0°, 0°)')
# # 3. Clean floating text
# ax.text(1.3, 0, 0, 'FWD', color='lime', fontweight='bold', fontsize=10)

# # --- The Listener (Center Point) ---
# # Draw the Listener (Center point)
# ax.scatter([0], [0], [0], color='black', s=100, label='Listener')

# # --- The Sound Source (Dynamic Point) ---
# # Initialize the Sound Source objects
# source_point, = ax.plot([1], [0], [0], marker='o', color='red', markersize=12, label='Sound Source')
# source_line, = ax.plot([0, 1], [0, 0], [0, 0], color='red', linestyle='dashed')

# # Formatting the visual grid boundaries
# ax.set_xlim([-1.2, 1.2])
# ax.set_ylim([-1.2, 1.2])
# ax.set_zlim([-1.2, 1.2])

# ax.set_box_aspect([1, 1, 1]) # Forces the bounding box to be a perfect cube

# ax.set_xlabel('X (Front/Back)')
# ax.set_ylabel('Y (Left/Right)')
# ax.set_zlabel('Z (Elevation)')

# ax.legend(loc="upper left")

# # --- NEW: Set default camera viewing angle ---
# # Elev=20 tilts it down slightly, Azim=30 rotates it so the Front star is clearly on the right
# ax.view_init(elev=20, azim=30)

# # --- 3. The Animation Loop ---
# def update_radar(frame):
#     global current_azi, current_elev
    
#     if ser.in_waiting > 0:
#         try:
#             # Grab everything waiting in the USB buffer at once
#             raw_data = ser.read(ser.in_waiting).decode('utf-8', errors='ignore')
            
#             # Split the chunk into separate lines (handling the \r from C code)
#             lines = raw_data.replace('\r', '\n').split('\n')
            
#             # Read backwards to find the newest complete line of data
#             for line in reversed(lines):
#                 if "Azimuth angle" in line and "Elevation angle" in line:
#                     match = re.search(r'Azimuth angle\s+(-?\d+).*?Elevation angle\s+(-?\d+)', line)
#                     if match:
#                         current_azi = float(match.group(1))
#                         current_elev = float(match.group(2))
#                         print(f"Graphing -> Azi: {current_azi}°, Elev: {current_elev}°")
#                         break 
#         except Exception as e:
#             pass

#     # The Math
#     azi_rad = np.radians(current_azi)
#     elev_rad = np.radians(current_elev)
    
#     x = np.cos(elev_rad) * np.cos(azi_rad)
#     y = np.cos(elev_rad) * np.sin(azi_rad)
#     z = np.sin(elev_rad)

#     # Update Graphics
#     source_point.set_data_3d([x], [y], [z])
#     source_line.set_data_3d([0, x], [0, y], [0, z])
#     ax.set_title(f"Live Audio Target\nAzimuth: {int(current_azi)}° | Elevation: {int(current_elev)}°", fontsize=14, fontweight='bold')
    
#     fig.canvas.draw_idle()
    
#     return source_point, source_line

# # --- Start Engine ---
# ani = FuncAnimation(fig, update_radar, interval=50, blit=False, cache_frame_data=False)

# try:
#     plt.show() 
# except KeyboardInterrupt:
#     print("Exiting...")
# finally:
#     ser.close()
#     print("Serial port closed safely.")

import serial
import re
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

# --- Configuration ---
COM_PORT = 'COM15' 
BAUD_RATE = 9600

# Set default starting position to Front (0, 0)
current_azi = 0.0
current_elev = 0.0

# --- NEW: The persistent buffer to prevent dropped frames ---
serial_buffer = ""

# --- 1. Setup Serial ---
print(f"Connecting to {COM_PORT}...")
try:
    ser = serial.Serial(COM_PORT, BAUD_RATE, timeout=0.01) 
    print("Connected! Waiting for data...")
except serial.SerialException as e:
    print(f"Failed to open {COM_PORT}. Is another terminal open?")
    exit()

# --- 2. Setup 3D Figure ---
fig = plt.figure(figsize=(9, 9))
ax = fig.add_subplot(111, projection='3d')
fig.canvas.manager.set_window_title('Live Spatial Audio Radar')

# Draw a static wireframe sphere for reference
u, v = np.mgrid[0:2*np.pi:30j, -np.pi/2:np.pi/2:15j]
x_sph = np.cos(u)*np.cos(v)
y_sph = np.sin(u)*np.cos(v)
z_sph = np.sin(v)
ax.plot_wireframe(x_sph, y_sph, z_sph, color="gray", alpha=0.15)

# --- The Sleek Forward Indicator ---
# 1. A vector arrow shooting from center (0,0,0) towards the front (1.2, 0, 0)
ax.quiver(0, 0, 0, 1.2, 0, 0, color='lime', arrow_length_ratio=0.1, linewidth=1.5, alpha=0.7)
# 2. A sharp Diamond ('D') exactly on the sphere's surface (X=1, Y=0, Z=0)
ax.scatter([1], [0], [0], color='lime', marker='D', s=120, edgecolor='white', linewidth=1, label='FORWARD (0°, 0°)')
# 3. Clean floating text
ax.text(1.3, 0, 0, 'FWD', color='lime', fontweight='bold', fontsize=10)

# --- The Listener (Center Point) ---
# Draw the Listener (Center point)
ax.scatter([0], [0], [0], color='black', s=100, label='Listener')

# --- The Sound Source (Dynamic Point) ---
# Initialize the Sound Source objects
source_point, = ax.plot([1], [0], [0], marker='o', color='red', markersize=12, label='Sound Source')
source_line, = ax.plot([0, 1], [0, 0], [0, 0], color='red', linestyle='dashed')

# Formatting the visual grid boundaries
ax.set_xlim([-1.2, 1.2])
ax.set_ylim([-1.2, 1.2])
ax.set_zlim([-1.2, 1.2])

ax.set_box_aspect([1, 1, 1]) # Forces the bounding box to be a perfect cube

ax.set_xlabel('X (Front/Back)')
ax.set_ylabel('Y (Left/Right)')
ax.set_zlabel('Z (Elevation)')

ax.legend(loc="upper left")

# --- NEW: Set default camera viewing angle ---
# Elev=20 tilts it down slightly, Azim=30 rotates it so the Front star is clearly on the right
ax.view_init(elev = 40, azim = 220)

# --- 3. The Animation Loop ---
def update_radar(frame):
    global current_azi, current_elev, serial_buffer
    
    if ser.in_waiting > 0:
        try:
            # 1. Grab new data and add it to our persistent buffer
            new_data = ser.read(ser.in_waiting).decode('utf-8', errors='ignore')
            serial_buffer += new_data
            
            # 2. Only process if we have at least one complete line
            if '\n' in serial_buffer:
                # Split the chunk into separate lines
                lines = serial_buffer.replace('\r', '\n').split('\n')
                
                # The last element is the "chopped" remainder. Save it for the next frame!
                serial_buffer = lines[-1]
                
                # 3. Read backwards through only the COMPLETE lines
                for line in reversed(lines[:-1]):
                    if "Azimuth angle" in line and "Elevation angle" in line:
                        match = re.search(r'Azimuth angle\s+(-?\d+).*?Elevation angle\s+(-?\d+)', line)
                        if match:
                            current_azi = float(match.group(1))
                            current_elev = float(match.group(2))
                            # Optional: print to terminal to verify speed
                            # print(f"Graphing -> Azi: {current_azi}°, Elev: {current_elev}°")
                            break 
        except Exception as e:
            pass

    # The Math
    azi_rad = np.radians(-current_azi)
    elev_rad = np.radians(current_elev)
    
    x = np.cos(elev_rad) * np.cos(azi_rad)
    y = np.cos(elev_rad) * np.sin(azi_rad)
    z = np.sin(elev_rad)

    # Update Graphics
    source_point.set_data_3d([x], [y], [z])
    source_line.set_data_3d([0, x], [0, y], [0, z])
    ax.set_title(f"Live Audio Target\nAzimuth: {int(current_azi)}° | Elevation: {int(current_elev)}°", fontsize=14, fontweight='bold')
    
    fig.canvas.draw_idle()
    
    return source_point, source_line

# --- Start Engine ---
# Decreased interval from 50ms to 20ms for faster polling/smoother framerate!
ani = FuncAnimation(fig, update_radar, interval=20, blit=False, cache_frame_data=False)

try:
    plt.show() 
except KeyboardInterrupt:
    print("Exiting...")
finally:
    ser.close()
    print("Serial port closed safely.")