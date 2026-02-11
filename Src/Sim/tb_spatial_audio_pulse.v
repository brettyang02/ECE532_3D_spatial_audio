`timescale 1ns/1ps

module tb_spatial_audio_pulse;

    reg clk_100mhz = 0;
    reg reset_btn = 1;
    reg rx_data = 0;
    reg [7:0] target_angle = 0;

    wire tx_mclk;
    wire tx_lrck;
    wire tx_sclk;
    wire tx_data;

    spatial_audio_top dut (
        .clk_100mhz(clk_100mhz),
        .reset_btn(reset_btn),
        .tx_mclk(tx_mclk),
        .tx_lrck(tx_lrck),
        .tx_sclk(tx_sclk),
        .tx_data(tx_data),
        .rx_data(rx_data),
        .target_angle(target_angle)
    );

    // 100 MHz clock
    always #5 clk_100mhz = ~clk_100mhz;

    // --------------------------------------------------
    // I2S TRANSMIT TASK (Robust Edge Alignment)
    // --------------------------------------------------
    task send_sample(input [23:0] L, input [23:0] R);
        integer i;
        begin
            // ---- LEFT ----
            // FIX: Wait for the FALLING EDGE of LRCK (Start of Left Frame)
            @(negedge tx_lrck); 

            // I2S dummy bit slot (1 cycle)
            @(negedge tx_sclk); 

            for (i = 23; i >= 0; i=i-1) begin
                rx_data <= L[i];
                @(posedge tx_sclk);   
                @(negedge tx_sclk);
            end
            
            // Zero out the line for the remaining padding bits
            rx_data <= 0;

            // ---- RIGHT ----
            // FIX: Wait for the RISING EDGE of LRCK (Start of Right Frame)
            @(posedge tx_lrck); 
            
            // I2S dummy bit slot
            @(negedge tx_sclk);

            for (i = 23; i >= 0; i=i-1) begin
                rx_data <= R[i];
                @(posedge tx_sclk);
                @(negedge tx_sclk);
            end
            
            rx_data <= 0;
        end
    endtask

    // --------------------------------------------------
    // MAIN TEST
    // --------------------------------------------------
    initial begin
        $display("=== Spatial Audio FIR Test ===");

        // Reset
        #200;
        reset_btn = 0;

        // Let clocks settle
        repeat(2000) @(posedge clk_100mhz);

        // -----------------------------
        // Impulse test (angle 0)
        // -----------------------------
        $display("Impulse at angle 0");

        send_sample(24'h7FF0FF, 24'h7FF0FF);

        repeat(60)
            send_sample(24'h0, 24'h0);

        /*
        // -----------------------------
        // Change HRTF angle
        // -----------------------------
        $display("Impulse at angle 1");

        target_angle = 8'd54;

        send_sample(24'h7FFFFF, 24'h7FFFFF);

        repeat(60)
            send_sample(24'h0, 24'h0);
        */

        $display("DONE");
        #10000;
//        $finish;
    end
    
    // -----------------------------------------------------------
    // AUTOMATIC CSV EXPORT BLOCK (Deep Debug)
    // -----------------------------------------------------------
    integer f;
    initial begin
        f = $fopen("audio_dump.csv", "w");
        // Keep the detailed debug headers
        $fwrite(f, "Time_ns, Left_Out, Right_Out, Shift_RX, L_Latched, R_Latched, Bit_Cnt, SD_RX_Pin, LRCK\n");
    end

    always @(posedge dut.i2s.new_sample_pulse) begin
        $fwrite(f, "%d, %d, %d, %h, %h, %h, %d, %b, %b\n", 
                $time, 
                $signed(dut.l_out), 
                $signed(dut.r_out), 
                dut.i2s.shift_rx,    
                dut.i2s.l_data_rx,   
                dut.i2s.r_data_rx,   
                dut.i2s.bit_cnt,     
                dut.rx_data,         
                dut.tx_lrck          
        );
    end

endmodule