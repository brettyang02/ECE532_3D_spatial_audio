module hrtf_crossfader (
    input wire clk,
    input wire reset,
    input wire conv_en,
    input wire new_sample_trig,
    
    // Audio Input
    input wire signed [23:0] audio_in,

    // Coefficients from the two BRAM ports
    input wire signed [15:0] coeff_a,
    input wire signed [15:0] coeff_b,

    // Ping-Pong Trigger Logic
    input wire start_crossfade_trig, // 1-cycle pulse to start fading
    input wire fade_to_b,            // 0 = Fade to A, 1 = Fade to B

    // Final mixed output
    output reg signed [23:0] audio_out_mixed
);

    // --- 1. Instantiate the Two FIR Filters ---
    wire signed [23:0] fir_out_a;
    wire signed [23:0] fir_out_b;

    dsp_fir_folded fir_a (
        .clk(clk),
        .reset(reset),
        .conv_en(conv_en),
        .audio_in(audio_in),
        .coeff_in(coeff_a),
        .new_sample_trig(new_sample_trig),
        .audio_out(fir_out_a)
    );

    dsp_fir_folded fir_b (
        .clk(clk),
        .reset(reset),
        .conv_en(conv_en),
        .audio_in(audio_in),
        .coeff_in(coeff_b),
        .new_sample_trig(new_sample_trig),
        .audio_out(fir_out_b)
    );

    // --- 2. Ping-Pong Crossfade State Machine (1024 Samples) ---
    reg [10:0] fade_counter; 
    reg [10:0] fade_target;
    reg is_fading;

    always @(posedge clk) begin
        if (reset) begin
            fade_counter <= 11'd0; 
            fade_target <= 11'd0;
            is_fading <= 1'b0;
        end 
        else if (start_crossfade_trig) begin
            is_fading <= 1'b1;
            // Destination is 1024 for B, 0 for A
            fade_target <= fade_to_b ? 11'd1024 : 11'd0;
        end
        else if (new_sample_trig && is_fading) begin
            if (fade_counter < fade_target) begin
                fade_counter <= fade_counter + 1'b1;
            end else if (fade_counter > fade_target) begin
                fade_counter <= fade_counter - 1'b1;
            end else begin
                is_fading <= 1'b0; 
            end
        end
    end

    // --- 3. Mixing and Multipliers ---
    // 24-bit audio * 12-bit signed fade (0 to 1024) = 36-bit result
    wire signed [35:0] mix_b_mult;
    wire signed [35:0] mix_a_mult;
    wire signed [36:0] mix_sum; // +1 bit for carry

    // {1'b0, counter} makes the unsigned value a positive signed number
    assign mix_b_mult = fir_out_b * $signed({1'b0, fade_counter});
    assign mix_a_mult = fir_out_a * $signed({1'b0, (11'd1024 - fade_counter)});
    
    assign mix_sum = mix_b_mult + mix_a_mult;

    // --- 4. Output Alignment (Division by 1024) ---
    always @(posedge clk) begin
        if (reset) begin
            audio_out_mixed <= 24'd0;
        end else begin
            // Shift right by 10 to divide by 1024. 
            // We take bits [33:10] to keep the sign bit intact.
            audio_out_mixed <= mix_sum[33:10]; 
        end
    end

endmodule


//module hrtf_crossfader (
//    input wire clk,
//    input wire reset,
//    input wire conv_en,
//    input wire new_sample_trig,
    
//    // Audio Input
//    input wire signed [23:0] audio_in,

//    // Coefficients from the two BRAM ports
//    input wire signed [15:0] coeff_a,
//    input wire signed [15:0] coeff_b,

//    // Ping-Pong Trigger Logic
//    input wire start_crossfade_trig, 
//    input wire fade_to_b,            

//    // Final mixed output
//    output reg signed [23:0] audio_out_mixed
//);

//    // --- 1. Instantiate the Two FIR Filters ---
//    wire signed [23:0] fir_out_a;
//    wire signed [23:0] fir_out_b;

//    dsp_fir_folded fir_a (
//        .clk(clk), .reset(reset), .conv_en(conv_en),
//        .audio_in(audio_in), .coeff_in(coeff_a),
//        .new_sample_trig(new_sample_trig), .audio_out(fir_out_a)
//    );

//    dsp_fir_folded fir_b (
//        .clk(clk), .reset(reset), .conv_en(conv_en),
//        .audio_in(audio_in), .coeff_in(coeff_b),
//        .new_sample_trig(new_sample_trig), .audio_out(fir_out_b)
//    );

//    // --- 2. State Machine Logic (256 Samples) ---
//    // 9 bits can hold 0 to 511; we need up to 256.
//    reg [8:0] fade_counter; 
//    reg is_fading;
//    reg target_is_b;

//    always @(posedge clk) begin
//        if (reset) begin
//            fade_counter <= 9'd0;
//            is_fading    <= 1'b0;
//            target_is_b  <= 1'b0;
//        end 
//        else if (start_crossfade_trig) begin
//            is_fading   <= 1'b1;
//            target_is_b <= fade_to_b;
//        end
//        else if (new_sample_trig && is_fading) begin
//            if (target_is_b && fade_counter < 9'd256) begin
//                fade_counter <= fade_counter + 1'b1;
//            end 
//            else if (!target_is_b && fade_counter > 9'd0) begin
//                fade_counter <= fade_counter - 1'b1;
//            end 
//            else begin
//                is_fading <= 1'b0; // Target reached
//            end
//        end
//    end

//    // --- 3. Mixing and Multipliers ---
//    // 24-bit audio * 10-bit signed fade (0 to 256) = 34-bit result
//    // Using 10 bits for gain to safely treat 256 as a positive signed number
//    wire signed [33:0] mix_b_mult;
//    wire signed [33:0] mix_a_mult;
//    reg signed [34:0]  mix_sum; // +1 bit for addition carry

//    assign mix_b_mult = fir_out_b * $signed({1'b0, fade_counter});
//    assign mix_a_mult = fir_out_a * $signed({1'b0, (9'd256 - fade_counter)});
    
//    always @(posedge clk) begin
//        mix_sum <= mix_b_mult + mix_a_mult;
//    end

//    // --- 4. Output Alignment (Division by 256) ---
//    // To divide by 256, we shift right by 8 bits.
//    // Taking bits [31:8] keeps the 24-bit range intact.
//    always @(posedge clk) begin
//        if (reset) begin
//            audio_out_mixed <= 24'd0;
//        end else begin
//            audio_out_mixed <= mix_sum[31:8]; 
//        end
//    end

//endmodule