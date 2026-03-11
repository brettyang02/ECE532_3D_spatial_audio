// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Mar 10 23:41:12 2026
// Host        : Brett_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/ECE532/ECE532_3D_spatial_audio/Vivado_WorkDir/spatial_audio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/design_1_spatial_audio_top_0_0_stub.v
// Design      : design_1_spatial_audio_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spatial_audio_top,Vivado 2018.3" *)
module design_1_spatial_audio_top_0_0(clk_audio, locked, tx_mclk, tx_lrck, tx_sclk, 
  tx_data, rx_mclk, rx_lrck, rx_sclk, rx_data, target_angle)
/* synthesis syn_black_box black_box_pad_pin="clk_audio,locked,tx_mclk,tx_lrck,tx_sclk,tx_data,rx_mclk,rx_lrck,rx_sclk,rx_data,target_angle[7:0]" */;
  input clk_audio;
  input locked;
  output tx_mclk;
  output tx_lrck;
  output tx_sclk;
  output tx_data;
  output rx_mclk;
  output rx_lrck;
  output rx_sclk;
  input rx_data;
  input [7:0]target_angle;
endmodule
