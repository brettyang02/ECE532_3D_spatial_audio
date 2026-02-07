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
    real amp = 4000000.0;   // Amplitude (~50% Full Scale)
    
    // Global sample counter (Must be continuous for smooth sine!)
    integer global_sample_idx = 0; 
    reg signed [23:0] sine_val;

    // --- INSTANTIATE DUT ---
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
    // I2S TRANSMIT TASK
    // --------------------------------------------------
    task send_sample(input [23:0] L, input [23:0] R);
        integer i;
        begin
            // ---- LEFT CHANNEL ----
            @(negedge tx_lrck); 
            @(negedge tx_sclk); // Skip dummy bit
            for (i = 23; i >= 0; i=i-1) begin
                rx_data <= L[i];
                @(posedge tx_sclk);   
                @(negedge tx_sclk);
            end
            rx_data <= 0; // Padding

            // ---- RIGHT CHANNEL ----
            @(posedge tx_lrck); 
            @(negedge tx_sclk); // Skip dummy bit
            for (i = 23; i >= 0; i=i-1) begin
                rx_data <= R[i];
                @(posedge tx_sclk);
                @(negedge tx_sclk);
            end
            rx_data <= 0; // Padding
        end
    endtask

    // --------------------------------------------------
    // HELPER: PLAY TONE FOR X SAMPLES
    // --------------------------------------------------
    task play_tone_duration(input integer duration_samples);
        integer k;
        begin
            for (k = 0; k < duration_samples; k = k + 1) begin
                // Calculate Sine based on GLOBAL index (Continuous Phase)
                sine_val = $rtoi(amp * $sin(2.0 * PI * freq * global_sample_idx / fs));
                
                // Send Mono Source (Same to L and R)
                send_sample(sine_val, sine_val);
                
                // Increment Global Time
                global_sample_idx = global_sample_idx + 1;
            end
        end
    endtask

    // --------------------------------------------------
    // MAIN TEST SEQUENCE
    // --------------------------------------------------
    initial begin
        $display("=== Spatial Audio Direction Test ===");
        
        // 1. Initialize
        reset_btn = 1;
        #200;
        reset_btn = 0;
        
        // Wait for Clock Lock (DCM/PLL lock time)
        repeat(2000) @(posedge clk_100mhz);
        
        // -------------------------------------------------------
        // PHASE 1: FRONT (0 Degrees) - 5ms
        // -------------------------------------------------------
        target_angle = 8'd0; 
        $display("[Time 0ms] Direction: FRONT (0 deg)");
        play_tone_duration(250); // ~5.6ms

        // -------------------------------------------------------
        // PHASE 2: LEFT (90 Degrees) - 5ms
        // -------------------------------------------------------
        // Index 18 * 5 deg = 90 deg
        target_angle = 8'd18; 
        $display("[Time 5ms] Direction: LEFT (90 deg)");
        play_tone_duration(250);

        // -------------------------------------------------------
        // PHASE 3: RIGHT (270 Degrees) - 5ms
        // -------------------------------------------------------
        // Index 54 * 5 deg = 270 deg (or -90 deg)
        target_angle = 8'd54; 
        $display("[Time 10ms] Direction: RIGHT (270 deg)");
        play_tone_duration(250);

        $display("=== Test Complete. Check 'audio_dump_sine.csv' ===");
        #1000;
        $finish;
    end
    
    // -----------------------------------------------------------
    // CSV EXPORT (For Python Plotting)
    // -----------------------------------------------------------
    integer f;
    initial begin
        f = $fopen("audio_dump_sine.csv", "w");
        // Header
        $fwrite(f, "Time_ns, Input_Sine, Left_Out, Right_Out, Angle_Index\n");
    end

    // Trigger write exactly when the DUT outputs a new sample
    // Note: Assuming 'dut.i2s.new_sample_pulse' exists. 
    // If not, trigger on 'posedge tx_lrck'.
    always @(posedge dut.i2s.new_sample_pulse) begin
        $fwrite(f, "%d, %d, %d, %d, %d\n", 
                $time, 
                $signed(sine_val),    // The perfect input sine
                $signed(dut.l_out),   // The filtered Left Output
                $signed(dut.r_out),   // The filtered Right Output
                target_angle          // Log the angle to see the switch point
        );
    end

endmodule