# Real-Time 3D Spatial Audio Engine

## Project Overview
This project is a **hardware-accelerated 3D spatial audio system** designed for the **Nexys 4 DDR FPGA**. It simulates a three-dimensional sound environment by applying **Head-Related Transfer Functions (HRTF)** from the KEMAR dataset (https://sound.media.mit.edu/resources/KEMAR.html) to real-time audio. The system allows a user to dynamically position a sound source anywhere in a $360^{\circ}$ azimuth and $-30^{\circ}$ to $90^{\circ}$ elevation range.

### Key Features
* **Custom DSP Engine**: Implements a "Folded FIR Filter" architecture (128 taps) to maintain a small hardware footprint while processing high-fidelity 24-bit audio at 44.1 kHz.
* **Artifact-Free Switching**: Utilizes a linear cross-fade algorithm over 1024 samples to eliminate audio "popping" when changing spatial coefficients.
* **Multi-Peripheral Control**: Supports real-time coordinate input via dual SPI Joysticks or a Gyroscope PMOD.
* **Real-time Visualization**: Bridges FPGA data to a Python-based GUI via UART to visualize the current sound source position.

---

## Repository Structure
Following the ECE532 design tree guidelines, all generated bitstreams and temporary run files have been cleaned to ensure a lightweight and maintainable repository.


* **`/KEMAR`**: Raw HRTF dataset coefficients.
* **`/PMOD_lib`**: IP cores for the PMOD peripherals provided by digilent.com. In this project PmodJSTK2_v1_0 and PmodGYRO_v1_0 are used.
* **`/Src`**: Main design source code. They are linked to the Vivado project, so any changes here will be reflected in the block design.
    * **`/RTL`**: Custom Verilog modules including the I2S Controller, DSP Engine, and BRAM Address Generator.
    * **`/Python`**: Coefficient generation scripts (from `.wav` to `.coe`), and generated `.coe` files.
    * **`/Sim`**: RTL simulation testbenches.
    * **`/Constraint`**: `.xdc` files for Nexys 4 DDR pin mapping.
    * **`/Runtime`**: Archive for `.cpp` files in Xilinx SDK, and the Python visualization script.
* **`/Vivado_WorkDir`**: The Vivado project structure (reconstructable via block design files).
    * **`spatial_audio.xpr`**: Vivado project file (2018.3). Double-click this file should open the project in Vivado, with block design and RTL files automatically linked.
    * **`/spatial_audio.srcs`**: contains the block design and generated IPs.
    * **`/spatial_audio.sdk`**: Xilinx SDK workspace for software development.
    * **`*.coe`**: copy of generated coefficient files for Vivado use.
* **`/Reference_Model`**: Python script that utilizes the KEMAR dataset to generate spatial audio on a .wav file for testing and validation.

---

## Hardware Requirements
* **FPGA Board**: Nexys 4 DDR.
* **PMOD A**: I2S Audio I/O PMOD.
* **PMOD B & C**: Dual Joysticks PMODs.
* **PMOD D**: Gyroscope PMOD.
* **Audio**: Stereo headphones at I2S Output, and an analog 3.5mm audio source (e.g., Laptop/Phone) at I2S Input.

---

## Team - Group 06
* **Elizabeth Tyra Sumual**
* **Jiaxin (Brett) Yang**
* **Andy Li**
* **Kevin Jiao**

---
*Developed for ECE532: Digital Systems Design at the University of Toronto, Spring 2026.*