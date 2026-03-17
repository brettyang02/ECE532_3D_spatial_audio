module hrtf_address_generator(
    input wire clk,
    input wire reset,               
    input wire start_trigger,       
    input wire [7:0] angle_index,   
    
    output reg [15:0] bram_addr,    
    output reg conv_en,             
    output reg conv_done            
);
    
    reg [7:0] tap_count;
    reg state; 
    
    reg [7:0] latched_angle; // <--- ADDED: Register to safely hold the angle
    
    always @(posedge clk) begin
        if (reset) begin
            state <= 0;
            tap_count <= 0;
            conv_en <= 0;
            conv_done <= 0;
            bram_addr <= 0;
            latched_angle <= 0; // <--- ADDED: Reset the latched angle
        end
        else if (start_trigger && state == 0) begin
            state <= 1;
            tap_count <= 0;
            conv_en <= 1;   
            conv_done <= 0;
            
            latched_angle <= angle_index; // <--- ADDED: Capture the angle at the exact moment the convolution starts
            
            bram_addr <= {1'b0, angle_index, 7'b0}; 
        end 
        else if (state == 1) begin
            
            // <--- CHANGED: Now using latched_angle instead of the live angle_index
            bram_addr <= {1'b0, latched_angle, 7'b0} + tap_count; 
            
            if (tap_count == 127) begin
                state <= 0;
                conv_en <= 0;  
                conv_done <= 1; 
            end else begin
                tap_count <= tap_count + 1;
            end
        end 
        else begin
            conv_done <= 0; 
        end
    end
endmodule