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
    input wire [7:0] target_angle,
    input wire [3:0] target_elevation
);
    
    assign rx_mclk = tx_mclk;
    assign rx_lrck = tx_lrck;
    assign rx_sclk = tx_sclk;

    // 1. Safe System Reset
    wire rst_audio = ~locked; 

    // --- DECLARATIONS MOVED UP HERE TO FIX COMPILATION ERROR ---
    wire [23:0] l_in, r_in;
    wire [23:0] l_out, r_out;
    wire new_sample;
    // -----------------------------------------------------------


    /* CDC
    
    reg [7:0] target_angle_sync1, target_angle_sync2;
    reg [3:0] target_elevation_sync1, target_elevation_sync2;

    always @(posedge clk_audio) begin
        if (rst_audio) begin
            target_angle_sync1 <= 0; target_angle_sync2 <= 0;
            target_elevation_sync1 <= 0; target_elevation_sync2 <= 0;
        end else begin
            target_angle_sync1 <= target_angle;
            target_angle_sync2 <= target_angle_sync1;
            
            target_elevation_sync1 <= target_elevation;
            target_elevation_sync2 <= target_elevation_sync1;
        end
    end
    
    */
    
    // ==========================================
    // 1. Ping-Pong Trigger Logic & Lockout
    // ==========================================
    reg [7:0] angle_a = 0;     
    reg [7:0] angle_b = 0;     
    reg [3:0] elevation_a = 0;     
    reg [3:0] elevation_b = 0;
    //(* mark_debug = "true" *) reg active_channel = 0;
    reg active_channel = 0;    
    reg crossfade_trig = 0;

    // Expanded to 11 bits to lock out for 1024 samples
    reg [10:0] lockout_counter = 0;
    reg is_locked_out = 0;

    always @(posedge clk_audio) begin
        if (rst_audio) begin
            angle_a <= target_angle;
            angle_b <= target_angle;
            elevation_a <= target_elevation;
            elevation_b <= target_elevation;
            active_channel <= 1'b0;
            crossfade_trig <= 1'b0;
            is_locked_out <= 1'b0;
            lockout_counter <= 11'd0;
        end else begin
            crossfade_trig <= 1'b0; 

            if (is_locked_out) begin
                // A crossfade is currently happening. Wait for 1024 samples.
                if (new_sample) begin
                    if (lockout_counter < 11'd1024) begin
                        lockout_counter <= lockout_counter + 1'b1;
                    end else begin
                        is_locked_out <= 1'b0; 
                    end
                end
            end 
            else begin
                if (active_channel == 1'b0) begin
                    if ((target_angle != angle_a) || (target_elevation != elevation_a)) begin
                        angle_b <= target_angle;
                        elevation_b <= target_elevation;
                        active_channel <= 1'b1;  
                        crossfade_trig <= 1'b1;  
                        is_locked_out <= 1'b1;   
                        lockout_counter <= 11'd0;
                    end
                end else begin
                    if ((target_angle != angle_b) || (target_elevation != elevation_b)) begin
                        angle_a <= target_angle; 
                        elevation_a <= target_elevation;
                        active_channel <= 1'b0;  
                        crossfade_trig <= 1'b1;  
                        is_locked_out <= 1'b1;   
                        lockout_counter <= 11'd0;
                    end
                end
            end
        end
    end

    // ==========================================
    // 2. I2S Controller
    // ==========================================
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
    // 3. Address Generators
    // ==========================================
    wire [16:0] bram_addr_a;
    wire [16:0] bram_addr_b;
    wire conv_en;
    
    hrtf_address_generator_3D addr_gen_a (
        .clk(clk_audio),
        .reset(rst_audio), 
        .start_trigger(new_sample),
        .angle_index(angle_a),
        .elevation_index(elevation_a),
        .bram_addr(bram_addr_a),
        .conv_en(conv_en),
        .conv_done()
    );

    hrtf_address_generator_3D addr_gen_b (
        .clk(clk_audio),
        .reset(rst_audio), 
        .start_trigger(new_sample),
        .angle_index(angle_b), 
        .elevation_index(elevation_b),
        .bram_addr(bram_addr_b),
        .conv_en(),  
        .conv_done() 
    );

    // ==========================================
    // 4. BRAM & Crossfader (Left Ear)
    // ==========================================
    wire [15:0] coeff_l_a;
    wire [15:0] coeff_l_b;
    
    rom_hrtf_left rom_l (
        .clka(clk_audio),
        .addra(bram_addr_a), 
        .douta(coeff_l_a),
        .clkb(clk_audio),
        .addrb(bram_addr_b),
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
        .fade_to_b(active_channel), 
        .audio_out_mixed(l_out)
    );

    // ==========================================
    // 5. BRAM & Crossfader (Right Ear)
    // ==========================================
    wire [15:0] coeff_r_a;
    wire [15:0] coeff_r_b;
    
    rom_hrtf_right rom_r (
        .clka(clk_audio),
        .addra(bram_addr_a),
        .douta(coeff_r_a),
        .clkb(clk_audio),
        .addrb(bram_addr_b),
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
        .fade_to_b(active_channel),
        .audio_out_mixed(r_out)
    );

endmodule