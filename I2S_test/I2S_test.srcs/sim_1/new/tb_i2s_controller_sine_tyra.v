`timescale 1ns/1ps

module i2s_controller_sine_tb;

    // --- Signals ---
    reg clk_audio = 0;
    reg reset = 1;
    wire mclk, sclk, lrck;
    reg sd_rx = 0;
    wire sd_tx;
    wire [23:0] l_data_rx, r_data_rx;

    // Sine Generation Variables
    real PI = 3.14159265;
    real freq = 440.0;      // 440 Hz Tone
    real fs = 44100.0;      // Sample Rate
    real amp = 4000000.0;   // ~50% of 24-bit Full Scale
    integer sample_idx = 0;
    reg signed [23:0] current_sine;

    // --- Clock Generation (22.5792 MHz) ---
    always #22.1435 clk_audio = ~clk_audio;

    // --- DUT Instance ---
    i2s_controller dut (
        .clk_audio (clk_audio),
        .reset     (reset),
        .mclk      (mclk),
        .sclk      (sclk),
        .lrck      (lrck),
        .sd_rx     (sd_rx),
        .sd_tx     (sd_tx),
        .l_data_rx (l_data_rx),
        .r_data_rx (r_data_rx),
        .l_data_tx (current_sine), // Loopback sine back out
        .r_data_tx (current_sine)
    );

    // --- Task: Drive Serial Input with Sine Data ---
    task send_sample(input [23:0] L, input [23:0] R);
        integer i;
        begin
            @(negedge lrck); 
            @(negedge sclk); // I2S 1-bit delay slot
            for (i = 23; i >= 0; i=i-1) begin
                sd_rx <= L[i];
                @(negedge sclk);
            end
            
            @(posedge lrck); 
            @(negedge sclk); // I2S 1-bit delay slot
            for (i = 23; i >= 0; i=i-1) begin
                sd_rx <= R[i];
                @(negedge sclk);
            end
        end
    endtask

    // --- Main Simulation Loop ---
    initial begin
        reset = 1;
        #200 reset = 0;
        @(negedge lrck);

        $display("Sending 10ms of 440Hz Sine Wave...");
        
        // Loop for ~441 samples (10ms at 44.1kHz)
        repeat (441) begin
            current_sine = $rtoi(amp * $sin(2.0 * PI * freq * sample_idx / fs));
            send_sample(current_sine, current_sine);
            sample_idx = sample_idx + 1;
        end

        $display("Simulation complete. Check 'i2s_sine_results.csv'");
        $finish;
    end

    // --- CSV Export for Verification ---
    integer f;
    initial f = $fopen("i2s_sine_results.csv", "w");
    
    // Log data every time a full 24-bit word is latched in the controller
    // Based on your code, this happens at bit_cnt 25 (Left) and 57 (Right)
    always @(posedge clk_audio) begin
        if (dut.sclk_rise && dut.bit_cnt == 6'd25) begin
            $fwrite(f, "%d, %d, %d\n", $time, $signed(current_sine), $signed(l_data_rx));
        end
    end

endmodule