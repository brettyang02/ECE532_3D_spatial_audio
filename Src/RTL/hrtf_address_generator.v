module hrtf_address_generator(
    input wire clk,
    input wire reset,               // ADDED: Active High Reset
    input wire start_trigger,       // From I2S
    input wire [7:0] angle_index,   
    
    output reg [15:0] bram_addr,    
    output reg conv_en,             
    output reg conv_done            // Useful for debug
);
    
    reg [7:0] tap_count;
    reg state; // 0=IDLE, 1=RUN
    
    always @(posedge clk) begin
        if (reset) begin
            state <= 0;
            tap_count <= 0;
            conv_en <= 0;
            conv_done <= 0;
            bram_addr <= 0;
        end
        // SAFETY: Only start if we are IDLE. Prevents re-triggering mid-calculation.
        else if (start_trigger && state == 0) begin
            state <= 1;
            tap_count <= 0;
            conv_en <= 1;   // Enable DSP immediately
            conv_done <= 0;
            // Pre-calculate first address so it's ready for next cycle
            bram_addr <= {1'b0, angle_index, 7'b0}; 
        end 
        else if (state == 1) begin
            // Increment Address
            bram_addr <= {1'b0, angle_index, 7'b0} + tap_count;
            
            if (tap_count == 127) begin
                state <= 0;
                conv_en <= 0;  // Turn off DSP
                conv_done <= 1; // Signal completion
            end else begin
                tap_count <= tap_count + 1;
            end
        end 
        else begin
            conv_done <= 0; // Clear done signal after 1 pulse
        end
    end
endmodule