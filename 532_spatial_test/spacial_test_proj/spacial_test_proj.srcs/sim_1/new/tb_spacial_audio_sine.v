`timescale 1ns/1ps

module tb_spatial_audio_sine;

    reg clk_100mhz = 0;
    reg reset_btn = 1;
    reg rx_data = 0;
    reg [7:0] target_angle = 0;

    wire tx_mclk;
    wire tx_lrck;
    wire tx_sclk;
    wire tx_data;

    // Helper for Sine Generation
    real PI = 3.14159265;
    real freq = 440.0;      // 440 Hz Tone
    real fs = 44100.0;      // Sample Rate
    real amp = 4000000.0;   // Amplitude (Approx 50% of 24-bit full scale)
    integer sample_idx = 0;
    reg signed [23:0] sine_val;

    spatial_audio_top dut (
        .clk_100mhz(clk_100mhz),
        .reset_btn(reset_btn),
        .tx_mclk(tx_mclk),
        .tx_lrck(tx_lrck),
        .tx_sclk(tx_sclk),
        .tx_data(tx_data),
        .rx_data(rx_data),
        .target_angle(target_angle)
    );

    // 100 MHz clock
    always #5 clk_100mhz = ~clk_100mhz;

    // --------------------------------------------------
    // I2S TRANSMIT TASK (Robust Edge Alignment)
    // --------------------------------------------------
    task send_sample(input [23:0] L, input [23:0] R);
        integer i;
        begin
            // ---- LEFT ----
            // Wait for Start of Left Frame
            @(negedge tx_lrck); 
            @(negedge tx_sclk); // Dummy bit

            for (i = 23; i >= 0; i=i-1) begin
                rx_data <= L[i];
                @(posedge tx_sclk);   
                @(negedge tx_sclk);
            end
            
            rx_data <= 0; // Padding

            // ---- RIGHT ----
            // Wait for Start of Right Frame
            @(posedge tx_lrck); 
            @(negedge tx_sclk);

            for (i = 23; i >= 0; i=i-1) begin
                rx_data <= R[i];
                @(posedge tx_sclk);
                @(negedge tx_sclk);
            end
            rx_data <= 0; // Padding
        end
    endtask

    // --------------------------------------------------
    // MAIN TEST: SINE WAVE GENERATION
    // --------------------------------------------------
    initial begin
        $display("=== Spatial Audio Sine Wave Test ===");
        
        // 1. Reset
        reset_btn = 1;
        #200;
        reset_btn = 0;
        
        // Wait for Clock Lock
        repeat(2000) @(posedge clk_100mhz);

        // 2. Set Angle to "Left"
        // Adjust this index based on your specific HRTF map.
        // Assuming ~5 degree steps, Index 18-20 is roughly 90 degrees Left.
        //target_angle = 8'd20; 
        $display("Generating 440Hz Sine at Angle Index %d...", target_angle);

        // 3. Generate 200 samples (approx 5ms, enough for ~2 sine cycles)
        for (sample_idx = 0; sample_idx < 300; sample_idx = sample_idx + 1) begin
            
            // Calculate Sine Value (Real -> Integer conversion)
            // val = Amp * sin(2 * PI * f * t)
            sine_val = $rtoi(amp * $sin(2.0 * PI * freq * sample_idx / fs));
            
            // Send as MONO source (Same signal to both L and R inputs)
            // The HRTF engine will filter them differently.
            send_sample(sine_val, sine_val);
        end

        $display("DONE");
        #1000;
        $finish;
    end
    
    // -----------------------------------------------------------
    // AUTOMATIC CSV EXPORT BLOCK (Analysis Mode)
    // -----------------------------------------------------------
    integer f;
    initial begin
        f = $fopen("audio_dump_sine.csv", "w");
        // We record the INPUT sine and the OUTPUT Left/Right
        $fwrite(f, "Time_ns, Input_Sine, Left_Out, Right_Out\n");
    end

    always @(posedge dut.i2s.new_sample_pulse) begin
        // Note: 'sine_val' is the input we just sent
        $fwrite(f, "%d, %d, %d, %d\n", 
                $time, 
                $signed(sine_val),   // Verify the input looks like a sine
                $signed(dut.l_out), 
                $signed(dut.r_out)
        );
    end

endmodule