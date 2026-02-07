`timescale 1ns/1ps

module i2s_controller (
    input  wire        clk_audio,
    input  wire        reset,

    output wire        mclk,
    output reg         sclk,
    output reg         lrck,

    input  wire        sd_rx, 
    output reg         sd_tx, 

    output reg [23:0]  l_data_rx,
    output reg [23:0]  r_data_rx,

    input  wire [23:0] l_data_tx,
    input  wire [23:0] r_data_tx
);

    assign mclk = clk_audio;

    // Synchronize asynchronous input
    reg sd_rx_sync, sd_rx_pipe;
    always @(posedge clk_audio) begin
        sd_rx_sync <= sd_rx;
        sd_rx_pipe <= sd_rx_sync;
    end

    // Generate BCLK (MCLK/8)
    reg [2:0] div_cnt;
    always @(posedge clk_audio) begin
        if (reset) {div_cnt, sclk} <= 4'd0;
        else {sclk, div_cnt} <= {sclk, div_cnt} + 4'd1;
    end

    wire sclk_rise = (div_cnt == 3'd0 && sclk == 1'b1);
    wire sclk_fall = (div_cnt == 3'd0 && sclk == 1'b0);

    reg [5:0] bit_cnt;      // 0..63
    reg [23:0] rx_shift;
    reg [23:0] tx_shift;

    always @(posedge clk_audio) begin
        if (reset) begin
            bit_cnt   <= 6'd0;
            lrck      <= 1'b0;
            sd_tx     <= 1'b0;
            l_data_rx <= 24'd0;
            r_data_rx <= 24'd0;
        end else begin
            
            // --- RX Logic (Sample on Rising Edge) ---
            if (sclk_rise) begin
                if (bit_cnt >= 6'd1 && bit_cnt <= 6'd24)
                    rx_shift <= {rx_shift[22:0], sd_rx_pipe};
                else if (bit_cnt >= 6'd33 && bit_cnt <= 6'd56)
                    rx_shift <= {rx_shift[22:0], sd_rx_pipe};

                // Latch completed words to output
                if (bit_cnt == 6'd25) l_data_rx <= rx_shift;
                if (bit_cnt == 6'd57) r_data_rx <= rx_shift;
            end

            // --- TX Logic (Update on Falling Edge) ---
            if (sclk_fall) begin
                if (bit_cnt == 6'd63) begin
                    lrck <= 1'b0;
                    tx_shift <= l_data_tx; // Load Left
                end else if (bit_cnt == 6'd31) begin
                    lrck <= 1'b1;
                    tx_shift <= r_data_tx; // Load Right
                end

                // Shift out MSB (I2S standard: 1-bit delay after LRCK edge)
                // We send data at bit 0 (the delay slot) and bits 32-63
                if ((bit_cnt >= 6'd0 && bit_cnt <= 6'd23) || (bit_cnt >= 6'd32 && bit_cnt <= 6'd55)) begin
                    sd_tx <= tx_shift[23];
                    tx_shift <= {tx_shift[22:0], 1'b0};
                end else begin
                    sd_tx <= 1'b0;
                end
            end

            // --- Global Counter Advance ---
            if (sclk_fall) begin
                bit_cnt <= bit_cnt + 6'd1;
            end
        end
    end
endmodule