module dsp_fir_folded (
    input wire clk,
    input wire reset,              // <--- NEW: Reset input
    input wire conv_en,            
    input wire signed [23:0] audio_in,
    input wire signed [15:0] coeff_in, 
    input wire new_sample_trig,

    output reg signed [23:0] audio_out
);
    // Circular Buffer
    reg signed [23:0] audio_history [0:127];
    reg [6:0] write_ptr = 0;
    reg [6:0] read_ptr = 0;

    // --- SIMULATION FIX: Initialize RAM to 0 ---
    integer i;
    initial begin
        for (i=0; i<128; i=i+1) audio_history[i] = 0;
        accumulator = 0;
        audio_out = 0;
        pipe_valid_s1 = 0;
        pipe_valid_s2 = 0;
    end

    // Accumulator (48-bit)
    reg signed [47:0] accumulator;

    // --- PIPELINE STAGES ---
    reg signed [23:0] pipe_audio_s1;
    reg pipe_valid_s1;
    reg signed [23:0] pipe_audio_s2;
    reg pipe_valid_s2;

    always @(posedge clk) begin
        // --- 0. Global Reset ---
        if (reset) begin
            write_ptr <= 0;
            read_ptr <= 0;
            accumulator <= 0;
            audio_out <= 0;
            pipe_valid_s1 <= 0;
            pipe_valid_s2 <= 0;
            pipe_audio_s1 <= 0;
            pipe_audio_s2 <= 0;
        end
        // --- 1. New Sample Trigger (Reset & Store) ---
        else if (new_sample_trig) begin
            // Save Output & Reset
            //audio_out   <= accumulator[40:17];
            audio_out   <= accumulator[37:14];
            accumulator <= 0;

            // Write to Circular Buffer
            audio_history[write_ptr] <= audio_in;
            read_ptr <= write_ptr;        
            write_ptr <= write_ptr + 1;

            // Reset Pipeline Flags
            pipe_valid_s1 <= 0;
            pipe_valid_s2 <= 0;
        end

        // --- 2. Convolution Loop ---
        else begin
            // --- Stage 0: Address Generation / Read Ptr ---
            if (conv_en) begin
                read_ptr <= read_ptr - 1; 
            end

            // --- Stage 1: Fetch Audio ---
            if (conv_en) begin
                pipe_audio_s1 <= audio_history[read_ptr];
                pipe_valid_s1 <= 1;
            end else begin
                pipe_valid_s1 <= 0;
            end

            // --- Stage 2: Alignment ---
            pipe_audio_s2 <= pipe_audio_s1;
            pipe_valid_s2 <= pipe_valid_s1;

            // --- Stage 3: Multiply & Accumulate ---
            if (pipe_valid_s2) begin
                accumulator <= accumulator + (pipe_audio_s2 * coeff_in);
            end
        end
    end

endmodule