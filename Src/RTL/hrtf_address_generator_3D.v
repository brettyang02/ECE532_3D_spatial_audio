module hrtf_address_generator_3D(
    input wire clk,
    input wire reset,               
    input wire start_trigger,       
    input wire [7:0] angle_index,   
    input wire [3:0] elevation_index, // <--- ADDED: New 3D elevation input
    
    output reg [15:0] bram_addr,    
    output reg conv_en,             
    output reg conv_done            
);
    
    reg [7:0] tap_count;
    reg state; 
    
    reg [7:0] latched_angle; 
    reg [3:0] latched_elevation; // <--- ADDED: Register to safely hold the elevation
    
    always @(posedge clk) begin
        if (reset) begin
            state <= 0;
            tap_count <= 0;
            conv_en <= 0;
            conv_done <= 0;
            bram_addr <= 0;
            latched_angle <= 0; 
            latched_elevation <= 0; // <--- ADDED: Reset the latched elevation
        end
        else if (start_trigger && state == 0) begin
            state <= 1;
            tap_count <= 0;
            conv_en <= 1;   
            conv_done <= 0;
            
            // Capture both the angle and elevation at the exact moment convolution starts
            latched_angle <= angle_index; 
            latched_elevation <= elevation_index; 
            
            // Calculate the very first address: (elevation * 9216) + (angle * 128)
            bram_addr <= (elevation_index * 16'd9216) + {1'b0, angle_index, 7'b0}; 
        end 
        else if (state == 1) begin
            
            // Add the tap_count to the latched 3D base address
            bram_addr <= (latched_elevation * 16'd9216) + {1'b0, latched_angle, 7'b0} + tap_count; 
            
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