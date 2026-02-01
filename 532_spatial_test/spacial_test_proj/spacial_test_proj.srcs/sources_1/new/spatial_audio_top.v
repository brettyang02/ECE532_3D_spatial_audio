module spatial_audio_top (
    input wire clk_100mhz,
    input wire reset_btn,       // Active High Reset for Clock Wizard
    
    // Pmod I2S Interface
    output wire tx_mclk,
    output wire tx_lrck,
    output wire tx_sclk,
    output wire tx_data,
    input  wire rx_data,
    
    // Joystick / Switches
    input wire [7:0] target_angle
);

    // 1. Generate Audio Clock
    wire clk_audio; 
    wire locked;    // <--- NEW SIGNAL
    
    clk_wiz_audio clk_gen (
        .clk_in1(clk_100mhz),
        .clk_out1(clk_audio),
        .reset(reset_btn),
        .locked(locked) // <--- CONNECT THIS
    );

    // 2. Create a Safe System Reset
    // The logic is held in reset until the clock is STABLE (Locked = 1)
    // We invert it: When Locked is 0 (Unstable), Reset is 1 (Active).
    wire rst_audio = ~locked; 

    // 3. I2S Controller
    wire [23:0] l_in, r_in;
    wire [23:0] l_out, r_out;
    wire new_sample;
    
    i2s_controller i2s (
        .clk_audio(clk_audio),
        .reset(rst_audio), // <--- USE LOCKED RESET
        .mclk(tx_mclk),
        .lrck(tx_lrck),
        .sclk(tx_sclk),
        .sd_rx(rx_data),
        .sd_tx(tx_data),
        .l_data_rx(l_in),
        .r_data_rx(r_in),
        .l_data_tx(l_out),
        .r_data_tx(r_out),
        .new_sample_pulse(new_sample)
    );

    // 4. Address Gen 
    wire [15:0] bram_addr;
    wire conv_en, conv_done;
    
    hrtf_address_generator addr_gen (
        .clk(clk_audio),
        .reset(rst_audio), // <--- USE LOCKED RESET
        .start_trigger(new_sample),
        .angle_index(target_angle),
        .bram_addr(bram_addr),
        .conv_en(conv_en),
        .conv_done(conv_done)
    );

    // 5. BRAM & DSP (Left Ear)
    wire [15:0] coeff_l;
    rom_hrtf_left rom_l (
        .clka(clk_audio),
        .addra(bram_addr[13:0]), 
        .douta(coeff_l)
    );
    
    dsp_fir_folded fir_left (
        .clk(clk_audio),
        .reset(rst_audio),
        .conv_en(conv_en),
        .audio_in(l_in),
        .coeff_in(coeff_l),
        .new_sample_trig(new_sample),
        .audio_out(l_out)
    );

    // 6. BRAM & DSP (Right Ear)
    wire [15:0] coeff_r;
    rom_hrtf_right rom_r (
        .clka(clk_audio),
        .addra(bram_addr[13:0]),
        .douta(coeff_r)
    );
    
    dsp_fir_folded fir_right (
        .clk(clk_audio),
        .reset(rst_audio),
        .conv_en(conv_en),
        .audio_in(r_in), 
        .coeff_in(coeff_r),
        .new_sample_trig(new_sample),
        .audio_out(r_out)
    );

endmodule