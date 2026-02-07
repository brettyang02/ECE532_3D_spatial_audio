module top_i2s_loopback (
    input  wire clk_100mhz,
    output wire da_mclk, da_lrck, da_sclk, da_sdin,
    output wire ad_mclk, ad_lrck, ad_sclk, input wire ad_sdout
);

    wire clk_audio, clk_locked;
    clk_wiz_0 clk_gen (
        .clk_in1(clk_100mhz), .reset(1'b0),
        .clk_audio(clk_audio), .locked(clk_locked)
    );

    reg [1:0] rst_sync = 2'b11;
    always @(posedge clk_audio) rst_sync <= (!clk_locked) ? 2'b11 : {rst_sync[0], 1'b0};
    wire reset_audio = rst_sync[1];

    wire [23:0] rx_l, rx_r;
    reg  [23:0] loop_l, loop_r;

    // Buffer the loopback to ensure clean data transfer
    always @(posedge clk_audio) begin
        loop_l <= rx_l;
        loop_r <= rx_r;
    end

    i2s_controller i2s_inst (
        .clk_audio (clk_audio),
        .reset     (reset_audio),
        .mclk      (da_mclk),
        .sclk      (da_sclk),
        .lrck      (da_lrck),
        .sd_rx     (ad_sdout),
        .sd_tx     (da_sdin),
        .l_data_rx (rx_l),
        .r_data_rx (rx_r),
        .l_data_tx (loop_l),
        .r_data_tx (loop_r)
    );

    // Sync ADC clocks to the same source
    assign ad_mclk = da_mclk;
    assign ad_lrck = da_lrck;
    assign ad_sclk = da_sclk;

endmodule