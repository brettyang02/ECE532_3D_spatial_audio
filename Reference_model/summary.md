Here is the updated, comprehensive summary. I have added a new section explicitly comparing Software vs. Hardware latency based on your benchmarks, which is the strongest justification for your project.

---

### **Project Title: Real-Time 360° Spatial Audio Engine (FPGA)**

**Objective:** To design a hardware-accelerated audio system that simulates 3D sound rotation around a user in real-time using Head-Related Transfer Functions (HRTF). The system processes a mono audio stream and joystick input to place sound in a virtual 360° space with zero perceptible latency.

---

### **1. The "Why FPGA?" Justification (Performance Analysis)**

We performed a software benchmark (Python) to simulate the DSP workload. The results demonstrate why a standard CPU is unsuitable for immersive real-time audio and necessitates an FPGA.

| Metric | Software (CPU) | Hardware (FPGA) | Significance |
| --- | --- | --- | --- |
| **Processing Paradigm** | **Batch Processing** (Buckets) | **Stream Processing** (Pipeline) | CPU requires large buffers to overcome OS overhead; FPGA processes sample-by-sample. |
| **Buffer Delay** | **85.33 ms** (at 4096 block size) | **~0.02 ms** (1 sample) | Software introduces unacceptable "slap-back" delay for VR/Gaming. |
| **Compute Time** | 1.20 ms (Burst) | 0.001 ms (Constant) | FPGA performs 256 parallel MAC operations instantly. |
| **Total Latency** | **~86.5 ms** | **~0.02 ms** | **The FPGA is ~4000x faster in end-to-end latency.** |

**Conclusion:** While a CPU is *computationally* fast enough (1.2ms processing time), the architecture forces a high buffer latency (85ms). The FPGA's ability to run a "pipelined conveyor belt" eliminates this buffer, making it the only viable solution for lag-free spatial audio.

---

### **2. System Architecture (HW/SW Co-Design)**

The design follows a standard System-on-Chip (SoC) architecture, partitioning complexity between high-level control and low-level acceleration.

* **The "Brain" (MicroBlaze Soft Processor):**
* **Role:** Control Plane.
* **Tasks:** Reads Pmod Joystick via SPI, computes angles (0–360°) using C math (`atan2`), and updates the "Target Angle ID" register.
* **Feature:** Implements **"Ping-Pong" Logic** (Zero-Crossing Detection) to trigger filter swaps only during silence, preventing "clicking" artifacts.


* **The "Muscle" (Custom Verilog IP):**
* **Role:** Data Plane (DSP Accelerator).
* **Tasks:** Performs 256-tap real-time convolution (FIR Filtering) on the I2S audio stream.


* **Memory (BRAM):**
* **Role:** Stores the KEMAR HRTF dataset.
* **Advantage:** Stored entirely on-chip to guarantee deterministic, zero-latency access (avoiding complex external DDR memory).



---

### **3. Hardware Resource Estimation (Nexys 4 DDR)**

We will use the **Horizontal-Only** KEMAR dataset (72 angles), which is highly efficient.

| Resource | Available (Nexys 4) | Estimated Usage | Status | Notes |
| --- | --- | --- | --- | --- |
| **Block RAM** | 607 KB | **~36 KB (6%)** | **Safe** | Fits entirely internally. No DDR complexity required. |
| **DSP Slices** | 240 | **2 - 4 (< 2%)** | **Safe** | Using time-multiplexing (100MHz clock vs 44.1kHz audio). |
| **Bandwidth** | ~3,000 Mbps | **~400 Mbps** | **Safe** | Internal BRAM bandwidth is sufficient for 256-tap reads. |
| **Clocking** | 100 MHz | **11.29 MHz** | **Feasible** | MCLK generated via Clock Wizard for 44.1 kHz standard. |

---

### **4. Complexity Score Analysis (Target: > 4.0)**

* **Custom IP Core (Spatial Audio Engine):** **1.50 pts**
* *Why:* Streaming FIR filter with real-time coefficient reloading and zero-crossing logic is significantly more complex than standard matrix operations.


* **Pmod Joystick (SPI):** **0.75 pts**
* *Why:* First SPI peripheral bonus.


* **Pmod I2S2 (Audio):** **0.50 pts**
* *Why:* First I2S peripheral bonus; requires precise MCLK generation and SerDes logic.


* **Hardware Performance Monitoring:** **0.50 pts**
* *Why:* Verilog cycle counters to measure DSP load.


* **MicroBlaze Algorithms:** **0.25 pts**
* *Why:* Coordinate transformation (`atan2`) and control loop logic.


* **Data Visualization:** **0.25 pts**
* *Why:* Real-time angle reporting via UART.



**Total Estimated Score: ~3.75 / 4.0**

* **Plan to Exceed 4.0:** If Pmod I2S2 is unavailable, we will implement **SD Card Audio Source (+0.75 pts)** as the input mechanism.

---

### **5. Technical Implementation Plan**

1. **I2S Protocol:** We will process raw **PCM Data** (Signed Integers), not WAV files. The FPGA generates the Master Clock (MCLK) locked to **44.1 kHz**. All test audio must be pre-converted to this rate.
2. **No "Clipping/Clicking":** We replace the Python "Cross-Fading" strategy with a hardware-efficient **Zero-Crossing State Machine** that swaps filters only when signal amplitude is near zero.
3. **Data Strategy:** We will use a Python script to convert the KEMAR WAV files into a **`.coe` file**, baking the coefficients directly into the FPGA bitstream. This eliminates SD card driver complexity for system boot.

**Immediate Action Items:**

* Secure **Pmod I2S2** immediately (Inventory Low).
* **Backup Plan:** If Pmod is unavailable, switch to **SD Card Input (+0.75)** and **On-board Audio Output (+0.50)**.