`timescale 1ns / 1ps



module tb_hrtf_crossfader;



    // Inputs

    reg clk;

    reg reset;

    reg conv_en;

    reg new_sample_trig;

    reg signed [23:0] audio_in;

    reg signed [15:0] coeff_a;

    reg signed [15:0] coeff_b;

    reg start_crossfade_trig;

    reg fade_to_b;



    // Outputs

    wire signed [23:0] audio_out_mixed;



    // Instantiate the Unit Under Test (UUT)

    hrtf_crossfader uut (

        .clk(clk),

        .reset(reset),

        .conv_en(conv_en),

        .new_sample_trig(new_sample_trig),

        .audio_in(audio_in),

        .coeff_a(coeff_a),

        .coeff_b(coeff_b),

        .start_crossfade_trig(start_crossfade_trig),

        .fade_to_b(fade_to_b),

        .audio_out_mixed(audio_out_mixed)

    );



    // 100MHz Clock Generation

    always #5 clk = ~clk;



    // Simulate "New Sample" trigger (e.g., 48kHz is approx every 2083 clk cycles)

    // For simulation speed, we'll trigger it every 20 cycles

    initial begin

        new_sample_trig = 0;

        forever begin

            #200 new_sample_trig = 1;

            #10  new_sample_trig = 0;

        end

    end



    initial begin

        // Initialize Inputs

        clk = 0;

        reset = 1;

        conv_en = 1;

        audio_in = 24'h0AAAAA; // Constant input to see gain changes

        coeff_a = 16'h7FFF;    // Filter A Gain = 1.0

        coeff_b = 16'h3FFF;    // Filter B Gain = 0.5 (for visual difference)

        start_crossfade_trig = 0;

        fade_to_b = 0;



        // Reset system

        #100 reset = 0;

        #100;



        // --- Step 1: Start at Filter A ---

        // audio_out should be ~0AAAAA

        #500;



        // --- Step 2: Trigger Fade to B ---

        @(posedge clk);

        fade_to_b = 1;

        start_crossfade_trig = 1;

        @(posedge clk);

        start_crossfade_trig = 0;



        // --- Step 3: Wait for fade to complete ---

        // It takes 256 "new_sample_trig" events.

        // With our 210ns cycle, that's ~54,000ns.

        #60000;



        // --- Step 4: Fade back to A ---

        @(posedge clk);

        fade_to_b = 0;

        start_crossfade_trig = 1;

        @(posedge clk);

        start_crossfade_trig = 0;



        #60000;

        $stop;

    end



endmodule