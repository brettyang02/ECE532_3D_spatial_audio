module i2s_controller (
    input wire clk_audio,    
    input wire reset,
    output wire mclk,        
    output wire sclk,        
    output wire lrck,        
    input  wire sd_rx,       
    output reg  sd_tx,      
    output reg [23:0] l_data_rx, 
    output reg [23:0] r_data_rx, 
    input wire [23:0] l_data_tx, 
    input wire [23:0] r_data_tx, 
    output reg new_sample_pulse  
);

    reg [8:0] cnt;
    always @(posedge clk_audio) begin
        if (reset) cnt <= 0;
        else cnt <= cnt + 1;
    end

    assign mclk = cnt[0]; 
    assign sclk = cnt[2]; 
    assign lrck = cnt[8]; 

    wire sclk_fall = (cnt[2:0] == 3'b111);
    wire sclk_rise = (cnt[2:0] == 3'b011); 
    
    reg [23:0] shift_rx;
    reg [23:0] shift_tx; 
    reg [4:0]  bit_cnt; 

    always @(posedge clk_audio) begin
        new_sample_pulse <= 0;

        if (reset) begin
            l_data_rx <= 0;
            r_data_rx <= 0;
            shift_rx  <= 0;
            shift_tx  <= 0;
            sd_tx     <= 0;
            bit_cnt   <= 0;
        end
        else if (sclk_fall) begin
            if (cnt[7:0] == 8'hFF) bit_cnt <= 0;
            else bit_cnt <= bit_cnt + 1;

            if (bit_cnt == 0) begin
                if (lrck == 1) begin 
                    shift_tx <= l_data_tx;
                    new_sample_pulse <= 1; 
                end else begin
                    shift_tx <= r_data_tx;
                end
            end 
            else if (bit_cnt <= 24) begin
                sd_tx <= shift_tx[23];     
                shift_tx <= {shift_tx[22:0], 1'b0}; 
            end
            else begin
                sd_tx <= 0;
            end
        end
        
        else if (sclk_rise) begin
            // Shift in bits 1-24
            if (bit_cnt >= 1 && bit_cnt <= 24) begin
                shift_rx <= {shift_rx[22:0], sd_rx}; 
            end
            
            // Latch at the EXACT moment the last bit arrives
            if (bit_cnt == 24) begin
                // <--- FIX: Concatenate shift_rx (bits 1-23) with sd_rx (bit 24)
                if (lrck == 0) l_data_rx <= {shift_rx[22:0], sd_rx}; 
                else           r_data_rx <= {shift_rx[22:0], sd_rx};
            end
        end
    end
endmodule