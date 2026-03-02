module spatial_audio_top (
    input wire clk_audio,
    input wire locked,
    
    // Pmod I2S Interface
    output wire tx_mclk,
    output wire tx_lrck,
    output wire tx_sclk,
    output wire tx_data,
    output wire rx_mclk,
    output wire rx_lrck,
    output wire rx_sclk,
    input  wire rx_data,
    
    // Joystick / Switches
    input wire [7:0] target_angle
);
    
    assign rx_mclk = tx_mclk;
    assign rx_lrck = tx_lrck;
    assign rx_sclk = tx_sclk;

    // 1. Safe System Reset
    wire rst_audio = ~locked; 

    // ==========================================
    // FIXED: Ping-Pong Trigger Logic & Lockout
    // ==========================================
    reg [7:0] angle_a = 0;     // Feeds Port A Address Generator
    reg [7:0] angle_b = 0;     // Feeds Port B Address Generator
    reg active_channel = 0;    // 0 = Port A is loud, 1 = Port B is loud
    reg crossfade_trig = 0;

    reg [8:0] lockout_counter = 0;
    reg is_locked_out = 0;

    always @(posedge clk_audio) begin
        if (rst_audio) begin
            angle_a <= target_angle;
            angle_b <= target_angle;
            active_channel <= 1'b0; // Start with A loud
            crossfade_trig <= 1'b0;
            is_locked_out <= 1'b0;
            lockout_counter <= 9'd0;
        end else begin
            // Default: Keep trigger low
            crossfade_trig <= 1'b0; 

            if (is_locked_out) begin
                // A crossfade is currently happening. Wait for 256 samples.
                if (new_sample) begin
                    if (lockout_counter < 9'd256) begin
                        lockout_counter <= lockout_counter + 1'b1;
                    end else begin
                        is_locked_out <= 1'b0; // Fade finished! Unlock.
                    end
                end
            end 
            else begin
                // We are NOT fading. Check if the joystick has moved from the currently playing angle.
                if (active_channel == 1'b0) begin
                    // --- PORT A IS CURRENTLY LOUD ---
                    if (target_angle != angle_a) begin
                        angle_b <= target_angle; // Load new angle into SILENT Port B
                        active_channel <= 1'b1;  // Tell crossfader to fade TO B
                        crossfade_trig <= 1'b1;  // Fire the trigger pulse
                        is_locked_out <= 1'b1;   // Lock out new inputs
                        lockout_counter <= 9'd0;
                    end
                end else begin
                    // --- PORT B IS CURRENTLY LOUD ---
                    if (target_angle != angle_b) begin
                        angle_a <= target_angle; // Load new angle into SILENT Port A
                        active_channel <= 1'b0;  // Tell crossfader to fade TO A
                        crossfade_trig <= 1'b1;  // Fire the trigger pulse
                        is_locked_out <= 1'b1;   // Lock out new inputs
                        lockout_counter <= 9'd0;
                    end
                end
            end
        end
    end

    // ==========================================
    // 2. I2S Controller
    // ==========================================
    wire [23:0] l_in, r_in;
    wire [23:0] l_out, r_out;
    wire new_sample;
    
    i2s_controller i2s (
        .clk_audio(clk_audio),
        .reset(rst_audio), 
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

    // ==========================================
    // 3. Address Generators (Dual Instantiation)
    // ==========================================
    wire [15:0] bram_addr_a;
    wire [15:0] bram_addr_b;
    wire conv_en;
    
    // Generates addresses for Port A
    hrtf_address_generator addr_gen_a (
        .clk(clk_audio),
        .reset(rst_audio), 
        .start_trigger(new_sample),
        .angle_index(angle_a), 
        .bram_addr(bram_addr_a),
        .conv_en(conv_en),
        .conv_done()
    );

    // Generates addresses for Port B
    hrtf_address_generator addr_gen_b (
        .clk(clk_audio),
        .reset(rst_audio), 
        .start_trigger(new_sample),
        .angle_index(angle_b), 
        .bram_addr(bram_addr_b),
        .conv_en(),  // Only need conv_en from the first one
        .conv_done() 
    );

    // ==========================================
    // 4. BRAM & Crossfader (Left Ear)
    // ==========================================
    wire [15:0] coeff_l_a;
    wire [15:0] coeff_l_b;
    
    rom_hrtf_left rom_l (
        // Port A
        .clka(clk_audio),
        .addra(bram_addr_a[13:0]), 
        .douta(coeff_l_a),
        // Port B
        .clkb(clk_audio),
        .addrb(bram_addr_b[13:0]),
        .doutb(coeff_l_b)
    );
    
    hrtf_crossfader crossfade_left (
        .clk(clk_audio),
        .reset(rst_audio),
        .conv_en(conv_en),
        .new_sample_trig(new_sample),
        .audio_in(l_in),
        .coeff_a(coeff_l_a),
        .coeff_b(coeff_l_b),
        .start_crossfade_trig(crossfade_trig),
        .fade_to_b(active_channel), // 0 = Fade to A, 1 = Fade to B
        .audio_out_mixed(l_out)
    );

    // ==========================================
    // 5. BRAM & Crossfader (Right Ear)
    // ==========================================
    wire [15:0] coeff_r_a;
    wire [15:0] coeff_r_b;
    
    rom_hrtf_right rom_r (
        // Port A
        .clka(clk_audio),
        .addra(bram_addr_a[13:0]),
        .douta(coeff_r_a),
        // Port B
        .clkb(clk_audio),
        .addrb(bram_addr_b[13:0]),
        .doutb(coeff_r_b)
    );
    
    hrtf_crossfader crossfade_right (
        .clk(clk_audio),
        .reset(rst_audio),
        .conv_en(conv_en),
        .new_sample_trig(new_sample),
        .audio_in(r_in), 
        .coeff_a(coeff_r_a),
        .coeff_b(coeff_r_b),
        .start_crossfade_trig(crossfade_trig),
        .fade_to_b(active_channel), // 0 = Fade to A, 1 = Fade to B
        .audio_out_mixed(r_out)
    );

endmodule