`timescale 1ns/1ps

module tb_i2s_controller;

    // ============================================================
    // Clock parameters
    // ============================================================
    parameter real CLK_AUDIO_FREQ = 22_579_200.0;
    parameter real CLK_AUDIO_PER  = 1e9 / CLK_AUDIO_FREQ;

    // ============================================================
    // DUT signals
    // ============================================================
    reg         clk_audio = 0;
    reg         reset     = 1;

    wire        mclk;
    wire        sclk;
    wire        lrck;

    reg         sd_rx;
    wire        sd_tx;

    wire [23:0] l_data_rx;
    wire [23:0] r_data_rx;

    reg  [23:0] l_data_tx;
    reg  [23:0] r_data_tx;

    // ============================================================
    // Instantiate DUT 
    // ============================================================
    i2s_controller dut (
        .clk_audio(clk_audio),
        .reset(reset),
        .mclk(mclk),
        .sclk(sclk),
        .lrck(lrck),
        .sd_rx(sd_rx),
        .sd_tx(sd_tx),
        .l_data_rx(l_data_rx),
        .r_data_rx(r_data_rx),
        .l_data_tx(l_data_tx),
        .r_data_tx(r_data_tx)
    );

    // ============================================================
    // Clock generation
    // ============================================================
    always #(CLK_AUDIO_PER/2.0) clk_audio = ~clk_audio;

    // ============================================================
    // Sine LUT Generation
    // ============================================================
    integer i;
    localparam LUT_SIZE = 64;
    reg signed [23:0] sine_lut [0:LUT_SIZE-1];

    initial begin
        for (i = 0; i < LUT_SIZE; i = i + 1) begin
            sine_lut[i] = $rtoi(
                $sin(2.0 * 3.1415926535 * i / LUT_SIZE) * (2**23 - 1)
            );
        end
    end

    // ============================================================
    // I2S RX Stimulus (Emulating an External ADC)
    // ============================================================
    integer sample_idx = 0;
    integer bit_idx    = 0;
    reg [31:0] shift_word;
    reg        last_lrck;

    initial begin
        sd_rx = 0;
        last_lrck = 0;
    end

    // Drive sd_rx on negedge SCLK so DUT can sample on posedge
    always @(negedge sclk) begin
        if (lrck != last_lrck) begin
            bit_idx <= 0;
            if (lrck == 0) begin
                // Load Left Channel (I2S: Data starts 1 bit after LRCK edge)
                shift_word <= {sine_lut[sample_idx], 8'd0}; 
            end else begin
                // Load Right Channel
                shift_word <= {sine_lut[sample_idx], 8'd0};
                sample_idx <= (sample_idx + 1) % LUT_SIZE;
            end
        end else begin
            bit_idx <= bit_idx + 1;
        end

        // Simple I2S shift: MSB starts 1 SCLK after LRCK transition
        if (bit_idx < 32)
            sd_rx <= shift_word[31 - bit_idx];
        else
            sd_rx <= 0;

        last_lrck <= lrck;
    end

    // ============================================================
    // Loopback Logic (Connects Output to Input)
    // ============================================================
    always @(posedge clk_audio) begin
        l_data_tx <= l_data_rx;
        r_data_tx <= r_data_rx;
    end

    // ============================================================
    // Simulation Control
    // ============================================================
    initial begin
        reset = 1;
        #(20 * CLK_AUDIO_PER);
        reset = 0;

        // Run for enough time to see several sine periods
        #(5_000_000); 
        $display("Simulation Finished");
        $finish;
    end

endmodule