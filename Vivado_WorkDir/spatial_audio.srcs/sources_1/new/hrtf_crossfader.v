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
    input wire fade_to_b,            // 0 = Fade to A (B gets quiet), 1 = Fade to B (A gets quiet)

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

    // --- 2. Ping-Pong Crossfade State Machine ---
    reg [8:0] fade_counter; 
    reg [8:0] fade_target;
    reg is_fading;

    always @(posedge clk) begin
        if (reset) begin
            fade_counter <= 9'd0; // 0 means Port A is at 100% volume
            fade_target <= 9'd0;
            is_fading <= 1'b0;
        end 
        else if (start_crossfade_trig) begin
            is_fading <= 1'b1;
            // Set our destination based on the direction flag
            // If fade_to_b is 1, count up to 256. If 0, count down to 0.
            fade_target <= fade_to_b ? 9'd256 : 9'd0;
        end
        else if (new_sample_trig && is_fading) begin
            // Increment or decrement the counter once per audio sample
            if (fade_counter < fade_target) begin
                fade_counter <= fade_counter + 1'b1; // Fading volume towards B
            end else if (fade_counter > fade_target) begin
                fade_counter <= fade_counter - 1'b1; // Fading volume towards A
            end else begin
                is_fading <= 1'b0; // Reached target, fade complete
            end
        end
    end

    // --- 3. Mixing and Multipliers ---
    // Multiply 24-bit audio by 10-bit signed fade value = 34-bit result
    wire signed [33:0] mix_b_mult;
    wire signed [33:0] mix_a_mult;
    wire signed [34:0] mix_sum;

    // When fade_counter = 0,   A gets 256 (100%), B gets 0 (0%)
    // When fade_counter = 256, A gets 0 (0%),     B gets 256 (100%)
    assign mix_b_mult = fir_out_b * $signed({1'b0, fade_counter});
    assign mix_a_mult = fir_out_a * $signed({1'b0, (9'd256 - fade_counter)});
    
    assign mix_sum = mix_b_mult + mix_a_mult;

    // --- 4. Output Alignment (Division by 256) ---
    always @(posedge clk) begin
        if (reset) begin
            audio_out_mixed <= 24'd0;
        end else begin
            // Shift right by 8 to mathematically divide by 256
            audio_out_mixed <= mix_sum[31:8]; 
        end
    end

endmodule