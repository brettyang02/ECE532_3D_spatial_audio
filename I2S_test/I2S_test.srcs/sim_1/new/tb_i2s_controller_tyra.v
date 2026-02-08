`timescale 1ns/1ps

module i2s_controller_tb;

    // --- Signal Declarations ---
    reg clk_audio = 0;
    reg reset = 1;
    wire mclk, sclk, lrck;
    reg sd_rx = 0;
    wire sd_tx;
    wire [23:0] l_rx, r_rx;
    
    // Test data for the controller to transmit
    reg [23:0] l_tx_data = 24'hABCDEF;  // From DSP block
    reg [23:0] r_tx_data = 24'h123456;  // From DSP block

    // --- Clock Generation ---
    // Frequency: 22.5792 MHz
    // Period: 1 / 22.5792 MHz = 44.287 ns
    // Half-period: 22.1435 ns
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
        .l_data_rx (l_rx),
        .r_data_rx (r_rx),
        .l_data_tx (l_tx_data),
        .r_data_tx (r_tx_data)
    );

    // --- Task: Simulate External ADC ---
    task send_sample(input [23:0] L, input [23:0] R);
        integer i;
        begin
            // 1. Wait for Left Channel Start
            @(negedge lrck); 
            // 2. I2S 1-bit delay (dummy slot)
            @(negedge sclk); 
            // 3. Send 24 bits of Left data
            for (i = 23; i >= 0; i=i-1) begin
                sd_rx <= L[i];
                @(negedge sclk);
            end
            
            // 4. Wait for Right Channel Start
            @(posedge lrck); 
            // 5. I2S 1-bit delay (dummy slot)
            @(negedge sclk);
            // 6. Send 24 bits of Right data
            for (i = 23; i >= 0; i=i-1) begin
                sd_rx <= R[i];
                @(negedge sclk);
            end
        end
    endtask

    // --- Simulation Stimulus ---
    initial begin
        $display("Starting I2S Simulation at 44.1kHz (MCLK = 22.5792MHz)");
        
        // Initial Reset
        #100 reset = 0;
        
        // Wait for clock stability and first frame boundary
        @(negedge lrck);
        
        // Test Case 1: Send unique pattern and verify RX/TX
        send_sample(24'hA5A5A5, 24'h5A5A5A);
        
        // Test Case 2: Verify zero padding in the remaining 8 bits of the 32-bit slot
        send_sample(24'hFFFFFF, 24'h000000);

        #10000;
        $display("Simulation Finished.");
        $finish;
    end

endmodule