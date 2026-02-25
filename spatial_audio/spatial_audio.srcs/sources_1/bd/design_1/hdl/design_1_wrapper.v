//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Feb 22 22:55:13 2026
//Host        : DESKTOP-6P66IQN running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_100mhz,
    reset_btn,
    rx_data,
    rx_lrck,
    rx_mclk,
    rx_sclk,
    tx_data,
    tx_lrck,
    tx_mclk,
    tx_sclk,
    usb_uart_rxd,
    usb_uart_txd);
  input clk_100mhz;
  input reset_btn;
  input rx_data;
  output rx_lrck;
  output rx_mclk;
  output rx_sclk;
  output tx_data;
  output tx_lrck;
  output tx_mclk;
  output tx_sclk;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire clk_100mhz;
  wire reset_btn;
  wire rx_data;
  wire rx_lrck;
  wire rx_mclk;
  wire rx_sclk;
  wire tx_data;
  wire tx_lrck;
  wire tx_mclk;
  wire tx_sclk;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.clk_100mhz(clk_100mhz),
        .reset_btn(reset_btn),
        .rx_data(rx_data),
        .rx_lrck(rx_lrck),
        .rx_mclk(rx_mclk),
        .rx_sclk(rx_sclk),
        .tx_data(tx_data),
        .tx_lrck(tx_lrck),
        .tx_mclk(tx_mclk),
        .tx_sclk(tx_sclk),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
