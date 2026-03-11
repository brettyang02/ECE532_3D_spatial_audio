// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Mar 10 23:41:12 2026
// Host        : Brett_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/ECE532/ECE532_3D_spatial_audio/Vivado_WorkDir/spatial_audio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/design_1_spatial_audio_top_0_0_sim_netlist.v
// Design      : design_1_spatial_audio_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spatial_audio_top_0_0,spatial_audio_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spatial_audio_top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_spatial_audio_top_0_0
   (clk_audio,
    locked,
    tx_mclk,
    tx_lrck,
    tx_sclk,
    tx_data,
    rx_mclk,
    rx_lrck,
    rx_sclk,
    rx_data,
    target_angle);
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

  wire clk_audio;
  wire locked;
  wire rx_data;
  wire rx_lrck;
  wire [7:0]target_angle;
  wire tx_data;
  wire tx_sclk;

  assign rx_mclk = clk_audio;
  assign rx_sclk = tx_sclk;
  assign tx_lrck = rx_lrck;
  assign tx_mclk = clk_audio;
  design_1_spatial_audio_top_0_0_spatial_audio_top inst
       (.clk_audio(clk_audio),
        .locked(locked),
        .rx_data(rx_data),
        .rx_lrck(rx_lrck),
        .rx_sclk(tx_sclk),
        .target_angle(target_angle),
        .tx_data(tx_data));
endmodule

(* ORIG_REF_NAME = "dsp_fir_folded" *) 
module design_1_spatial_audio_top_0_0_dsp_fir_folded
   (P,
    pipe_audio_s1,
    accumulator_reg_0,
    accumulator_reg_1,
    clk_audio,
    rst_audio,
    RSTP,
    douta,
    \read_ptr_reg[6]_0 ,
    new_sample,
    \read_ptr_reg[6]_1 ,
    accumulator_reg_2,
    accumulator_reg_3,
    accumulator_reg_4);
  output [23:0]P;
  input pipe_audio_s1;
  input accumulator_reg_0;
  input accumulator_reg_1;
  input clk_audio;
  input rst_audio;
  input RSTP;
  input [15:0]douta;
  input \read_ptr_reg[6]_0 ;
  input new_sample;
  input [6:0]\read_ptr_reg[6]_1 ;
  input [23:0]accumulator_reg_2;
  input accumulator_reg_3;
  input accumulator_reg_4;

  wire [23:0]P;
  wire RSTP;
  wire accumulator_reg_0;
  wire accumulator_reg_1;
  wire [23:0]accumulator_reg_2;
  wire accumulator_reg_3;
  wire accumulator_reg_4;
  wire accumulator_reg_i_10__2_n_0;
  wire accumulator_reg_i_11__2_n_0;
  wire accumulator_reg_i_12__2_n_0;
  wire accumulator_reg_i_13__2_n_0;
  wire accumulator_reg_i_14__2_n_0;
  wire accumulator_reg_i_15__2_n_0;
  wire accumulator_reg_i_16__2_n_0;
  wire accumulator_reg_i_17__2_n_0;
  wire accumulator_reg_i_18__2_n_0;
  wire accumulator_reg_i_19__2_n_0;
  wire accumulator_reg_i_1__1_n_0;
  wire accumulator_reg_i_20__2_n_0;
  wire accumulator_reg_i_21__2_n_0;
  wire accumulator_reg_i_22__2_n_0;
  wire accumulator_reg_i_23__2_n_0;
  wire accumulator_reg_i_24__2_n_0;
  wire accumulator_reg_i_2__1_n_0;
  wire accumulator_reg_i_3__1_n_0;
  wire accumulator_reg_i_4__2_n_0;
  wire accumulator_reg_i_5__2_n_0;
  wire accumulator_reg_i_6__2_n_0;
  wire accumulator_reg_i_7__2_n_0;
  wire accumulator_reg_i_8__2_n_0;
  wire accumulator_reg_i_9__2_n_0;
  wire accumulator_reg_n_100;
  wire accumulator_reg_n_101;
  wire accumulator_reg_n_102;
  wire accumulator_reg_n_103;
  wire accumulator_reg_n_104;
  wire accumulator_reg_n_105;
  wire accumulator_reg_n_58;
  wire accumulator_reg_n_59;
  wire accumulator_reg_n_60;
  wire accumulator_reg_n_61;
  wire accumulator_reg_n_62;
  wire accumulator_reg_n_63;
  wire accumulator_reg_n_64;
  wire accumulator_reg_n_65;
  wire accumulator_reg_n_66;
  wire accumulator_reg_n_91;
  wire accumulator_reg_n_92;
  wire accumulator_reg_n_93;
  wire accumulator_reg_n_94;
  wire accumulator_reg_n_95;
  wire accumulator_reg_n_96;
  wire accumulator_reg_n_97;
  wire accumulator_reg_n_98;
  wire accumulator_reg_n_99;
  wire audio_history_reg_0_63_0_2_n_0;
  wire audio_history_reg_0_63_0_2_n_1;
  wire audio_history_reg_0_63_0_2_n_2;
  wire audio_history_reg_0_63_12_14_n_0;
  wire audio_history_reg_0_63_12_14_n_1;
  wire audio_history_reg_0_63_12_14_n_2;
  wire audio_history_reg_0_63_15_17_n_0;
  wire audio_history_reg_0_63_15_17_n_1;
  wire audio_history_reg_0_63_15_17_n_2;
  wire audio_history_reg_0_63_18_20_n_0;
  wire audio_history_reg_0_63_18_20_n_1;
  wire audio_history_reg_0_63_18_20_n_2;
  wire audio_history_reg_0_63_21_23_n_0;
  wire audio_history_reg_0_63_21_23_n_1;
  wire audio_history_reg_0_63_21_23_n_2;
  wire audio_history_reg_0_63_3_5_n_0;
  wire audio_history_reg_0_63_3_5_n_1;
  wire audio_history_reg_0_63_3_5_n_2;
  wire audio_history_reg_0_63_6_8_n_0;
  wire audio_history_reg_0_63_6_8_n_1;
  wire audio_history_reg_0_63_6_8_n_2;
  wire audio_history_reg_0_63_9_11_n_0;
  wire audio_history_reg_0_63_9_11_n_1;
  wire audio_history_reg_0_63_9_11_n_2;
  wire audio_history_reg_64_127_0_2_n_0;
  wire audio_history_reg_64_127_0_2_n_1;
  wire audio_history_reg_64_127_0_2_n_2;
  wire audio_history_reg_64_127_12_14_n_0;
  wire audio_history_reg_64_127_12_14_n_1;
  wire audio_history_reg_64_127_12_14_n_2;
  wire audio_history_reg_64_127_15_17_n_0;
  wire audio_history_reg_64_127_15_17_n_1;
  wire audio_history_reg_64_127_15_17_n_2;
  wire audio_history_reg_64_127_18_20_n_0;
  wire audio_history_reg_64_127_18_20_n_1;
  wire audio_history_reg_64_127_18_20_n_2;
  wire audio_history_reg_64_127_21_23_n_0;
  wire audio_history_reg_64_127_21_23_n_1;
  wire audio_history_reg_64_127_21_23_n_2;
  wire audio_history_reg_64_127_3_5_n_0;
  wire audio_history_reg_64_127_3_5_n_1;
  wire audio_history_reg_64_127_3_5_n_2;
  wire audio_history_reg_64_127_6_8_n_0;
  wire audio_history_reg_64_127_6_8_n_1;
  wire audio_history_reg_64_127_6_8_n_2;
  wire audio_history_reg_64_127_9_11_n_0;
  wire audio_history_reg_64_127_9_11_n_1;
  wire audio_history_reg_64_127_9_11_n_2;
  wire clk_audio;
  wire [15:0]douta;
  wire new_sample;
  wire pipe_audio_s1;
  wire [6:6]read_ptr;
  wire \read_ptr[0]_i_1__2_n_0 ;
  wire \read_ptr[1]_i_1__2_n_0 ;
  wire \read_ptr[2]_i_1_n_0 ;
  wire \read_ptr[3]_i_1_n_0 ;
  wire \read_ptr[4]_i_1_n_0 ;
  wire \read_ptr[4]_i_2_n_0 ;
  wire \read_ptr[5]_i_1_n_0 ;
  wire \read_ptr[6]_i_1__2_n_0 ;
  wire [5:0]read_ptr_reg;
  wire \read_ptr_reg[6]_0 ;
  wire [6:0]\read_ptr_reg[6]_1 ;
  wire rst_audio;
  wire NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_accumulator_reg_OVERFLOW_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_accumulator_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_accumulator_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_accumulator_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_accumulator_reg_PCOUT_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    accumulator_reg
       (.A({accumulator_reg_i_1__1_n_0,accumulator_reg_i_1__1_n_0,accumulator_reg_i_1__1_n_0,accumulator_reg_i_1__1_n_0,accumulator_reg_i_1__1_n_0,accumulator_reg_i_1__1_n_0,accumulator_reg_i_1__1_n_0,accumulator_reg_i_2__1_n_0,accumulator_reg_i_3__1_n_0,accumulator_reg_i_4__2_n_0,accumulator_reg_i_5__2_n_0,accumulator_reg_i_6__2_n_0,accumulator_reg_i_7__2_n_0,accumulator_reg_i_8__2_n_0,accumulator_reg_i_9__2_n_0,accumulator_reg_i_10__2_n_0,accumulator_reg_i_11__2_n_0,accumulator_reg_i_12__2_n_0,accumulator_reg_i_13__2_n_0,accumulator_reg_i_14__2_n_0,accumulator_reg_i_15__2_n_0,accumulator_reg_i_16__2_n_0,accumulator_reg_i_17__2_n_0,accumulator_reg_i_18__2_n_0,accumulator_reg_i_19__2_n_0,accumulator_reg_i_20__2_n_0,accumulator_reg_i_21__2_n_0,accumulator_reg_i_22__2_n_0,accumulator_reg_i_23__2_n_0,accumulator_reg_i_24__2_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_accumulator_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({douta[15],douta[15],douta}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_accumulator_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_accumulator_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(pipe_audio_s1),
        .CEA2(accumulator_reg_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(accumulator_reg_1),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_accumulator_reg_OVERFLOW_UNCONNECTED),
        .P({accumulator_reg_n_58,accumulator_reg_n_59,accumulator_reg_n_60,accumulator_reg_n_61,accumulator_reg_n_62,accumulator_reg_n_63,accumulator_reg_n_64,accumulator_reg_n_65,accumulator_reg_n_66,P,accumulator_reg_n_91,accumulator_reg_n_92,accumulator_reg_n_93,accumulator_reg_n_94,accumulator_reg_n_95,accumulator_reg_n_96,accumulator_reg_n_97,accumulator_reg_n_98,accumulator_reg_n_99,accumulator_reg_n_100,accumulator_reg_n_101,accumulator_reg_n_102,accumulator_reg_n_103,accumulator_reg_n_104,accumulator_reg_n_105}),
        .PATTERNBDETECT(NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_accumulator_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_accumulator_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_10__2
       (.I0(audio_history_reg_64_127_12_14_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_2),
        .O(accumulator_reg_i_10__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_11__2
       (.I0(audio_history_reg_64_127_12_14_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_1),
        .O(accumulator_reg_i_11__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_12__2
       (.I0(audio_history_reg_64_127_12_14_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_0),
        .O(accumulator_reg_i_12__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_13__2
       (.I0(audio_history_reg_64_127_9_11_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_2),
        .O(accumulator_reg_i_13__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_14__2
       (.I0(audio_history_reg_64_127_9_11_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_1),
        .O(accumulator_reg_i_14__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_15__2
       (.I0(audio_history_reg_64_127_9_11_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_0),
        .O(accumulator_reg_i_15__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_16__2
       (.I0(audio_history_reg_64_127_6_8_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_2),
        .O(accumulator_reg_i_16__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_17__2
       (.I0(audio_history_reg_64_127_6_8_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_1),
        .O(accumulator_reg_i_17__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_18__2
       (.I0(audio_history_reg_64_127_6_8_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_0),
        .O(accumulator_reg_i_18__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_19__2
       (.I0(audio_history_reg_64_127_3_5_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_2),
        .O(accumulator_reg_i_19__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_1__1
       (.I0(audio_history_reg_64_127_21_23_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_2),
        .O(accumulator_reg_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_20__2
       (.I0(audio_history_reg_64_127_3_5_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_1),
        .O(accumulator_reg_i_20__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_21__2
       (.I0(audio_history_reg_64_127_3_5_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_0),
        .O(accumulator_reg_i_21__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_22__2
       (.I0(audio_history_reg_64_127_0_2_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_2),
        .O(accumulator_reg_i_22__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_23__2
       (.I0(audio_history_reg_64_127_0_2_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_1),
        .O(accumulator_reg_i_23__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_24__2
       (.I0(audio_history_reg_64_127_0_2_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_0),
        .O(accumulator_reg_i_24__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_2__1
       (.I0(audio_history_reg_64_127_21_23_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_1),
        .O(accumulator_reg_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_3__1
       (.I0(audio_history_reg_64_127_21_23_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_0),
        .O(accumulator_reg_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_4__2
       (.I0(audio_history_reg_64_127_18_20_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_2),
        .O(accumulator_reg_i_4__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_5__2
       (.I0(audio_history_reg_64_127_18_20_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_1),
        .O(accumulator_reg_i_5__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_6__2
       (.I0(audio_history_reg_64_127_18_20_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_0),
        .O(accumulator_reg_i_6__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_7__2
       (.I0(audio_history_reg_64_127_15_17_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_2),
        .O(accumulator_reg_i_7__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_8__2
       (.I0(audio_history_reg_64_127_15_17_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_1),
        .O(accumulator_reg_i_8__2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_9__2
       (.I0(audio_history_reg_64_127_15_17_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_0),
        .O(accumulator_reg_i_9__2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[0]),
        .DIB(accumulator_reg_2[1]),
        .DIC(accumulator_reg_2[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_0_2_n_0),
        .DOB(audio_history_reg_0_63_0_2_n_1),
        .DOC(audio_history_reg_0_63_0_2_n_2),
        .DOD(NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[12]),
        .DIB(accumulator_reg_2[13]),
        .DIC(accumulator_reg_2[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_12_14_n_0),
        .DOB(audio_history_reg_0_63_12_14_n_1),
        .DOC(audio_history_reg_0_63_12_14_n_2),
        .DOD(NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[15]),
        .DIB(accumulator_reg_2[16]),
        .DIC(accumulator_reg_2[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_15_17_n_0),
        .DOB(audio_history_reg_0_63_15_17_n_1),
        .DOC(audio_history_reg_0_63_15_17_n_2),
        .DOD(NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[18]),
        .DIB(accumulator_reg_2[19]),
        .DIC(accumulator_reg_2[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_18_20_n_0),
        .DOB(audio_history_reg_0_63_18_20_n_1),
        .DOC(audio_history_reg_0_63_18_20_n_2),
        .DOD(NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[21]),
        .DIB(accumulator_reg_2[22]),
        .DIC(accumulator_reg_2[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_21_23_n_0),
        .DOB(audio_history_reg_0_63_21_23_n_1),
        .DOC(audio_history_reg_0_63_21_23_n_2),
        .DOD(NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[3]),
        .DIB(accumulator_reg_2[4]),
        .DIC(accumulator_reg_2[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_3_5_n_0),
        .DOB(audio_history_reg_0_63_3_5_n_1),
        .DOC(audio_history_reg_0_63_3_5_n_2),
        .DOD(NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[6]),
        .DIB(accumulator_reg_2[7]),
        .DIC(accumulator_reg_2[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_6_8_n_0),
        .DOB(audio_history_reg_0_63_6_8_n_1),
        .DOC(audio_history_reg_0_63_6_8_n_2),
        .DOD(NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[9]),
        .DIB(accumulator_reg_2[10]),
        .DIC(accumulator_reg_2[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_9_11_n_0),
        .DOB(audio_history_reg_0_63_9_11_n_1),
        .DOC(audio_history_reg_0_63_9_11_n_2),
        .DOD(NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[0]),
        .DIB(accumulator_reg_2[1]),
        .DIC(accumulator_reg_2[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_0_2_n_0),
        .DOB(audio_history_reg_64_127_0_2_n_1),
        .DOC(audio_history_reg_64_127_0_2_n_2),
        .DOD(NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[12]),
        .DIB(accumulator_reg_2[13]),
        .DIC(accumulator_reg_2[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_12_14_n_0),
        .DOB(audio_history_reg_64_127_12_14_n_1),
        .DOC(audio_history_reg_64_127_12_14_n_2),
        .DOD(NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[15]),
        .DIB(accumulator_reg_2[16]),
        .DIC(accumulator_reg_2[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_15_17_n_0),
        .DOB(audio_history_reg_64_127_15_17_n_1),
        .DOC(audio_history_reg_64_127_15_17_n_2),
        .DOD(NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[18]),
        .DIB(accumulator_reg_2[19]),
        .DIC(accumulator_reg_2[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_18_20_n_0),
        .DOB(audio_history_reg_64_127_18_20_n_1),
        .DOC(audio_history_reg_64_127_18_20_n_2),
        .DOD(NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[21]),
        .DIB(accumulator_reg_2[22]),
        .DIC(accumulator_reg_2[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_21_23_n_0),
        .DOB(audio_history_reg_64_127_21_23_n_1),
        .DOC(audio_history_reg_64_127_21_23_n_2),
        .DOD(NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[3]),
        .DIB(accumulator_reg_2[4]),
        .DIC(accumulator_reg_2[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_3_5_n_0),
        .DOB(audio_history_reg_64_127_3_5_n_1),
        .DOC(audio_history_reg_64_127_3_5_n_2),
        .DOD(NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[6]),
        .DIB(accumulator_reg_2[7]),
        .DIC(accumulator_reg_2[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_6_8_n_0),
        .DOB(audio_history_reg_64_127_6_8_n_1),
        .DOC(audio_history_reg_64_127_6_8_n_2),
        .DOD(NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[9]),
        .DIB(accumulator_reg_2[10]),
        .DIC(accumulator_reg_2[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_9_11_n_0),
        .DOB(audio_history_reg_64_127_9_11_n_1),
        .DOC(audio_history_reg_64_127_9_11_n_2),
        .DOD(NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \read_ptr[0]_i_1__2 
       (.I0(read_ptr_reg[0]),
        .I1(new_sample),
        .I2(\read_ptr_reg[6]_1 [0]),
        .O(\read_ptr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[1]_i_1__2 
       (.I0(read_ptr_reg[0]),
        .I1(read_ptr_reg[1]),
        .I2(new_sample),
        .I3(\read_ptr_reg[6]_1 [1]),
        .O(\read_ptr[1]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[2]_i_1 
       (.I0(read_ptr_reg[1]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[2]),
        .I3(new_sample),
        .I4(\read_ptr_reg[6]_1 [2]),
        .O(\read_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[3]_i_1 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .I4(new_sample),
        .I5(\read_ptr_reg[6]_1 [3]),
        .O(\read_ptr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[4]_i_1 
       (.I0(\read_ptr[4]_i_2_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(new_sample),
        .I3(\read_ptr_reg[6]_1 [4]),
        .O(\read_ptr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \read_ptr[4]_i_2 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .O(\read_ptr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[5]_i_1 
       (.I0(read_ptr_reg[4]),
        .I1(\read_ptr[4]_i_2_n_0 ),
        .I2(read_ptr_reg[5]),
        .I3(new_sample),
        .I4(\read_ptr_reg[6]_1 [5]),
        .O(\read_ptr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[6]_i_1__2 
       (.I0(\read_ptr[4]_i_2_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(read_ptr_reg[5]),
        .I3(read_ptr),
        .I4(new_sample),
        .I5(\read_ptr_reg[6]_1 [6]),
        .O(\read_ptr[6]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[0]_i_1__2_n_0 ),
        .Q(read_ptr_reg[0]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[1]_i_1__2_n_0 ),
        .Q(read_ptr_reg[1]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[2]_i_1_n_0 ),
        .Q(read_ptr_reg[2]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[3] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[3]_i_1_n_0 ),
        .Q(read_ptr_reg[3]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[4] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[4]_i_1_n_0 ),
        .Q(read_ptr_reg[4]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[5] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[5]_i_1_n_0 ),
        .Q(read_ptr_reg[5]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[6] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[6]_i_1__2_n_0 ),
        .Q(read_ptr),
        .R(rst_audio));
endmodule

(* ORIG_REF_NAME = "dsp_fir_folded" *) 
module design_1_spatial_audio_top_0_0_dsp_fir_folded_2
   (P,
    pipe_audio_s1,
    accumulator_reg_0,
    accumulator_reg_1,
    clk_audio,
    rst_audio,
    RSTP,
    doutb,
    \read_ptr_reg[6]_0 ,
    new_sample,
    \read_ptr_reg[6]_1 ,
    accumulator_reg_2,
    accumulator_reg_3,
    accumulator_reg_4);
  output [23:0]P;
  input pipe_audio_s1;
  input accumulator_reg_0;
  input accumulator_reg_1;
  input clk_audio;
  input rst_audio;
  input RSTP;
  input [15:0]doutb;
  input \read_ptr_reg[6]_0 ;
  input new_sample;
  input [6:0]\read_ptr_reg[6]_1 ;
  input [23:0]accumulator_reg_2;
  input accumulator_reg_3;
  input accumulator_reg_4;

  wire [23:0]P;
  wire RSTP;
  wire accumulator_reg_0;
  wire accumulator_reg_1;
  wire [23:0]accumulator_reg_2;
  wire accumulator_reg_3;
  wire accumulator_reg_4;
  wire accumulator_reg_i_10__1_n_0;
  wire accumulator_reg_i_11__1_n_0;
  wire accumulator_reg_i_12__1_n_0;
  wire accumulator_reg_i_13__1_n_0;
  wire accumulator_reg_i_14__1_n_0;
  wire accumulator_reg_i_15__1_n_0;
  wire accumulator_reg_i_16__1_n_0;
  wire accumulator_reg_i_17__1_n_0;
  wire accumulator_reg_i_18__1_n_0;
  wire accumulator_reg_i_19__1_n_0;
  wire accumulator_reg_i_1__0_n_0;
  wire accumulator_reg_i_20__1_n_0;
  wire accumulator_reg_i_21__1_n_0;
  wire accumulator_reg_i_22__1_n_0;
  wire accumulator_reg_i_23__1_n_0;
  wire accumulator_reg_i_24__1_n_0;
  wire accumulator_reg_i_2__0_n_0;
  wire accumulator_reg_i_3__0_n_0;
  wire accumulator_reg_i_4__1_n_0;
  wire accumulator_reg_i_5__1_n_0;
  wire accumulator_reg_i_6__1_n_0;
  wire accumulator_reg_i_7__1_n_0;
  wire accumulator_reg_i_8__1_n_0;
  wire accumulator_reg_i_9__1_n_0;
  wire accumulator_reg_n_100;
  wire accumulator_reg_n_101;
  wire accumulator_reg_n_102;
  wire accumulator_reg_n_103;
  wire accumulator_reg_n_104;
  wire accumulator_reg_n_105;
  wire accumulator_reg_n_58;
  wire accumulator_reg_n_59;
  wire accumulator_reg_n_60;
  wire accumulator_reg_n_61;
  wire accumulator_reg_n_62;
  wire accumulator_reg_n_63;
  wire accumulator_reg_n_64;
  wire accumulator_reg_n_65;
  wire accumulator_reg_n_66;
  wire accumulator_reg_n_91;
  wire accumulator_reg_n_92;
  wire accumulator_reg_n_93;
  wire accumulator_reg_n_94;
  wire accumulator_reg_n_95;
  wire accumulator_reg_n_96;
  wire accumulator_reg_n_97;
  wire accumulator_reg_n_98;
  wire accumulator_reg_n_99;
  wire audio_history_reg_0_63_0_2_n_0;
  wire audio_history_reg_0_63_0_2_n_1;
  wire audio_history_reg_0_63_0_2_n_2;
  wire audio_history_reg_0_63_12_14_n_0;
  wire audio_history_reg_0_63_12_14_n_1;
  wire audio_history_reg_0_63_12_14_n_2;
  wire audio_history_reg_0_63_15_17_n_0;
  wire audio_history_reg_0_63_15_17_n_1;
  wire audio_history_reg_0_63_15_17_n_2;
  wire audio_history_reg_0_63_18_20_n_0;
  wire audio_history_reg_0_63_18_20_n_1;
  wire audio_history_reg_0_63_18_20_n_2;
  wire audio_history_reg_0_63_21_23_n_0;
  wire audio_history_reg_0_63_21_23_n_1;
  wire audio_history_reg_0_63_21_23_n_2;
  wire audio_history_reg_0_63_3_5_n_0;
  wire audio_history_reg_0_63_3_5_n_1;
  wire audio_history_reg_0_63_3_5_n_2;
  wire audio_history_reg_0_63_6_8_n_0;
  wire audio_history_reg_0_63_6_8_n_1;
  wire audio_history_reg_0_63_6_8_n_2;
  wire audio_history_reg_0_63_9_11_n_0;
  wire audio_history_reg_0_63_9_11_n_1;
  wire audio_history_reg_0_63_9_11_n_2;
  wire audio_history_reg_64_127_0_2_n_0;
  wire audio_history_reg_64_127_0_2_n_1;
  wire audio_history_reg_64_127_0_2_n_2;
  wire audio_history_reg_64_127_12_14_n_0;
  wire audio_history_reg_64_127_12_14_n_1;
  wire audio_history_reg_64_127_12_14_n_2;
  wire audio_history_reg_64_127_15_17_n_0;
  wire audio_history_reg_64_127_15_17_n_1;
  wire audio_history_reg_64_127_15_17_n_2;
  wire audio_history_reg_64_127_18_20_n_0;
  wire audio_history_reg_64_127_18_20_n_1;
  wire audio_history_reg_64_127_18_20_n_2;
  wire audio_history_reg_64_127_21_23_n_0;
  wire audio_history_reg_64_127_21_23_n_1;
  wire audio_history_reg_64_127_21_23_n_2;
  wire audio_history_reg_64_127_3_5_n_0;
  wire audio_history_reg_64_127_3_5_n_1;
  wire audio_history_reg_64_127_3_5_n_2;
  wire audio_history_reg_64_127_6_8_n_0;
  wire audio_history_reg_64_127_6_8_n_1;
  wire audio_history_reg_64_127_6_8_n_2;
  wire audio_history_reg_64_127_9_11_n_0;
  wire audio_history_reg_64_127_9_11_n_1;
  wire audio_history_reg_64_127_9_11_n_2;
  wire clk_audio;
  wire [15:0]doutb;
  wire new_sample;
  wire pipe_audio_s1;
  wire [6:6]read_ptr;
  wire \read_ptr[0]_i_1__0_n_0 ;
  wire \read_ptr[1]_i_1__0_n_0 ;
  wire \read_ptr[2]_i_1__1_n_0 ;
  wire \read_ptr[3]_i_1__1_n_0 ;
  wire \read_ptr[4]_i_1__1_n_0 ;
  wire \read_ptr[4]_i_2__1_n_0 ;
  wire \read_ptr[5]_i_1__1_n_0 ;
  wire \read_ptr[6]_i_1__0_n_0 ;
  wire [5:0]read_ptr_reg;
  wire \read_ptr_reg[6]_0 ;
  wire [6:0]\read_ptr_reg[6]_1 ;
  wire rst_audio;
  wire NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_accumulator_reg_OVERFLOW_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_accumulator_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_accumulator_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_accumulator_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_accumulator_reg_PCOUT_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    accumulator_reg
       (.A({accumulator_reg_i_1__0_n_0,accumulator_reg_i_1__0_n_0,accumulator_reg_i_1__0_n_0,accumulator_reg_i_1__0_n_0,accumulator_reg_i_1__0_n_0,accumulator_reg_i_1__0_n_0,accumulator_reg_i_1__0_n_0,accumulator_reg_i_2__0_n_0,accumulator_reg_i_3__0_n_0,accumulator_reg_i_4__1_n_0,accumulator_reg_i_5__1_n_0,accumulator_reg_i_6__1_n_0,accumulator_reg_i_7__1_n_0,accumulator_reg_i_8__1_n_0,accumulator_reg_i_9__1_n_0,accumulator_reg_i_10__1_n_0,accumulator_reg_i_11__1_n_0,accumulator_reg_i_12__1_n_0,accumulator_reg_i_13__1_n_0,accumulator_reg_i_14__1_n_0,accumulator_reg_i_15__1_n_0,accumulator_reg_i_16__1_n_0,accumulator_reg_i_17__1_n_0,accumulator_reg_i_18__1_n_0,accumulator_reg_i_19__1_n_0,accumulator_reg_i_20__1_n_0,accumulator_reg_i_21__1_n_0,accumulator_reg_i_22__1_n_0,accumulator_reg_i_23__1_n_0,accumulator_reg_i_24__1_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_accumulator_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({doutb[15],doutb[15],doutb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_accumulator_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_accumulator_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(pipe_audio_s1),
        .CEA2(accumulator_reg_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(accumulator_reg_1),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_accumulator_reg_OVERFLOW_UNCONNECTED),
        .P({accumulator_reg_n_58,accumulator_reg_n_59,accumulator_reg_n_60,accumulator_reg_n_61,accumulator_reg_n_62,accumulator_reg_n_63,accumulator_reg_n_64,accumulator_reg_n_65,accumulator_reg_n_66,P,accumulator_reg_n_91,accumulator_reg_n_92,accumulator_reg_n_93,accumulator_reg_n_94,accumulator_reg_n_95,accumulator_reg_n_96,accumulator_reg_n_97,accumulator_reg_n_98,accumulator_reg_n_99,accumulator_reg_n_100,accumulator_reg_n_101,accumulator_reg_n_102,accumulator_reg_n_103,accumulator_reg_n_104,accumulator_reg_n_105}),
        .PATTERNBDETECT(NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_accumulator_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_accumulator_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_10__1
       (.I0(audio_history_reg_64_127_12_14_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_2),
        .O(accumulator_reg_i_10__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_11__1
       (.I0(audio_history_reg_64_127_12_14_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_1),
        .O(accumulator_reg_i_11__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_12__1
       (.I0(audio_history_reg_64_127_12_14_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_0),
        .O(accumulator_reg_i_12__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_13__1
       (.I0(audio_history_reg_64_127_9_11_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_2),
        .O(accumulator_reg_i_13__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_14__1
       (.I0(audio_history_reg_64_127_9_11_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_1),
        .O(accumulator_reg_i_14__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_15__1
       (.I0(audio_history_reg_64_127_9_11_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_0),
        .O(accumulator_reg_i_15__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_16__1
       (.I0(audio_history_reg_64_127_6_8_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_2),
        .O(accumulator_reg_i_16__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_17__1
       (.I0(audio_history_reg_64_127_6_8_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_1),
        .O(accumulator_reg_i_17__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_18__1
       (.I0(audio_history_reg_64_127_6_8_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_0),
        .O(accumulator_reg_i_18__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_19__1
       (.I0(audio_history_reg_64_127_3_5_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_2),
        .O(accumulator_reg_i_19__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_1__0
       (.I0(audio_history_reg_64_127_21_23_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_2),
        .O(accumulator_reg_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_20__1
       (.I0(audio_history_reg_64_127_3_5_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_1),
        .O(accumulator_reg_i_20__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_21__1
       (.I0(audio_history_reg_64_127_3_5_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_0),
        .O(accumulator_reg_i_21__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_22__1
       (.I0(audio_history_reg_64_127_0_2_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_2),
        .O(accumulator_reg_i_22__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_23__1
       (.I0(audio_history_reg_64_127_0_2_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_1),
        .O(accumulator_reg_i_23__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_24__1
       (.I0(audio_history_reg_64_127_0_2_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_0),
        .O(accumulator_reg_i_24__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_2__0
       (.I0(audio_history_reg_64_127_21_23_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_1),
        .O(accumulator_reg_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_3__0
       (.I0(audio_history_reg_64_127_21_23_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_0),
        .O(accumulator_reg_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_4__1
       (.I0(audio_history_reg_64_127_18_20_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_2),
        .O(accumulator_reg_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_5__1
       (.I0(audio_history_reg_64_127_18_20_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_1),
        .O(accumulator_reg_i_5__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_6__1
       (.I0(audio_history_reg_64_127_18_20_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_0),
        .O(accumulator_reg_i_6__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_7__1
       (.I0(audio_history_reg_64_127_15_17_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_2),
        .O(accumulator_reg_i_7__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_8__1
       (.I0(audio_history_reg_64_127_15_17_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_1),
        .O(accumulator_reg_i_8__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_9__1
       (.I0(audio_history_reg_64_127_15_17_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_0),
        .O(accumulator_reg_i_9__1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[0]),
        .DIB(accumulator_reg_2[1]),
        .DIC(accumulator_reg_2[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_0_2_n_0),
        .DOB(audio_history_reg_0_63_0_2_n_1),
        .DOC(audio_history_reg_0_63_0_2_n_2),
        .DOD(NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[12]),
        .DIB(accumulator_reg_2[13]),
        .DIC(accumulator_reg_2[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_12_14_n_0),
        .DOB(audio_history_reg_0_63_12_14_n_1),
        .DOC(audio_history_reg_0_63_12_14_n_2),
        .DOD(NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[15]),
        .DIB(accumulator_reg_2[16]),
        .DIC(accumulator_reg_2[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_15_17_n_0),
        .DOB(audio_history_reg_0_63_15_17_n_1),
        .DOC(audio_history_reg_0_63_15_17_n_2),
        .DOD(NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[18]),
        .DIB(accumulator_reg_2[19]),
        .DIC(accumulator_reg_2[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_18_20_n_0),
        .DOB(audio_history_reg_0_63_18_20_n_1),
        .DOC(audio_history_reg_0_63_18_20_n_2),
        .DOD(NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[21]),
        .DIB(accumulator_reg_2[22]),
        .DIC(accumulator_reg_2[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_21_23_n_0),
        .DOB(audio_history_reg_0_63_21_23_n_1),
        .DOC(audio_history_reg_0_63_21_23_n_2),
        .DOD(NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[3]),
        .DIB(accumulator_reg_2[4]),
        .DIC(accumulator_reg_2[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_3_5_n_0),
        .DOB(audio_history_reg_0_63_3_5_n_1),
        .DOC(audio_history_reg_0_63_3_5_n_2),
        .DOD(NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[6]),
        .DIB(accumulator_reg_2[7]),
        .DIC(accumulator_reg_2[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_6_8_n_0),
        .DOB(audio_history_reg_0_63_6_8_n_1),
        .DOC(audio_history_reg_0_63_6_8_n_2),
        .DOD(NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[9]),
        .DIB(accumulator_reg_2[10]),
        .DIC(accumulator_reg_2[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_9_11_n_0),
        .DOB(audio_history_reg_0_63_9_11_n_1),
        .DOC(audio_history_reg_0_63_9_11_n_2),
        .DOD(NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[0]),
        .DIB(accumulator_reg_2[1]),
        .DIC(accumulator_reg_2[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_0_2_n_0),
        .DOB(audio_history_reg_64_127_0_2_n_1),
        .DOC(audio_history_reg_64_127_0_2_n_2),
        .DOD(NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[12]),
        .DIB(accumulator_reg_2[13]),
        .DIC(accumulator_reg_2[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_12_14_n_0),
        .DOB(audio_history_reg_64_127_12_14_n_1),
        .DOC(audio_history_reg_64_127_12_14_n_2),
        .DOD(NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[15]),
        .DIB(accumulator_reg_2[16]),
        .DIC(accumulator_reg_2[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_15_17_n_0),
        .DOB(audio_history_reg_64_127_15_17_n_1),
        .DOC(audio_history_reg_64_127_15_17_n_2),
        .DOD(NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[18]),
        .DIB(accumulator_reg_2[19]),
        .DIC(accumulator_reg_2[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_18_20_n_0),
        .DOB(audio_history_reg_64_127_18_20_n_1),
        .DOC(audio_history_reg_64_127_18_20_n_2),
        .DOD(NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[21]),
        .DIB(accumulator_reg_2[22]),
        .DIC(accumulator_reg_2[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_21_23_n_0),
        .DOB(audio_history_reg_64_127_21_23_n_1),
        .DOC(audio_history_reg_64_127_21_23_n_2),
        .DOD(NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[3]),
        .DIB(accumulator_reg_2[4]),
        .DIC(accumulator_reg_2[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_3_5_n_0),
        .DOB(audio_history_reg_64_127_3_5_n_1),
        .DOC(audio_history_reg_64_127_3_5_n_2),
        .DOD(NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[6]),
        .DIB(accumulator_reg_2[7]),
        .DIC(accumulator_reg_2[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_6_8_n_0),
        .DOB(audio_history_reg_64_127_6_8_n_1),
        .DOC(audio_history_reg_64_127_6_8_n_2),
        .DOD(NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(\read_ptr_reg[6]_1 [5:0]),
        .DIA(accumulator_reg_2[9]),
        .DIB(accumulator_reg_2[10]),
        .DIC(accumulator_reg_2[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_9_11_n_0),
        .DOB(audio_history_reg_64_127_9_11_n_1),
        .DOC(audio_history_reg_64_127_9_11_n_2),
        .DOD(NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \read_ptr[0]_i_1__0 
       (.I0(read_ptr_reg[0]),
        .I1(new_sample),
        .I2(\read_ptr_reg[6]_1 [0]),
        .O(\read_ptr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[1]_i_1__0 
       (.I0(read_ptr_reg[0]),
        .I1(read_ptr_reg[1]),
        .I2(new_sample),
        .I3(\read_ptr_reg[6]_1 [1]),
        .O(\read_ptr[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[2]_i_1__1 
       (.I0(read_ptr_reg[1]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[2]),
        .I3(new_sample),
        .I4(\read_ptr_reg[6]_1 [2]),
        .O(\read_ptr[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[3]_i_1__1 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .I4(new_sample),
        .I5(\read_ptr_reg[6]_1 [3]),
        .O(\read_ptr[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[4]_i_1__1 
       (.I0(\read_ptr[4]_i_2__1_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(new_sample),
        .I3(\read_ptr_reg[6]_1 [4]),
        .O(\read_ptr[4]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \read_ptr[4]_i_2__1 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .O(\read_ptr[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[5]_i_1__1 
       (.I0(read_ptr_reg[4]),
        .I1(\read_ptr[4]_i_2__1_n_0 ),
        .I2(read_ptr_reg[5]),
        .I3(new_sample),
        .I4(\read_ptr_reg[6]_1 [5]),
        .O(\read_ptr[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[6]_i_1__0 
       (.I0(\read_ptr[4]_i_2__1_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(read_ptr_reg[5]),
        .I3(read_ptr),
        .I4(new_sample),
        .I5(\read_ptr_reg[6]_1 [6]),
        .O(\read_ptr[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[0]_i_1__0_n_0 ),
        .Q(read_ptr_reg[0]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[1]_i_1__0_n_0 ),
        .Q(read_ptr_reg[1]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[2]_i_1__1_n_0 ),
        .Q(read_ptr_reg[2]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[3] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[3]_i_1__1_n_0 ),
        .Q(read_ptr_reg[3]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[4] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[4]_i_1__1_n_0 ),
        .Q(read_ptr_reg[4]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[5] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[5]_i_1__1_n_0 ),
        .Q(read_ptr_reg[5]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[6] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[6]_i_1__0_n_0 ),
        .Q(read_ptr),
        .R(rst_audio));
endmodule

(* ORIG_REF_NAME = "dsp_fir_folded" *) 
module design_1_spatial_audio_top_0_0_dsp_fir_folded_3
   (P,
    pipe_valid_s2_reg_0,
    Q,
    pipe_audio_s1,
    accumulator_reg_0,
    clk_audio,
    rst_audio,
    RSTP,
    douta,
    \read_ptr_reg[6]_0 ,
    pipe_valid_s1_reg_0,
    new_sample,
    locked,
    accumulator_reg_1,
    accumulator_reg_2,
    accumulator_reg_3);
  output [23:0]P;
  output pipe_valid_s2_reg_0;
  output [6:0]Q;
  input pipe_audio_s1;
  input accumulator_reg_0;
  input clk_audio;
  input rst_audio;
  input RSTP;
  input [15:0]douta;
  input \read_ptr_reg[6]_0 ;
  input pipe_valid_s1_reg_0;
  input new_sample;
  input locked;
  input [23:0]accumulator_reg_1;
  input accumulator_reg_2;
  input accumulator_reg_3;

  wire [23:0]P;
  wire [6:0]Q;
  wire RSTP;
  wire accumulator_reg_0;
  wire [23:0]accumulator_reg_1;
  wire accumulator_reg_2;
  wire accumulator_reg_3;
  wire accumulator_reg_n_100;
  wire accumulator_reg_n_101;
  wire accumulator_reg_n_102;
  wire accumulator_reg_n_103;
  wire accumulator_reg_n_104;
  wire accumulator_reg_n_105;
  wire accumulator_reg_n_58;
  wire accumulator_reg_n_59;
  wire accumulator_reg_n_60;
  wire accumulator_reg_n_61;
  wire accumulator_reg_n_62;
  wire accumulator_reg_n_63;
  wire accumulator_reg_n_64;
  wire accumulator_reg_n_65;
  wire accumulator_reg_n_66;
  wire accumulator_reg_n_91;
  wire accumulator_reg_n_92;
  wire accumulator_reg_n_93;
  wire accumulator_reg_n_94;
  wire accumulator_reg_n_95;
  wire accumulator_reg_n_96;
  wire accumulator_reg_n_97;
  wire accumulator_reg_n_98;
  wire accumulator_reg_n_99;
  wire audio_history_reg_0_63_0_2_n_0;
  wire audio_history_reg_0_63_0_2_n_1;
  wire audio_history_reg_0_63_0_2_n_2;
  wire audio_history_reg_0_63_12_14_n_0;
  wire audio_history_reg_0_63_12_14_n_1;
  wire audio_history_reg_0_63_12_14_n_2;
  wire audio_history_reg_0_63_15_17_n_0;
  wire audio_history_reg_0_63_15_17_n_1;
  wire audio_history_reg_0_63_15_17_n_2;
  wire audio_history_reg_0_63_18_20_n_0;
  wire audio_history_reg_0_63_18_20_n_1;
  wire audio_history_reg_0_63_18_20_n_2;
  wire audio_history_reg_0_63_21_23_n_0;
  wire audio_history_reg_0_63_21_23_n_1;
  wire audio_history_reg_0_63_21_23_n_2;
  wire audio_history_reg_0_63_3_5_n_0;
  wire audio_history_reg_0_63_3_5_n_1;
  wire audio_history_reg_0_63_3_5_n_2;
  wire audio_history_reg_0_63_6_8_n_0;
  wire audio_history_reg_0_63_6_8_n_1;
  wire audio_history_reg_0_63_6_8_n_2;
  wire audio_history_reg_0_63_9_11_n_0;
  wire audio_history_reg_0_63_9_11_n_1;
  wire audio_history_reg_0_63_9_11_n_2;
  wire audio_history_reg_64_127_0_2_n_0;
  wire audio_history_reg_64_127_0_2_n_1;
  wire audio_history_reg_64_127_0_2_n_2;
  wire audio_history_reg_64_127_12_14_n_0;
  wire audio_history_reg_64_127_12_14_n_1;
  wire audio_history_reg_64_127_12_14_n_2;
  wire audio_history_reg_64_127_15_17_n_0;
  wire audio_history_reg_64_127_15_17_n_1;
  wire audio_history_reg_64_127_15_17_n_2;
  wire audio_history_reg_64_127_18_20_n_0;
  wire audio_history_reg_64_127_18_20_n_1;
  wire audio_history_reg_64_127_18_20_n_2;
  wire audio_history_reg_64_127_21_23_n_0;
  wire audio_history_reg_64_127_21_23_n_1;
  wire audio_history_reg_64_127_21_23_n_2;
  wire audio_history_reg_64_127_3_5_n_0;
  wire audio_history_reg_64_127_3_5_n_1;
  wire audio_history_reg_64_127_3_5_n_2;
  wire audio_history_reg_64_127_6_8_n_0;
  wire audio_history_reg_64_127_6_8_n_1;
  wire audio_history_reg_64_127_6_8_n_2;
  wire audio_history_reg_64_127_9_11_n_0;
  wire audio_history_reg_64_127_9_11_n_1;
  wire audio_history_reg_64_127_9_11_n_2;
  wire clk_audio;
  wire [15:0]douta;
  wire locked;
  wire new_sample;
  wire [6:0]p_0_in__4;
  wire pipe_audio_s1;
  wire [23:0]pipe_audio_s10;
  wire pipe_valid_s1;
  wire pipe_valid_s1_reg_0;
  wire pipe_valid_s2_i_1_n_0;
  wire pipe_valid_s2_reg_0;
  wire [6:6]read_ptr;
  wire \read_ptr[0]_i_1__1_n_0 ;
  wire \read_ptr[1]_i_1__1_n_0 ;
  wire \read_ptr[2]_i_1__2_n_0 ;
  wire \read_ptr[3]_i_1__2_n_0 ;
  wire \read_ptr[4]_i_1__2_n_0 ;
  wire \read_ptr[4]_i_2__0_n_0 ;
  wire \read_ptr[5]_i_1__2_n_0 ;
  wire \read_ptr[6]_i_1__1_n_0 ;
  wire [5:0]read_ptr_reg;
  wire \read_ptr_reg[6]_0 ;
  wire rst_audio;
  wire \write_ptr[6]_i_2_n_0 ;
  wire NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_accumulator_reg_OVERFLOW_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_accumulator_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_accumulator_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_accumulator_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_accumulator_reg_PCOUT_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    accumulator_reg
       (.A({pipe_audio_s10[23],pipe_audio_s10[23],pipe_audio_s10[23],pipe_audio_s10[23],pipe_audio_s10[23],pipe_audio_s10[23],pipe_audio_s10}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_accumulator_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({douta[15],douta[15],douta}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_accumulator_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_accumulator_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(pipe_audio_s1),
        .CEA2(accumulator_reg_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(pipe_valid_s2_reg_0),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_accumulator_reg_OVERFLOW_UNCONNECTED),
        .P({accumulator_reg_n_58,accumulator_reg_n_59,accumulator_reg_n_60,accumulator_reg_n_61,accumulator_reg_n_62,accumulator_reg_n_63,accumulator_reg_n_64,accumulator_reg_n_65,accumulator_reg_n_66,P,accumulator_reg_n_91,accumulator_reg_n_92,accumulator_reg_n_93,accumulator_reg_n_94,accumulator_reg_n_95,accumulator_reg_n_96,accumulator_reg_n_97,accumulator_reg_n_98,accumulator_reg_n_99,accumulator_reg_n_100,accumulator_reg_n_101,accumulator_reg_n_102,accumulator_reg_n_103,accumulator_reg_n_104,accumulator_reg_n_105}),
        .PATTERNBDETECT(NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_accumulator_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_accumulator_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_1
       (.I0(audio_history_reg_64_127_21_23_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_2),
        .O(pipe_audio_s10[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_10__0
       (.I0(audio_history_reg_64_127_12_14_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_2),
        .O(pipe_audio_s10[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_11__0
       (.I0(audio_history_reg_64_127_12_14_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_1),
        .O(pipe_audio_s10[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_12__0
       (.I0(audio_history_reg_64_127_12_14_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_0),
        .O(pipe_audio_s10[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_13__0
       (.I0(audio_history_reg_64_127_9_11_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_2),
        .O(pipe_audio_s10[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_14__0
       (.I0(audio_history_reg_64_127_9_11_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_1),
        .O(pipe_audio_s10[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_15__0
       (.I0(audio_history_reg_64_127_9_11_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_0),
        .O(pipe_audio_s10[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_16__0
       (.I0(audio_history_reg_64_127_6_8_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_2),
        .O(pipe_audio_s10[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_17__0
       (.I0(audio_history_reg_64_127_6_8_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_1),
        .O(pipe_audio_s10[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_18__0
       (.I0(audio_history_reg_64_127_6_8_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_0),
        .O(pipe_audio_s10[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_19__0
       (.I0(audio_history_reg_64_127_3_5_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_2),
        .O(pipe_audio_s10[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_2
       (.I0(audio_history_reg_64_127_21_23_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_1),
        .O(pipe_audio_s10[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_20__0
       (.I0(audio_history_reg_64_127_3_5_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_1),
        .O(pipe_audio_s10[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_21__0
       (.I0(audio_history_reg_64_127_3_5_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_0),
        .O(pipe_audio_s10[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_22__0
       (.I0(audio_history_reg_64_127_0_2_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_2),
        .O(pipe_audio_s10[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_23__0
       (.I0(audio_history_reg_64_127_0_2_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_1),
        .O(pipe_audio_s10[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_24__0
       (.I0(audio_history_reg_64_127_0_2_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_0),
        .O(pipe_audio_s10[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_3
       (.I0(audio_history_reg_64_127_21_23_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_0),
        .O(pipe_audio_s10[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_4__0
       (.I0(audio_history_reg_64_127_18_20_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_2),
        .O(pipe_audio_s10[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_5__0
       (.I0(audio_history_reg_64_127_18_20_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_1),
        .O(pipe_audio_s10[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_6__0
       (.I0(audio_history_reg_64_127_18_20_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_0),
        .O(pipe_audio_s10[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_7__0
       (.I0(audio_history_reg_64_127_15_17_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_2),
        .O(pipe_audio_s10[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_8__0
       (.I0(audio_history_reg_64_127_15_17_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_1),
        .O(pipe_audio_s10[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_9__0
       (.I0(audio_history_reg_64_127_15_17_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_0),
        .O(pipe_audio_s10[15]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[0]),
        .DIB(accumulator_reg_1[1]),
        .DIC(accumulator_reg_1[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_0_2_n_0),
        .DOB(audio_history_reg_0_63_0_2_n_1),
        .DOC(audio_history_reg_0_63_0_2_n_2),
        .DOD(NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[12]),
        .DIB(accumulator_reg_1[13]),
        .DIC(accumulator_reg_1[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_12_14_n_0),
        .DOB(audio_history_reg_0_63_12_14_n_1),
        .DOC(audio_history_reg_0_63_12_14_n_2),
        .DOD(NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[15]),
        .DIB(accumulator_reg_1[16]),
        .DIC(accumulator_reg_1[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_15_17_n_0),
        .DOB(audio_history_reg_0_63_15_17_n_1),
        .DOC(audio_history_reg_0_63_15_17_n_2),
        .DOD(NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[18]),
        .DIB(accumulator_reg_1[19]),
        .DIC(accumulator_reg_1[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_18_20_n_0),
        .DOB(audio_history_reg_0_63_18_20_n_1),
        .DOC(audio_history_reg_0_63_18_20_n_2),
        .DOD(NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[21]),
        .DIB(accumulator_reg_1[22]),
        .DIC(accumulator_reg_1[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_21_23_n_0),
        .DOB(audio_history_reg_0_63_21_23_n_1),
        .DOC(audio_history_reg_0_63_21_23_n_2),
        .DOD(NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[3]),
        .DIB(accumulator_reg_1[4]),
        .DIC(accumulator_reg_1[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_3_5_n_0),
        .DOB(audio_history_reg_0_63_3_5_n_1),
        .DOC(audio_history_reg_0_63_3_5_n_2),
        .DOD(NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[6]),
        .DIB(accumulator_reg_1[7]),
        .DIC(accumulator_reg_1[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_6_8_n_0),
        .DOB(audio_history_reg_0_63_6_8_n_1),
        .DOC(audio_history_reg_0_63_6_8_n_2),
        .DOD(NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[9]),
        .DIB(accumulator_reg_1[10]),
        .DIC(accumulator_reg_1[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_9_11_n_0),
        .DOB(audio_history_reg_0_63_9_11_n_1),
        .DOC(audio_history_reg_0_63_9_11_n_2),
        .DOD(NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[0]),
        .DIB(accumulator_reg_1[1]),
        .DIC(accumulator_reg_1[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_0_2_n_0),
        .DOB(audio_history_reg_64_127_0_2_n_1),
        .DOC(audio_history_reg_64_127_0_2_n_2),
        .DOD(NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[12]),
        .DIB(accumulator_reg_1[13]),
        .DIC(accumulator_reg_1[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_12_14_n_0),
        .DOB(audio_history_reg_64_127_12_14_n_1),
        .DOC(audio_history_reg_64_127_12_14_n_2),
        .DOD(NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[15]),
        .DIB(accumulator_reg_1[16]),
        .DIC(accumulator_reg_1[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_15_17_n_0),
        .DOB(audio_history_reg_64_127_15_17_n_1),
        .DOC(audio_history_reg_64_127_15_17_n_2),
        .DOD(NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[18]),
        .DIB(accumulator_reg_1[19]),
        .DIC(accumulator_reg_1[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_18_20_n_0),
        .DOB(audio_history_reg_64_127_18_20_n_1),
        .DOC(audio_history_reg_64_127_18_20_n_2),
        .DOD(NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[21]),
        .DIB(accumulator_reg_1[22]),
        .DIC(accumulator_reg_1[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_21_23_n_0),
        .DOB(audio_history_reg_64_127_21_23_n_1),
        .DOC(audio_history_reg_64_127_21_23_n_2),
        .DOD(NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[3]),
        .DIB(accumulator_reg_1[4]),
        .DIC(accumulator_reg_1[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_3_5_n_0),
        .DOB(audio_history_reg_64_127_3_5_n_1),
        .DOC(audio_history_reg_64_127_3_5_n_2),
        .DOD(NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[6]),
        .DIB(accumulator_reg_1[7]),
        .DIC(accumulator_reg_1[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_6_8_n_0),
        .DOB(audio_history_reg_64_127_6_8_n_1),
        .DOC(audio_history_reg_64_127_6_8_n_2),
        .DOD(NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_1[9]),
        .DIB(accumulator_reg_1[10]),
        .DIC(accumulator_reg_1[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_9_11_n_0),
        .DOB(audio_history_reg_64_127_9_11_n_1),
        .DOC(audio_history_reg_64_127_9_11_n_2),
        .DOD(NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  FDRE pipe_valid_s1_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(pipe_valid_s1_reg_0),
        .Q(pipe_valid_s1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    pipe_valid_s2_i_1
       (.I0(pipe_valid_s1),
        .I1(locked),
        .I2(new_sample),
        .O(pipe_valid_s2_i_1_n_0));
  FDRE pipe_valid_s2_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(pipe_valid_s2_i_1_n_0),
        .Q(pipe_valid_s2_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \read_ptr[0]_i_1__1 
       (.I0(read_ptr_reg[0]),
        .I1(new_sample),
        .I2(Q[0]),
        .O(\read_ptr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[1]_i_1__1 
       (.I0(read_ptr_reg[0]),
        .I1(read_ptr_reg[1]),
        .I2(new_sample),
        .I3(Q[1]),
        .O(\read_ptr[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[2]_i_1__2 
       (.I0(read_ptr_reg[1]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[2]),
        .I3(new_sample),
        .I4(Q[2]),
        .O(\read_ptr[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[3]_i_1__2 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .I4(new_sample),
        .I5(Q[3]),
        .O(\read_ptr[3]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[4]_i_1__2 
       (.I0(\read_ptr[4]_i_2__0_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(new_sample),
        .I3(Q[4]),
        .O(\read_ptr[4]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \read_ptr[4]_i_2__0 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .O(\read_ptr[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[5]_i_1__2 
       (.I0(read_ptr_reg[4]),
        .I1(\read_ptr[4]_i_2__0_n_0 ),
        .I2(read_ptr_reg[5]),
        .I3(new_sample),
        .I4(Q[5]),
        .O(\read_ptr[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[6]_i_1__1 
       (.I0(\read_ptr[4]_i_2__0_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(read_ptr_reg[5]),
        .I3(read_ptr),
        .I4(new_sample),
        .I5(Q[6]),
        .O(\read_ptr[6]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[0]_i_1__1_n_0 ),
        .Q(read_ptr_reg[0]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[1]_i_1__1_n_0 ),
        .Q(read_ptr_reg[1]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[2]_i_1__2_n_0 ),
        .Q(read_ptr_reg[2]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[3] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[3]_i_1__2_n_0 ),
        .Q(read_ptr_reg[3]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[4] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[4]_i_1__2_n_0 ),
        .Q(read_ptr_reg[4]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[5] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[5]_i_1__2_n_0 ),
        .Q(read_ptr_reg[5]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[6] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[6]_i_1__1_n_0 ),
        .Q(read_ptr),
        .R(rst_audio));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_ptr[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_ptr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_ptr[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_ptr[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_ptr[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(p_0_in__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_ptr[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in__4[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_ptr[6]_i_1 
       (.I0(\write_ptr[6]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[6]),
        .O(p_0_in__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \write_ptr[6]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\write_ptr[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[0] 
       (.C(clk_audio),
        .CE(new_sample),
        .D(p_0_in__4[0]),
        .Q(Q[0]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[1] 
       (.C(clk_audio),
        .CE(new_sample),
        .D(p_0_in__4[1]),
        .Q(Q[1]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[2] 
       (.C(clk_audio),
        .CE(new_sample),
        .D(p_0_in__4[2]),
        .Q(Q[2]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[3] 
       (.C(clk_audio),
        .CE(new_sample),
        .D(p_0_in__4[3]),
        .Q(Q[3]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[4] 
       (.C(clk_audio),
        .CE(new_sample),
        .D(p_0_in__4[4]),
        .Q(Q[4]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[5] 
       (.C(clk_audio),
        .CE(new_sample),
        .D(p_0_in__4[5]),
        .Q(Q[5]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[6] 
       (.C(clk_audio),
        .CE(new_sample),
        .D(p_0_in__4[6]),
        .Q(Q[6]),
        .R(rst_audio));
endmodule

(* ORIG_REF_NAME = "dsp_fir_folded" *) 
module design_1_spatial_audio_top_0_0_dsp_fir_folded_4
   (P,
    pipe_audio_s1,
    accumulator_reg_0,
    accumulator_reg_1,
    clk_audio,
    rst_audio,
    RSTP,
    doutb,
    \read_ptr_reg[6]_0 ,
    new_sample,
    Q,
    accumulator_reg_2,
    accumulator_reg_3,
    accumulator_reg_4);
  output [23:0]P;
  input pipe_audio_s1;
  input accumulator_reg_0;
  input accumulator_reg_1;
  input clk_audio;
  input rst_audio;
  input RSTP;
  input [15:0]doutb;
  input \read_ptr_reg[6]_0 ;
  input new_sample;
  input [6:0]Q;
  input [23:0]accumulator_reg_2;
  input accumulator_reg_3;
  input accumulator_reg_4;

  wire [23:0]P;
  wire [6:0]Q;
  wire RSTP;
  wire accumulator_reg_0;
  wire accumulator_reg_1;
  wire [23:0]accumulator_reg_2;
  wire accumulator_reg_3;
  wire accumulator_reg_4;
  wire accumulator_reg_i_10_n_0;
  wire accumulator_reg_i_11_n_0;
  wire accumulator_reg_i_12_n_0;
  wire accumulator_reg_i_13_n_0;
  wire accumulator_reg_i_14_n_0;
  wire accumulator_reg_i_15_n_0;
  wire accumulator_reg_i_16_n_0;
  wire accumulator_reg_i_17_n_0;
  wire accumulator_reg_i_18_n_0;
  wire accumulator_reg_i_19_n_0;
  wire accumulator_reg_i_20_n_0;
  wire accumulator_reg_i_21_n_0;
  wire accumulator_reg_i_22_n_0;
  wire accumulator_reg_i_23_n_0;
  wire accumulator_reg_i_24_n_0;
  wire accumulator_reg_i_25_n_0;
  wire accumulator_reg_i_26_n_0;
  wire accumulator_reg_i_27_n_0;
  wire accumulator_reg_i_4_n_0;
  wire accumulator_reg_i_5_n_0;
  wire accumulator_reg_i_6_n_0;
  wire accumulator_reg_i_7_n_0;
  wire accumulator_reg_i_8_n_0;
  wire accumulator_reg_i_9_n_0;
  wire accumulator_reg_n_100;
  wire accumulator_reg_n_101;
  wire accumulator_reg_n_102;
  wire accumulator_reg_n_103;
  wire accumulator_reg_n_104;
  wire accumulator_reg_n_105;
  wire accumulator_reg_n_58;
  wire accumulator_reg_n_59;
  wire accumulator_reg_n_60;
  wire accumulator_reg_n_61;
  wire accumulator_reg_n_62;
  wire accumulator_reg_n_63;
  wire accumulator_reg_n_64;
  wire accumulator_reg_n_65;
  wire accumulator_reg_n_66;
  wire accumulator_reg_n_91;
  wire accumulator_reg_n_92;
  wire accumulator_reg_n_93;
  wire accumulator_reg_n_94;
  wire accumulator_reg_n_95;
  wire accumulator_reg_n_96;
  wire accumulator_reg_n_97;
  wire accumulator_reg_n_98;
  wire accumulator_reg_n_99;
  wire audio_history_reg_0_63_0_2_n_0;
  wire audio_history_reg_0_63_0_2_n_1;
  wire audio_history_reg_0_63_0_2_n_2;
  wire audio_history_reg_0_63_12_14_n_0;
  wire audio_history_reg_0_63_12_14_n_1;
  wire audio_history_reg_0_63_12_14_n_2;
  wire audio_history_reg_0_63_15_17_n_0;
  wire audio_history_reg_0_63_15_17_n_1;
  wire audio_history_reg_0_63_15_17_n_2;
  wire audio_history_reg_0_63_18_20_n_0;
  wire audio_history_reg_0_63_18_20_n_1;
  wire audio_history_reg_0_63_18_20_n_2;
  wire audio_history_reg_0_63_21_23_n_0;
  wire audio_history_reg_0_63_21_23_n_1;
  wire audio_history_reg_0_63_21_23_n_2;
  wire audio_history_reg_0_63_3_5_n_0;
  wire audio_history_reg_0_63_3_5_n_1;
  wire audio_history_reg_0_63_3_5_n_2;
  wire audio_history_reg_0_63_6_8_n_0;
  wire audio_history_reg_0_63_6_8_n_1;
  wire audio_history_reg_0_63_6_8_n_2;
  wire audio_history_reg_0_63_9_11_n_0;
  wire audio_history_reg_0_63_9_11_n_1;
  wire audio_history_reg_0_63_9_11_n_2;
  wire audio_history_reg_64_127_0_2_n_0;
  wire audio_history_reg_64_127_0_2_n_1;
  wire audio_history_reg_64_127_0_2_n_2;
  wire audio_history_reg_64_127_12_14_n_0;
  wire audio_history_reg_64_127_12_14_n_1;
  wire audio_history_reg_64_127_12_14_n_2;
  wire audio_history_reg_64_127_15_17_n_0;
  wire audio_history_reg_64_127_15_17_n_1;
  wire audio_history_reg_64_127_15_17_n_2;
  wire audio_history_reg_64_127_18_20_n_0;
  wire audio_history_reg_64_127_18_20_n_1;
  wire audio_history_reg_64_127_18_20_n_2;
  wire audio_history_reg_64_127_21_23_n_0;
  wire audio_history_reg_64_127_21_23_n_1;
  wire audio_history_reg_64_127_21_23_n_2;
  wire audio_history_reg_64_127_3_5_n_0;
  wire audio_history_reg_64_127_3_5_n_1;
  wire audio_history_reg_64_127_3_5_n_2;
  wire audio_history_reg_64_127_6_8_n_0;
  wire audio_history_reg_64_127_6_8_n_1;
  wire audio_history_reg_64_127_6_8_n_2;
  wire audio_history_reg_64_127_9_11_n_0;
  wire audio_history_reg_64_127_9_11_n_1;
  wire audio_history_reg_64_127_9_11_n_2;
  wire clk_audio;
  wire [15:0]doutb;
  wire new_sample;
  wire pipe_audio_s1;
  wire [6:6]read_ptr;
  wire \read_ptr[0]_i_2_n_0 ;
  wire \read_ptr[1]_i_1_n_0 ;
  wire \read_ptr[2]_i_1__0_n_0 ;
  wire \read_ptr[3]_i_1__0_n_0 ;
  wire \read_ptr[4]_i_1__0_n_0 ;
  wire \read_ptr[4]_i_2__2_n_0 ;
  wire \read_ptr[5]_i_1__0_n_0 ;
  wire \read_ptr[6]_i_1_n_0 ;
  wire [5:0]read_ptr_reg;
  wire \read_ptr_reg[6]_0 ;
  wire rst_audio;
  wire NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_accumulator_reg_OVERFLOW_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_accumulator_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_accumulator_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_accumulator_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_accumulator_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_accumulator_reg_PCOUT_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    accumulator_reg
       (.A({accumulator_reg_i_4_n_0,accumulator_reg_i_4_n_0,accumulator_reg_i_4_n_0,accumulator_reg_i_4_n_0,accumulator_reg_i_4_n_0,accumulator_reg_i_4_n_0,accumulator_reg_i_4_n_0,accumulator_reg_i_5_n_0,accumulator_reg_i_6_n_0,accumulator_reg_i_7_n_0,accumulator_reg_i_8_n_0,accumulator_reg_i_9_n_0,accumulator_reg_i_10_n_0,accumulator_reg_i_11_n_0,accumulator_reg_i_12_n_0,accumulator_reg_i_13_n_0,accumulator_reg_i_14_n_0,accumulator_reg_i_15_n_0,accumulator_reg_i_16_n_0,accumulator_reg_i_17_n_0,accumulator_reg_i_18_n_0,accumulator_reg_i_19_n_0,accumulator_reg_i_20_n_0,accumulator_reg_i_21_n_0,accumulator_reg_i_22_n_0,accumulator_reg_i_23_n_0,accumulator_reg_i_24_n_0,accumulator_reg_i_25_n_0,accumulator_reg_i_26_n_0,accumulator_reg_i_27_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_accumulator_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({doutb[15],doutb[15],doutb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_accumulator_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_accumulator_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(pipe_audio_s1),
        .CEA2(accumulator_reg_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(accumulator_reg_1),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_accumulator_reg_OVERFLOW_UNCONNECTED),
        .P({accumulator_reg_n_58,accumulator_reg_n_59,accumulator_reg_n_60,accumulator_reg_n_61,accumulator_reg_n_62,accumulator_reg_n_63,accumulator_reg_n_64,accumulator_reg_n_65,accumulator_reg_n_66,P,accumulator_reg_n_91,accumulator_reg_n_92,accumulator_reg_n_93,accumulator_reg_n_94,accumulator_reg_n_95,accumulator_reg_n_96,accumulator_reg_n_97,accumulator_reg_n_98,accumulator_reg_n_99,accumulator_reg_n_100,accumulator_reg_n_101,accumulator_reg_n_102,accumulator_reg_n_103,accumulator_reg_n_104,accumulator_reg_n_105}),
        .PATTERNBDETECT(NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_accumulator_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_accumulator_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_10
       (.I0(audio_history_reg_64_127_15_17_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_2),
        .O(accumulator_reg_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_11
       (.I0(audio_history_reg_64_127_15_17_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_1),
        .O(accumulator_reg_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_12
       (.I0(audio_history_reg_64_127_15_17_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_15_17_n_0),
        .O(accumulator_reg_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_13
       (.I0(audio_history_reg_64_127_12_14_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_2),
        .O(accumulator_reg_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_14
       (.I0(audio_history_reg_64_127_12_14_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_1),
        .O(accumulator_reg_i_14_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_15
       (.I0(audio_history_reg_64_127_12_14_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_12_14_n_0),
        .O(accumulator_reg_i_15_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_16
       (.I0(audio_history_reg_64_127_9_11_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_2),
        .O(accumulator_reg_i_16_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_17
       (.I0(audio_history_reg_64_127_9_11_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_1),
        .O(accumulator_reg_i_17_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_18
       (.I0(audio_history_reg_64_127_9_11_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_9_11_n_0),
        .O(accumulator_reg_i_18_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_19
       (.I0(audio_history_reg_64_127_6_8_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_2),
        .O(accumulator_reg_i_19_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_20
       (.I0(audio_history_reg_64_127_6_8_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_1),
        .O(accumulator_reg_i_20_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_21
       (.I0(audio_history_reg_64_127_6_8_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_6_8_n_0),
        .O(accumulator_reg_i_21_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_22
       (.I0(audio_history_reg_64_127_3_5_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_2),
        .O(accumulator_reg_i_22_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_23
       (.I0(audio_history_reg_64_127_3_5_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_1),
        .O(accumulator_reg_i_23_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_24
       (.I0(audio_history_reg_64_127_3_5_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_3_5_n_0),
        .O(accumulator_reg_i_24_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_25
       (.I0(audio_history_reg_64_127_0_2_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_2),
        .O(accumulator_reg_i_25_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_26
       (.I0(audio_history_reg_64_127_0_2_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_1),
        .O(accumulator_reg_i_26_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_27
       (.I0(audio_history_reg_64_127_0_2_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_0_2_n_0),
        .O(accumulator_reg_i_27_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_4
       (.I0(audio_history_reg_64_127_21_23_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_2),
        .O(accumulator_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_5
       (.I0(audio_history_reg_64_127_21_23_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_1),
        .O(accumulator_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_6
       (.I0(audio_history_reg_64_127_21_23_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_21_23_n_0),
        .O(accumulator_reg_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_7
       (.I0(audio_history_reg_64_127_18_20_n_2),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_2),
        .O(accumulator_reg_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_8
       (.I0(audio_history_reg_64_127_18_20_n_1),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_1),
        .O(accumulator_reg_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    accumulator_reg_i_9
       (.I0(audio_history_reg_64_127_18_20_n_0),
        .I1(read_ptr),
        .I2(audio_history_reg_0_63_18_20_n_0),
        .O(accumulator_reg_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[0]),
        .DIB(accumulator_reg_2[1]),
        .DIC(accumulator_reg_2[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_0_2_n_0),
        .DOB(audio_history_reg_0_63_0_2_n_1),
        .DOC(audio_history_reg_0_63_0_2_n_2),
        .DOD(NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[12]),
        .DIB(accumulator_reg_2[13]),
        .DIC(accumulator_reg_2[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_12_14_n_0),
        .DOB(audio_history_reg_0_63_12_14_n_1),
        .DOC(audio_history_reg_0_63_12_14_n_2),
        .DOD(NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[15]),
        .DIB(accumulator_reg_2[16]),
        .DIC(accumulator_reg_2[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_15_17_n_0),
        .DOB(audio_history_reg_0_63_15_17_n_1),
        .DOC(audio_history_reg_0_63_15_17_n_2),
        .DOD(NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[18]),
        .DIB(accumulator_reg_2[19]),
        .DIC(accumulator_reg_2[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_18_20_n_0),
        .DOB(audio_history_reg_0_63_18_20_n_1),
        .DOC(audio_history_reg_0_63_18_20_n_2),
        .DOD(NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[21]),
        .DIB(accumulator_reg_2[22]),
        .DIC(accumulator_reg_2[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_21_23_n_0),
        .DOB(audio_history_reg_0_63_21_23_n_1),
        .DOC(audio_history_reg_0_63_21_23_n_2),
        .DOD(NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[3]),
        .DIB(accumulator_reg_2[4]),
        .DIC(accumulator_reg_2[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_3_5_n_0),
        .DOB(audio_history_reg_0_63_3_5_n_1),
        .DOC(audio_history_reg_0_63_3_5_n_2),
        .DOD(NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[6]),
        .DIB(accumulator_reg_2[7]),
        .DIC(accumulator_reg_2[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_6_8_n_0),
        .DOB(audio_history_reg_0_63_6_8_n_1),
        .DOC(audio_history_reg_0_63_6_8_n_2),
        .DOD(NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_0_63_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[9]),
        .DIB(accumulator_reg_2[10]),
        .DIC(accumulator_reg_2[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_0_63_9_11_n_0),
        .DOB(audio_history_reg_0_63_9_11_n_1),
        .DOC(audio_history_reg_0_63_9_11_n_2),
        .DOD(NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_0_2
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[0]),
        .DIB(accumulator_reg_2[1]),
        .DIC(accumulator_reg_2[2]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_0_2_n_0),
        .DOB(audio_history_reg_64_127_0_2_n_1),
        .DOC(audio_history_reg_64_127_0_2_n_2),
        .DOD(NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_12_14
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[12]),
        .DIB(accumulator_reg_2[13]),
        .DIC(accumulator_reg_2[14]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_12_14_n_0),
        .DOB(audio_history_reg_64_127_12_14_n_1),
        .DOC(audio_history_reg_64_127_12_14_n_2),
        .DOD(NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_15_17
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[15]),
        .DIB(accumulator_reg_2[16]),
        .DIC(accumulator_reg_2[17]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_15_17_n_0),
        .DOB(audio_history_reg_64_127_15_17_n_1),
        .DOC(audio_history_reg_64_127_15_17_n_2),
        .DOD(NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_18_20
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[18]),
        .DIB(accumulator_reg_2[19]),
        .DIC(accumulator_reg_2[20]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_18_20_n_0),
        .DOB(audio_history_reg_64_127_18_20_n_1),
        .DOC(audio_history_reg_64_127_18_20_n_2),
        .DOD(NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_21_23
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[21]),
        .DIB(accumulator_reg_2[22]),
        .DIC(accumulator_reg_2[23]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_21_23_n_0),
        .DOB(audio_history_reg_64_127_21_23_n_1),
        .DOC(audio_history_reg_64_127_21_23_n_2),
        .DOD(NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_3_5
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[3]),
        .DIB(accumulator_reg_2[4]),
        .DIC(accumulator_reg_2[5]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_3_5_n_0),
        .DOB(audio_history_reg_64_127_3_5_n_1),
        .DOC(audio_history_reg_64_127_3_5_n_2),
        .DOD(NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_6_8
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[6]),
        .DIB(accumulator_reg_2[7]),
        .DIC(accumulator_reg_2[8]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_6_8_n_0),
        .DOB(audio_history_reg_64_127_6_8_n_1),
        .DOC(audio_history_reg_64_127_6_8_n_2),
        .DOD(NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    audio_history_reg_64_127_9_11
       (.ADDRA(read_ptr_reg),
        .ADDRB(read_ptr_reg),
        .ADDRC(read_ptr_reg),
        .ADDRD(Q[5:0]),
        .DIA(accumulator_reg_2[9]),
        .DIB(accumulator_reg_2[10]),
        .DIC(accumulator_reg_2[11]),
        .DID(1'b0),
        .DOA(audio_history_reg_64_127_9_11_n_0),
        .DOB(audio_history_reg_64_127_9_11_n_1),
        .DOC(audio_history_reg_64_127_9_11_n_2),
        .DOD(NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk_audio),
        .WE(accumulator_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \read_ptr[0]_i_2 
       (.I0(read_ptr_reg[0]),
        .I1(new_sample),
        .I2(Q[0]),
        .O(\read_ptr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[1]_i_1 
       (.I0(read_ptr_reg[0]),
        .I1(read_ptr_reg[1]),
        .I2(new_sample),
        .I3(Q[1]),
        .O(\read_ptr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[2]_i_1__0 
       (.I0(read_ptr_reg[1]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[2]),
        .I3(new_sample),
        .I4(Q[2]),
        .O(\read_ptr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[3]_i_1__0 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .I4(new_sample),
        .I5(Q[3]),
        .O(\read_ptr[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \read_ptr[4]_i_1__0 
       (.I0(\read_ptr[4]_i_2__2_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(new_sample),
        .I3(Q[4]),
        .O(\read_ptr[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \read_ptr[4]_i_2__2 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[3]),
        .O(\read_ptr[4]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \read_ptr[5]_i_1__0 
       (.I0(read_ptr_reg[4]),
        .I1(\read_ptr[4]_i_2__2_n_0 ),
        .I2(read_ptr_reg[5]),
        .I3(new_sample),
        .I4(Q[5]),
        .O(\read_ptr[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \read_ptr[6]_i_1 
       (.I0(\read_ptr[4]_i_2__2_n_0 ),
        .I1(read_ptr_reg[4]),
        .I2(read_ptr_reg[5]),
        .I3(read_ptr),
        .I4(new_sample),
        .I5(Q[6]),
        .O(\read_ptr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[0]_i_2_n_0 ),
        .Q(read_ptr_reg[0]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[1]_i_1_n_0 ),
        .Q(read_ptr_reg[1]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[2]_i_1__0_n_0 ),
        .Q(read_ptr_reg[2]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[3] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[3]_i_1__0_n_0 ),
        .Q(read_ptr_reg[3]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[4] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[4]_i_1__0_n_0 ),
        .Q(read_ptr_reg[4]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[5] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[5]_i_1__0_n_0 ),
        .Q(read_ptr_reg[5]),
        .R(rst_audio));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[6] 
       (.C(clk_audio),
        .CE(\read_ptr_reg[6]_0 ),
        .D(\read_ptr[6]_i_1_n_0 ),
        .Q(read_ptr),
        .R(rst_audio));
endmodule

(* ORIG_REF_NAME = "hrtf_address_generator" *) 
module design_1_spatial_audio_top_0_0_hrtf_address_generator
   (state_reg_0,
    pipe_audio_s1,
    conv_en_reg_0,
    conv_en_reg_1,
    \bram_addr_reg[13]_0 ,
    rst_audio,
    clk_audio,
    new_sample,
    locked,
    E,
    Q);
  output state_reg_0;
  output pipe_audio_s1;
  output conv_en_reg_0;
  output conv_en_reg_1;
  output [13:0]\bram_addr_reg[13]_0 ;
  input rst_audio;
  input clk_audio;
  input new_sample;
  input locked;
  input [0:0]E;
  input [6:0]Q;

  wire [0:0]E;
  wire [6:0]Q;
  wire \bram_addr[0]_i_1_n_0 ;
  wire \bram_addr[10]_i_2_n_0 ;
  wire \bram_addr[10]_i_3_n_0 ;
  wire \bram_addr[10]_i_4_n_0 ;
  wire \bram_addr[10]_i_5_n_0 ;
  wire \bram_addr[10]_i_6_n_0 ;
  wire \bram_addr[13]_i_1_n_0 ;
  wire \bram_addr[13]_i_3_n_0 ;
  wire \bram_addr[13]_i_4_n_0 ;
  wire \bram_addr[13]_i_5_n_0 ;
  wire \bram_addr[1]_i_1_n_0 ;
  wire \bram_addr[2]_i_1_n_0 ;
  wire \bram_addr[3]_i_1_n_0 ;
  wire \bram_addr[4]_i_1_n_0 ;
  wire \bram_addr[5]_i_1_n_0 ;
  wire \bram_addr[6]_i_1_n_0 ;
  wire \bram_addr[6]_i_2_n_0 ;
  wire \bram_addr[7]_i_1_n_0 ;
  wire \bram_addr_reg[10]_i_1_n_0 ;
  wire \bram_addr_reg[10]_i_1_n_1 ;
  wire \bram_addr_reg[10]_i_1_n_2 ;
  wire \bram_addr_reg[10]_i_1_n_3 ;
  wire \bram_addr_reg[10]_i_1_n_4 ;
  wire \bram_addr_reg[10]_i_1_n_5 ;
  wire \bram_addr_reg[10]_i_1_n_6 ;
  wire [13:0]\bram_addr_reg[13]_0 ;
  wire \bram_addr_reg[13]_i_2_n_2 ;
  wire \bram_addr_reg[13]_i_2_n_3 ;
  wire \bram_addr_reg[13]_i_2_n_5 ;
  wire \bram_addr_reg[13]_i_2_n_6 ;
  wire \bram_addr_reg[13]_i_2_n_7 ;
  wire clk_audio;
  wire conv_en;
  wire conv_en_i_1_n_0;
  wire conv_en_reg_0;
  wire conv_en_reg_1;
  wire locked;
  wire new_sample;
  wire [13:7]p_0_in;
  wire [1:0]p_0_in__0;
  wire pipe_audio_s1;
  wire rst_audio;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_reg_0;
  wire \tap_count[2]_i_1_n_0 ;
  wire \tap_count[3]_i_1_n_0 ;
  wire \tap_count[4]_i_1_n_0 ;
  wire \tap_count[5]_i_1_n_0 ;
  wire \tap_count[6]_i_1_n_0 ;
  wire \tap_count[7]_i_1_n_0 ;
  wire \tap_count[7]_i_2_n_0 ;
  wire [7:0]tap_count_reg__0;
  wire [0:0]\NLW_bram_addr_reg[10]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_bram_addr_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[13]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    accumulator_reg_i_1__2
       (.I0(conv_en),
        .I1(new_sample),
        .O(pipe_audio_s1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[0]_i_1 
       (.I0(tap_count_reg__0[0]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[10]_i_2 
       (.I0(tap_count_reg__0[7]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[10]_i_3 
       (.I0(Q[3]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[10]),
        .O(\bram_addr[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[10]_i_4 
       (.I0(Q[2]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[9]),
        .O(\bram_addr[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[10]_i_5 
       (.I0(Q[1]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[8]),
        .O(\bram_addr[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \bram_addr[10]_i_6 
       (.I0(tap_count_reg__0[7]),
        .I1(p_0_in[7]),
        .I2(state_reg_0),
        .I3(new_sample),
        .I4(Q[0]),
        .O(\bram_addr[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[13]_i_1 
       (.I0(state_reg_0),
        .I1(new_sample),
        .O(\bram_addr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[13]_i_3 
       (.I0(Q[6]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[13]),
        .O(\bram_addr[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[13]_i_4 
       (.I0(Q[5]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[12]),
        .O(\bram_addr[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[13]_i_5 
       (.I0(Q[4]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[11]),
        .O(\bram_addr[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[1]_i_1 
       (.I0(tap_count_reg__0[1]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[2]_i_1 
       (.I0(tap_count_reg__0[2]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[3]_i_1 
       (.I0(tap_count_reg__0[3]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[4]_i_1 
       (.I0(tap_count_reg__0[4]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[5]_i_1 
       (.I0(tap_count_reg__0[5]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \bram_addr[6]_i_1 
       (.I0(state_reg_0),
        .I1(new_sample),
        .I2(locked),
        .O(\bram_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[6]_i_2 
       (.I0(tap_count_reg__0[6]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \bram_addr[7]_i_1 
       (.I0(tap_count_reg__0[7]),
        .I1(p_0_in[7]),
        .I2(state_reg_0),
        .I3(new_sample),
        .I4(Q[0]),
        .O(\bram_addr[7]_i_1_n_0 ));
  FDRE \bram_addr_reg[0] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[0]_i_1_n_0 ),
        .Q(\bram_addr_reg[13]_0 [0]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \bram_addr_reg[10] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr_reg[10]_i_1_n_4 ),
        .Q(\bram_addr_reg[13]_0 [10]),
        .R(rst_audio));
  CARRY4 \bram_addr_reg[10]_i_1 
       (.CI(1'b0),
        .CO({\bram_addr_reg[10]_i_1_n_0 ,\bram_addr_reg[10]_i_1_n_1 ,\bram_addr_reg[10]_i_1_n_2 ,\bram_addr_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bram_addr[10]_i_2_n_0 }),
        .O({\bram_addr_reg[10]_i_1_n_4 ,\bram_addr_reg[10]_i_1_n_5 ,\bram_addr_reg[10]_i_1_n_6 ,\NLW_bram_addr_reg[10]_i_1_O_UNCONNECTED [0]}),
        .S({\bram_addr[10]_i_3_n_0 ,\bram_addr[10]_i_4_n_0 ,\bram_addr[10]_i_5_n_0 ,\bram_addr[10]_i_6_n_0 }));
  FDRE \bram_addr_reg[11] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr_reg[13]_i_2_n_7 ),
        .Q(\bram_addr_reg[13]_0 [11]),
        .R(rst_audio));
  FDRE \bram_addr_reg[12] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr_reg[13]_i_2_n_6 ),
        .Q(\bram_addr_reg[13]_0 [12]),
        .R(rst_audio));
  FDRE \bram_addr_reg[13] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr_reg[13]_i_2_n_5 ),
        .Q(\bram_addr_reg[13]_0 [13]),
        .R(rst_audio));
  CARRY4 \bram_addr_reg[13]_i_2 
       (.CI(\bram_addr_reg[10]_i_1_n_0 ),
        .CO({\NLW_bram_addr_reg[13]_i_2_CO_UNCONNECTED [3:2],\bram_addr_reg[13]_i_2_n_2 ,\bram_addr_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_reg[13]_i_2_O_UNCONNECTED [3],\bram_addr_reg[13]_i_2_n_5 ,\bram_addr_reg[13]_i_2_n_6 ,\bram_addr_reg[13]_i_2_n_7 }),
        .S({1'b0,\bram_addr[13]_i_3_n_0 ,\bram_addr[13]_i_4_n_0 ,\bram_addr[13]_i_5_n_0 }));
  FDRE \bram_addr_reg[1] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[1]_i_1_n_0 ),
        .Q(\bram_addr_reg[13]_0 [1]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \bram_addr_reg[2] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[2]_i_1_n_0 ),
        .Q(\bram_addr_reg[13]_0 [2]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \bram_addr_reg[3] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[3]_i_1_n_0 ),
        .Q(\bram_addr_reg[13]_0 [3]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \bram_addr_reg[4] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[4]_i_1_n_0 ),
        .Q(\bram_addr_reg[13]_0 [4]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \bram_addr_reg[5] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[5]_i_1_n_0 ),
        .Q(\bram_addr_reg[13]_0 [5]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \bram_addr_reg[6] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[6]_i_2_n_0 ),
        .Q(\bram_addr_reg[13]_0 [6]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \bram_addr_reg[7] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr[7]_i_1_n_0 ),
        .Q(\bram_addr_reg[13]_0 [7]),
        .R(rst_audio));
  FDRE \bram_addr_reg[8] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr_reg[10]_i_1_n_6 ),
        .Q(\bram_addr_reg[13]_0 [8]),
        .R(rst_audio));
  FDRE \bram_addr_reg[9] 
       (.C(clk_audio),
        .CE(\bram_addr[13]_i_1_n_0 ),
        .D(\bram_addr_reg[10]_i_1_n_5 ),
        .Q(\bram_addr_reg[13]_0 [9]),
        .R(rst_audio));
  LUT6 #(
    .INIT(64'hFDFFFDFF00FF0000)) 
    conv_en_i_1
       (.I0(tap_count_reg__0[6]),
        .I1(state_i_2_n_0),
        .I2(tap_count_reg__0[7]),
        .I3(state_reg_0),
        .I4(new_sample),
        .I5(conv_en),
        .O(conv_en_i_1_n_0));
  FDRE conv_en_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(conv_en_i_1_n_0),
        .Q(conv_en),
        .R(rst_audio));
  FDRE \latched_angle_reg[0] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[0]),
        .Q(p_0_in[7]),
        .R(rst_audio));
  FDRE \latched_angle_reg[1] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[1]),
        .Q(p_0_in[8]),
        .R(rst_audio));
  FDRE \latched_angle_reg[2] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[2]),
        .Q(p_0_in[9]),
        .R(rst_audio));
  FDRE \latched_angle_reg[3] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[3]),
        .Q(p_0_in[10]),
        .R(rst_audio));
  FDRE \latched_angle_reg[4] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[4]),
        .Q(p_0_in[11]),
        .R(rst_audio));
  FDRE \latched_angle_reg[5] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[5]),
        .Q(p_0_in[12]),
        .R(rst_audio));
  FDRE \latched_angle_reg[6] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[6]),
        .Q(p_0_in[13]),
        .R(rst_audio));
  LUT3 #(
    .INIT(8'h08)) 
    pipe_valid_s1_i_1
       (.I0(conv_en),
        .I1(locked),
        .I2(new_sample),
        .O(conv_en_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \read_ptr[0]_i_1 
       (.I0(conv_en),
        .I1(new_sample),
        .O(conv_en_reg_0));
  LUT5 #(
    .INIT(32'hFDFFFD00)) 
    state_i_1
       (.I0(tap_count_reg__0[6]),
        .I1(state_i_2_n_0),
        .I2(tap_count_reg__0[7]),
        .I3(state_reg_0),
        .I4(new_sample),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    state_i_2
       (.I0(tap_count_reg__0[4]),
        .I1(tap_count_reg__0[2]),
        .I2(tap_count_reg__0[0]),
        .I3(tap_count_reg__0[1]),
        .I4(tap_count_reg__0[3]),
        .I5(tap_count_reg__0[5]),
        .O(state_i_2_n_0));
  FDRE state_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_0),
        .R(rst_audio));
  LUT1 #(
    .INIT(2'h1)) 
    \tap_count[0]_i_1 
       (.I0(tap_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tap_count[1]_i_1 
       (.I0(tap_count_reg__0[0]),
        .I1(tap_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tap_count[2]_i_1 
       (.I0(tap_count_reg__0[1]),
        .I1(tap_count_reg__0[0]),
        .I2(tap_count_reg__0[2]),
        .O(\tap_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tap_count[3]_i_1 
       (.I0(tap_count_reg__0[2]),
        .I1(tap_count_reg__0[0]),
        .I2(tap_count_reg__0[1]),
        .I3(tap_count_reg__0[3]),
        .O(\tap_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tap_count[4]_i_1 
       (.I0(tap_count_reg__0[3]),
        .I1(tap_count_reg__0[1]),
        .I2(tap_count_reg__0[0]),
        .I3(tap_count_reg__0[2]),
        .I4(tap_count_reg__0[4]),
        .O(\tap_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tap_count[5]_i_1 
       (.I0(tap_count_reg__0[4]),
        .I1(tap_count_reg__0[2]),
        .I2(tap_count_reg__0[0]),
        .I3(tap_count_reg__0[1]),
        .I4(tap_count_reg__0[3]),
        .I5(tap_count_reg__0[5]),
        .O(\tap_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \tap_count[6]_i_1 
       (.I0(state_i_2_n_0),
        .I1(tap_count_reg__0[6]),
        .O(\tap_count[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \tap_count[7]_i_1 
       (.I0(tap_count_reg__0[7]),
        .I1(state_i_2_n_0),
        .I2(tap_count_reg__0[6]),
        .I3(state_reg_0),
        .O(\tap_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \tap_count[7]_i_2 
       (.I0(tap_count_reg__0[6]),
        .I1(state_i_2_n_0),
        .I2(tap_count_reg__0[7]),
        .O(\tap_count[7]_i_2_n_0 ));
  FDRE \tap_count_reg[0] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(tap_count_reg__0[0]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \tap_count_reg[1] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(tap_count_reg__0[1]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \tap_count_reg[2] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(\tap_count[2]_i_1_n_0 ),
        .Q(tap_count_reg__0[2]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \tap_count_reg[3] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(\tap_count[3]_i_1_n_0 ),
        .Q(tap_count_reg__0[3]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \tap_count_reg[4] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(\tap_count[4]_i_1_n_0 ),
        .Q(tap_count_reg__0[4]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \tap_count_reg[5] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(\tap_count[5]_i_1_n_0 ),
        .Q(tap_count_reg__0[5]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \tap_count_reg[6] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(\tap_count[6]_i_1_n_0 ),
        .Q(tap_count_reg__0[6]),
        .R(\bram_addr[6]_i_1_n_0 ));
  FDRE \tap_count_reg[7] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1_n_0 ),
        .D(\tap_count[7]_i_2_n_0 ),
        .Q(tap_count_reg__0[7]),
        .R(\bram_addr[6]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "hrtf_address_generator" *) 
module design_1_spatial_audio_top_0_0_hrtf_address_generator_0
   (state_reg_0,
    \bram_addr_reg[13]_0 ,
    new_sample,
    locked,
    rst_audio,
    clk_audio,
    E,
    Q,
    \bram_addr_reg[13]_1 );
  output state_reg_0;
  output [13:0]\bram_addr_reg[13]_0 ;
  input new_sample;
  input locked;
  input rst_audio;
  input clk_audio;
  input [0:0]E;
  input [6:0]Q;
  input [0:0]\bram_addr_reg[13]_1 ;

  wire [0:0]E;
  wire [6:0]Q;
  wire \bram_addr[0]_i_1__0_n_0 ;
  wire \bram_addr[10]_i_2__0_n_0 ;
  wire \bram_addr[10]_i_3__0_n_0 ;
  wire \bram_addr[10]_i_4__0_n_0 ;
  wire \bram_addr[10]_i_5__0_n_0 ;
  wire \bram_addr[10]_i_6__0_n_0 ;
  wire \bram_addr[13]_i_3__0_n_0 ;
  wire \bram_addr[13]_i_4__0_n_0 ;
  wire \bram_addr[13]_i_5__0_n_0 ;
  wire \bram_addr[1]_i_1__0_n_0 ;
  wire \bram_addr[2]_i_1__0_n_0 ;
  wire \bram_addr[3]_i_1__0_n_0 ;
  wire \bram_addr[4]_i_1__0_n_0 ;
  wire \bram_addr[5]_i_1__0_n_0 ;
  wire \bram_addr[6]_i_1__0_n_0 ;
  wire \bram_addr[6]_i_2__0_n_0 ;
  wire \bram_addr[7]_i_1__0_n_0 ;
  wire \bram_addr_reg[10]_i_1__0_n_0 ;
  wire \bram_addr_reg[10]_i_1__0_n_1 ;
  wire \bram_addr_reg[10]_i_1__0_n_2 ;
  wire \bram_addr_reg[10]_i_1__0_n_3 ;
  wire \bram_addr_reg[10]_i_1__0_n_4 ;
  wire \bram_addr_reg[10]_i_1__0_n_5 ;
  wire \bram_addr_reg[10]_i_1__0_n_6 ;
  wire [13:0]\bram_addr_reg[13]_0 ;
  wire [0:0]\bram_addr_reg[13]_1 ;
  wire \bram_addr_reg[13]_i_2__0_n_2 ;
  wire \bram_addr_reg[13]_i_2__0_n_3 ;
  wire \bram_addr_reg[13]_i_2__0_n_5 ;
  wire \bram_addr_reg[13]_i_2__0_n_6 ;
  wire \bram_addr_reg[13]_i_2__0_n_7 ;
  wire clk_audio;
  wire locked;
  wire new_sample;
  wire [13:7]p_0_in;
  wire [1:0]p_0_in__1;
  wire rst_audio;
  wire state_i_1_n_0;
  wire state_i_2__0_n_0;
  wire state_reg_0;
  wire \tap_count[2]_i_1__0_n_0 ;
  wire \tap_count[3]_i_1__0_n_0 ;
  wire \tap_count[4]_i_1__0_n_0 ;
  wire \tap_count[5]_i_1__0_n_0 ;
  wire \tap_count[6]_i_1__0_n_0 ;
  wire \tap_count[7]_i_1__0_n_0 ;
  wire \tap_count[7]_i_2__0_n_0 ;
  wire [7:0]tap_count_reg__0;
  wire [0:0]\NLW_bram_addr_reg[10]_i_1__0_O_UNCONNECTED ;
  wire [3:2]\NLW_bram_addr_reg[13]_i_2__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[13]_i_2__0_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[0]_i_1__0 
       (.I0(tap_count_reg__0[0]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[10]_i_2__0 
       (.I0(tap_count_reg__0[7]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[10]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[10]_i_3__0 
       (.I0(Q[3]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[10]),
        .O(\bram_addr[10]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[10]_i_4__0 
       (.I0(Q[2]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[9]),
        .O(\bram_addr[10]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[10]_i_5__0 
       (.I0(Q[1]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[8]),
        .O(\bram_addr[10]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \bram_addr[10]_i_6__0 
       (.I0(tap_count_reg__0[7]),
        .I1(p_0_in[7]),
        .I2(state_reg_0),
        .I3(new_sample),
        .I4(Q[0]),
        .O(\bram_addr[10]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[13]_i_3__0 
       (.I0(Q[6]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[13]),
        .O(\bram_addr[13]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[13]_i_4__0 
       (.I0(Q[5]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[12]),
        .O(\bram_addr[13]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram_addr[13]_i_5__0 
       (.I0(Q[4]),
        .I1(new_sample),
        .I2(state_reg_0),
        .I3(p_0_in[11]),
        .O(\bram_addr[13]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[1]_i_1__0 
       (.I0(tap_count_reg__0[1]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[2]_i_1__0 
       (.I0(tap_count_reg__0[2]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[3]_i_1__0 
       (.I0(tap_count_reg__0[3]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[4]_i_1__0 
       (.I0(tap_count_reg__0[4]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[5]_i_1__0 
       (.I0(tap_count_reg__0[5]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[5]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \bram_addr[6]_i_1__0 
       (.I0(state_reg_0),
        .I1(new_sample),
        .I2(locked),
        .O(\bram_addr[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \bram_addr[6]_i_2__0 
       (.I0(tap_count_reg__0[6]),
        .I1(state_reg_0),
        .I2(new_sample),
        .O(\bram_addr[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \bram_addr[7]_i_1__0 
       (.I0(tap_count_reg__0[7]),
        .I1(p_0_in[7]),
        .I2(state_reg_0),
        .I3(new_sample),
        .I4(Q[0]),
        .O(\bram_addr[7]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[0] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[0]_i_1__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [0]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[10] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr_reg[10]_i_1__0_n_4 ),
        .Q(\bram_addr_reg[13]_0 [10]),
        .R(rst_audio));
  CARRY4 \bram_addr_reg[10]_i_1__0 
       (.CI(1'b0),
        .CO({\bram_addr_reg[10]_i_1__0_n_0 ,\bram_addr_reg[10]_i_1__0_n_1 ,\bram_addr_reg[10]_i_1__0_n_2 ,\bram_addr_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bram_addr[10]_i_2__0_n_0 }),
        .O({\bram_addr_reg[10]_i_1__0_n_4 ,\bram_addr_reg[10]_i_1__0_n_5 ,\bram_addr_reg[10]_i_1__0_n_6 ,\NLW_bram_addr_reg[10]_i_1__0_O_UNCONNECTED [0]}),
        .S({\bram_addr[10]_i_3__0_n_0 ,\bram_addr[10]_i_4__0_n_0 ,\bram_addr[10]_i_5__0_n_0 ,\bram_addr[10]_i_6__0_n_0 }));
  FDRE \bram_addr_reg[11] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr_reg[13]_i_2__0_n_7 ),
        .Q(\bram_addr_reg[13]_0 [11]),
        .R(rst_audio));
  FDRE \bram_addr_reg[12] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr_reg[13]_i_2__0_n_6 ),
        .Q(\bram_addr_reg[13]_0 [12]),
        .R(rst_audio));
  FDRE \bram_addr_reg[13] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr_reg[13]_i_2__0_n_5 ),
        .Q(\bram_addr_reg[13]_0 [13]),
        .R(rst_audio));
  CARRY4 \bram_addr_reg[13]_i_2__0 
       (.CI(\bram_addr_reg[10]_i_1__0_n_0 ),
        .CO({\NLW_bram_addr_reg[13]_i_2__0_CO_UNCONNECTED [3:2],\bram_addr_reg[13]_i_2__0_n_2 ,\bram_addr_reg[13]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_reg[13]_i_2__0_O_UNCONNECTED [3],\bram_addr_reg[13]_i_2__0_n_5 ,\bram_addr_reg[13]_i_2__0_n_6 ,\bram_addr_reg[13]_i_2__0_n_7 }),
        .S({1'b0,\bram_addr[13]_i_3__0_n_0 ,\bram_addr[13]_i_4__0_n_0 ,\bram_addr[13]_i_5__0_n_0 }));
  FDRE \bram_addr_reg[1] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[1]_i_1__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [1]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[2] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[2]_i_1__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [2]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[3] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[3]_i_1__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [3]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[4] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[4]_i_1__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [4]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[5] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[5]_i_1__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [5]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[6] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[6]_i_2__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [6]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \bram_addr_reg[7] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr[7]_i_1__0_n_0 ),
        .Q(\bram_addr_reg[13]_0 [7]),
        .R(rst_audio));
  FDRE \bram_addr_reg[8] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr_reg[10]_i_1__0_n_6 ),
        .Q(\bram_addr_reg[13]_0 [8]),
        .R(rst_audio));
  FDRE \bram_addr_reg[9] 
       (.C(clk_audio),
        .CE(\bram_addr_reg[13]_1 ),
        .D(\bram_addr_reg[10]_i_1__0_n_5 ),
        .Q(\bram_addr_reg[13]_0 [9]),
        .R(rst_audio));
  FDRE \latched_angle_reg[0] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[0]),
        .Q(p_0_in[7]),
        .R(rst_audio));
  FDRE \latched_angle_reg[1] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[1]),
        .Q(p_0_in[8]),
        .R(rst_audio));
  FDRE \latched_angle_reg[2] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[2]),
        .Q(p_0_in[9]),
        .R(rst_audio));
  FDRE \latched_angle_reg[3] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[3]),
        .Q(p_0_in[10]),
        .R(rst_audio));
  FDRE \latched_angle_reg[4] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[4]),
        .Q(p_0_in[11]),
        .R(rst_audio));
  FDRE \latched_angle_reg[5] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[5]),
        .Q(p_0_in[12]),
        .R(rst_audio));
  FDRE \latched_angle_reg[6] 
       (.C(clk_audio),
        .CE(E),
        .D(Q[6]),
        .Q(p_0_in[13]),
        .R(rst_audio));
  LUT5 #(
    .INIT(32'hFDFFFD00)) 
    state_i_1
       (.I0(tap_count_reg__0[6]),
        .I1(state_i_2__0_n_0),
        .I2(tap_count_reg__0[7]),
        .I3(state_reg_0),
        .I4(new_sample),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    state_i_2__0
       (.I0(tap_count_reg__0[4]),
        .I1(tap_count_reg__0[2]),
        .I2(tap_count_reg__0[0]),
        .I3(tap_count_reg__0[1]),
        .I4(tap_count_reg__0[3]),
        .I5(tap_count_reg__0[5]),
        .O(state_i_2__0_n_0));
  FDRE state_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_0),
        .R(rst_audio));
  LUT1 #(
    .INIT(2'h1)) 
    \tap_count[0]_i_1__0 
       (.I0(tap_count_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tap_count[1]_i_1__0 
       (.I0(tap_count_reg__0[0]),
        .I1(tap_count_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tap_count[2]_i_1__0 
       (.I0(tap_count_reg__0[1]),
        .I1(tap_count_reg__0[0]),
        .I2(tap_count_reg__0[2]),
        .O(\tap_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tap_count[3]_i_1__0 
       (.I0(tap_count_reg__0[2]),
        .I1(tap_count_reg__0[0]),
        .I2(tap_count_reg__0[1]),
        .I3(tap_count_reg__0[3]),
        .O(\tap_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tap_count[4]_i_1__0 
       (.I0(tap_count_reg__0[3]),
        .I1(tap_count_reg__0[1]),
        .I2(tap_count_reg__0[0]),
        .I3(tap_count_reg__0[2]),
        .I4(tap_count_reg__0[4]),
        .O(\tap_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tap_count[5]_i_1__0 
       (.I0(tap_count_reg__0[4]),
        .I1(tap_count_reg__0[2]),
        .I2(tap_count_reg__0[0]),
        .I3(tap_count_reg__0[1]),
        .I4(tap_count_reg__0[3]),
        .I5(tap_count_reg__0[5]),
        .O(\tap_count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \tap_count[6]_i_1__0 
       (.I0(state_i_2__0_n_0),
        .I1(tap_count_reg__0[6]),
        .O(\tap_count[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \tap_count[7]_i_1__0 
       (.I0(tap_count_reg__0[7]),
        .I1(state_i_2__0_n_0),
        .I2(tap_count_reg__0[6]),
        .I3(state_reg_0),
        .O(\tap_count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \tap_count[7]_i_2__0 
       (.I0(tap_count_reg__0[6]),
        .I1(state_i_2__0_n_0),
        .I2(tap_count_reg__0[7]),
        .O(\tap_count[7]_i_2__0_n_0 ));
  FDRE \tap_count_reg[0] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(p_0_in__1[0]),
        .Q(tap_count_reg__0[0]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \tap_count_reg[1] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(p_0_in__1[1]),
        .Q(tap_count_reg__0[1]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \tap_count_reg[2] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(\tap_count[2]_i_1__0_n_0 ),
        .Q(tap_count_reg__0[2]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \tap_count_reg[3] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(\tap_count[3]_i_1__0_n_0 ),
        .Q(tap_count_reg__0[3]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \tap_count_reg[4] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(\tap_count[4]_i_1__0_n_0 ),
        .Q(tap_count_reg__0[4]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \tap_count_reg[5] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(\tap_count[5]_i_1__0_n_0 ),
        .Q(tap_count_reg__0[5]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \tap_count_reg[6] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(\tap_count[6]_i_1__0_n_0 ),
        .Q(tap_count_reg__0[6]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
  FDRE \tap_count_reg[7] 
       (.C(clk_audio),
        .CE(\tap_count[7]_i_1__0_n_0 ),
        .D(\tap_count[7]_i_2__0_n_0 ),
        .Q(tap_count_reg__0[7]),
        .R(\bram_addr[6]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "hrtf_crossfader" *) 
module design_1_spatial_audio_top_0_0_hrtf_crossfader
   (pipe_valid_s2_reg,
    P,
    fade_target,
    Q,
    S,
    pipe_audio_s1,
    accumulator_reg,
    clk_audio,
    rst_audio,
    RSTP,
    doutb,
    new_sample,
    douta,
    \read_ptr_reg[6] ,
    pipe_valid_s1_reg,
    crossfade_trig,
    fade_counter0_carry__0_0,
    \fade_target_reg[10]_0 ,
    locked,
    accumulator_reg_0,
    accumulator_reg_1,
    accumulator_reg_2);
  output pipe_valid_s2_reg;
  output [23:0]P;
  output [0:0]fade_target;
  output [6:0]Q;
  output [0:0]S;
  input pipe_audio_s1;
  input accumulator_reg;
  input clk_audio;
  input rst_audio;
  input RSTP;
  input [15:0]doutb;
  input new_sample;
  input [15:0]douta;
  input \read_ptr_reg[6] ;
  input pipe_valid_s1_reg;
  input crossfade_trig;
  input [0:0]fade_counter0_carry__0_0;
  input \fade_target_reg[10]_0 ;
  input locked;
  input [23:0]accumulator_reg_0;
  input accumulator_reg_1;
  input accumulator_reg_2;

  wire [23:0]P;
  wire [6:0]Q;
  wire RSTP;
  wire [0:0]S;
  wire accumulator_reg;
  wire [23:0]accumulator_reg_0;
  wire accumulator_reg_1;
  wire accumulator_reg_2;
  wire clk_audio;
  wire crossfade_trig;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire fade_counter;
  wire [0:0]fade_counter0_carry__0_0;
  wire fade_counter0_carry__0_i_1_n_0;
  wire fade_counter0_carry__0_i_2_n_0;
  wire fade_counter0_carry__0_i_3_n_0;
  wire fade_counter0_carry__0_i_4_n_0;
  wire fade_counter0_carry__0_n_2;
  wire fade_counter0_carry__0_n_3;
  wire fade_counter0_carry_i_1_n_0;
  wire fade_counter0_carry_i_2_n_0;
  wire fade_counter0_carry_i_3_n_0;
  wire fade_counter0_carry_i_4_n_0;
  wire fade_counter0_carry_i_5_n_0;
  wire fade_counter0_carry_i_6_n_0;
  wire fade_counter0_carry_i_7_n_0;
  wire fade_counter0_carry_i_8_n_0;
  wire fade_counter0_carry_n_0;
  wire fade_counter0_carry_n_1;
  wire fade_counter0_carry_n_2;
  wire fade_counter0_carry_n_3;
  wire \fade_counter[10]_i_2_n_0 ;
  wire \fade_counter[10]_i_3_n_0 ;
  wire \fade_counter[4]_i_2_n_0 ;
  wire \fade_counter[4]_i_3_n_0 ;
  wire \fade_counter[4]_i_4_n_0 ;
  wire \fade_counter[4]_i_5_n_0 ;
  wire \fade_counter[4]_i_6_n_0 ;
  wire \fade_counter[8]_i_2_n_0 ;
  wire \fade_counter[8]_i_3_n_0 ;
  wire \fade_counter[8]_i_4_n_0 ;
  wire \fade_counter[8]_i_5_n_0 ;
  wire \fade_counter_reg[10]_i_1_n_3 ;
  wire \fade_counter_reg[10]_i_1_n_6 ;
  wire \fade_counter_reg[10]_i_1_n_7 ;
  wire \fade_counter_reg[4]_i_1_n_0 ;
  wire \fade_counter_reg[4]_i_1_n_1 ;
  wire \fade_counter_reg[4]_i_1_n_2 ;
  wire \fade_counter_reg[4]_i_1_n_3 ;
  wire \fade_counter_reg[4]_i_1_n_4 ;
  wire \fade_counter_reg[4]_i_1_n_5 ;
  wire \fade_counter_reg[4]_i_1_n_6 ;
  wire \fade_counter_reg[4]_i_1_n_7 ;
  wire \fade_counter_reg[8]_i_1_n_0 ;
  wire \fade_counter_reg[8]_i_1_n_1 ;
  wire \fade_counter_reg[8]_i_1_n_2 ;
  wire \fade_counter_reg[8]_i_1_n_3 ;
  wire \fade_counter_reg[8]_i_1_n_4 ;
  wire \fade_counter_reg[8]_i_1_n_5 ;
  wire \fade_counter_reg[8]_i_1_n_6 ;
  wire \fade_counter_reg[8]_i_1_n_7 ;
  wire [10:1]fade_counter_reg__0;
  wire [0:0]fade_counter_reg__1;
  wire [0:0]fade_target;
  wire \fade_target[10]_i_1_n_0 ;
  wire \fade_target_reg[10]_0 ;
  wire fir_a_n_0;
  wire fir_a_n_1;
  wire fir_a_n_10;
  wire fir_a_n_11;
  wire fir_a_n_12;
  wire fir_a_n_13;
  wire fir_a_n_14;
  wire fir_a_n_15;
  wire fir_a_n_16;
  wire fir_a_n_17;
  wire fir_a_n_18;
  wire fir_a_n_19;
  wire fir_a_n_2;
  wire fir_a_n_20;
  wire fir_a_n_21;
  wire fir_a_n_22;
  wire fir_a_n_23;
  wire fir_a_n_3;
  wire fir_a_n_4;
  wire fir_a_n_5;
  wire fir_a_n_6;
  wire fir_a_n_7;
  wire fir_a_n_8;
  wire fir_a_n_9;
  wire fir_b_n_0;
  wire fir_b_n_1;
  wire fir_b_n_10;
  wire fir_b_n_11;
  wire fir_b_n_12;
  wire fir_b_n_13;
  wire fir_b_n_14;
  wire fir_b_n_15;
  wire fir_b_n_16;
  wire fir_b_n_17;
  wire fir_b_n_18;
  wire fir_b_n_19;
  wire fir_b_n_2;
  wire fir_b_n_20;
  wire fir_b_n_21;
  wire fir_b_n_22;
  wire fir_b_n_23;
  wire fir_b_n_3;
  wire fir_b_n_4;
  wire fir_b_n_5;
  wire fir_b_n_6;
  wire fir_b_n_7;
  wire fir_b_n_8;
  wire fir_b_n_9;
  wire is_fading;
  wire is_fading_i_1_n_0;
  wire locked;
  wire mix_b_mult_i_10_n_0;
  wire mix_b_mult_i_11_n_0;
  wire mix_b_mult_i_12_n_0;
  wire mix_b_mult_i_13_n_0;
  wire mix_b_mult_i_14_n_0;
  wire mix_b_mult_i_15_n_0;
  wire mix_b_mult_i_16_n_0;
  wire mix_b_mult_i_17_n_0;
  wire mix_b_mult_i_2_n_3;
  wire mix_b_mult_i_2_n_6;
  wire mix_b_mult_i_2_n_7;
  wire mix_b_mult_i_3_n_0;
  wire mix_b_mult_i_3_n_1;
  wire mix_b_mult_i_3_n_2;
  wire mix_b_mult_i_3_n_3;
  wire mix_b_mult_i_3_n_4;
  wire mix_b_mult_i_3_n_5;
  wire mix_b_mult_i_3_n_6;
  wire mix_b_mult_i_3_n_7;
  wire mix_b_mult_i_4_n_0;
  wire mix_b_mult_i_4_n_1;
  wire mix_b_mult_i_4_n_2;
  wire mix_b_mult_i_4_n_3;
  wire mix_b_mult_i_4_n_4;
  wire mix_b_mult_i_4_n_5;
  wire mix_b_mult_i_4_n_6;
  wire mix_b_mult_i_5_n_0;
  wire mix_b_mult_i_6_n_0;
  wire mix_b_mult_i_7_n_0;
  wire mix_b_mult_i_8_n_0;
  wire mix_b_mult_i_9_n_0;
  wire mix_b_mult_n_100;
  wire mix_b_mult_n_101;
  wire mix_b_mult_n_102;
  wire mix_b_mult_n_103;
  wire mix_b_mult_n_104;
  wire mix_b_mult_n_105;
  wire mix_b_mult_n_70;
  wire mix_b_mult_n_71;
  wire mix_b_mult_n_72;
  wire mix_b_mult_n_73;
  wire mix_b_mult_n_74;
  wire mix_b_mult_n_75;
  wire mix_b_mult_n_76;
  wire mix_b_mult_n_77;
  wire mix_b_mult_n_78;
  wire mix_b_mult_n_79;
  wire mix_b_mult_n_80;
  wire mix_b_mult_n_81;
  wire mix_b_mult_n_82;
  wire mix_b_mult_n_83;
  wire mix_b_mult_n_84;
  wire mix_b_mult_n_85;
  wire mix_b_mult_n_86;
  wire mix_b_mult_n_87;
  wire mix_b_mult_n_88;
  wire mix_b_mult_n_89;
  wire mix_b_mult_n_90;
  wire mix_b_mult_n_91;
  wire mix_b_mult_n_92;
  wire mix_b_mult_n_93;
  wire mix_b_mult_n_94;
  wire mix_b_mult_n_95;
  wire mix_b_mult_n_96;
  wire mix_b_mult_n_97;
  wire mix_b_mult_n_98;
  wire mix_b_mult_n_99;
  wire mix_sum_i_10_n_0;
  wire mix_sum_i_11_n_0;
  wire mix_sum_i_1_n_0;
  wire mix_sum_i_2_n_0;
  wire mix_sum_i_3_n_0;
  wire mix_sum_i_4_n_0;
  wire mix_sum_i_5_n_0;
  wire mix_sum_i_6_n_0;
  wire mix_sum_i_7_n_0;
  wire mix_sum_i_8_n_0;
  wire mix_sum_i_9_n_0;
  wire mix_sum_n_100;
  wire mix_sum_n_101;
  wire mix_sum_n_102;
  wire mix_sum_n_103;
  wire mix_sum_n_104;
  wire mix_sum_n_105;
  wire mix_sum_n_96;
  wire mix_sum_n_97;
  wire mix_sum_n_98;
  wire mix_sum_n_99;
  wire new_sample;
  wire pipe_audio_s1;
  wire pipe_valid_s1_reg;
  wire pipe_valid_s2_reg;
  wire \read_ptr_reg[6] ;
  wire rst_audio;
  wire [3:0]NLW_fade_counter0_carry_O_UNCONNECTED;
  wire [3:2]NLW_fade_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fade_counter0_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_fade_counter_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_fade_counter_reg[10]_i_1_O_UNCONNECTED ;
  wire NLW_mix_b_mult_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mix_b_mult_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mix_b_mult_OVERFLOW_UNCONNECTED;
  wire NLW_mix_b_mult_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mix_b_mult_PATTERNDETECT_UNCONNECTED;
  wire NLW_mix_b_mult_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mix_b_mult_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mix_b_mult_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mix_b_mult_CARRYOUT_UNCONNECTED;
  wire [47:36]NLW_mix_b_mult_P_UNCONNECTED;
  wire [47:0]NLW_mix_b_mult_PCOUT_UNCONNECTED;
  wire [3:1]NLW_mix_b_mult_i_2_CO_UNCONNECTED;
  wire [3:2]NLW_mix_b_mult_i_2_O_UNCONNECTED;
  wire [0:0]NLW_mix_b_mult_i_4_O_UNCONNECTED;
  wire NLW_mix_sum_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mix_sum_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mix_sum_OVERFLOW_UNCONNECTED;
  wire NLW_mix_sum_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mix_sum_PATTERNDETECT_UNCONNECTED;
  wire NLW_mix_sum_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mix_sum_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mix_sum_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mix_sum_CARRYOUT_UNCONNECTED;
  wire [47:34]NLW_mix_sum_P_UNCONNECTED;
  wire [47:0]NLW_mix_sum_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fade_counter0_carry
       (.CI(1'b0),
        .CO({fade_counter0_carry_n_0,fade_counter0_carry_n_1,fade_counter0_carry_n_2,fade_counter0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({fade_counter0_carry_i_1_n_0,fade_counter0_carry_i_2_n_0,fade_counter0_carry_i_3_n_0,fade_counter0_carry_i_4_n_0}),
        .O(NLW_fade_counter0_carry_O_UNCONNECTED[3:0]),
        .S({fade_counter0_carry_i_5_n_0,fade_counter0_carry_i_6_n_0,fade_counter0_carry_i_7_n_0,fade_counter0_carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fade_counter0_carry__0
       (.CI(fade_counter0_carry_n_0),
        .CO({NLW_fade_counter0_carry__0_CO_UNCONNECTED[3:2],fade_counter0_carry__0_n_2,fade_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,fade_counter0_carry__0_i_1_n_0,fade_counter0_carry__0_i_2_n_0}),
        .O(NLW_fade_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,fade_counter0_carry__0_i_3_n_0,fade_counter0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    fade_counter0_carry__0_i_1
       (.I0(fade_counter_reg__0[10]),
        .I1(fade_target),
        .O(fade_counter0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry__0_i_2
       (.I0(fade_counter_reg__0[8]),
        .I1(fade_counter_reg__0[9]),
        .O(fade_counter0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fade_counter0_carry__0_i_3
       (.I0(fade_target),
        .I1(fade_counter_reg__0[10]),
        .O(fade_counter0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fade_counter0_carry__0_i_3__0
       (.I0(fade_target),
        .I1(fade_counter0_carry__0_0),
        .O(S));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry__0_i_4
       (.I0(fade_counter_reg__0[9]),
        .I1(fade_counter_reg__0[8]),
        .O(fade_counter0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_1
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .O(fade_counter0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_2
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[5]),
        .O(fade_counter0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_3
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__0[3]),
        .O(fade_counter0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_4
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .O(fade_counter0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_5
       (.I0(fade_counter_reg__0[7]),
        .I1(fade_counter_reg__0[6]),
        .O(fade_counter0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_6
       (.I0(fade_counter_reg__0[5]),
        .I1(fade_counter_reg__0[4]),
        .O(fade_counter0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_7
       (.I0(fade_counter_reg__0[3]),
        .I1(fade_counter_reg__0[2]),
        .O(fade_counter0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_8
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__1),
        .O(fade_counter0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[10]_i_2 
       (.I0(fade_counter_reg__0[9]),
        .I1(fade_counter_reg__0[10]),
        .O(\fade_counter[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[10]_i_3 
       (.I0(fade_counter_reg__0[8]),
        .I1(fade_counter_reg__0[9]),
        .O(\fade_counter[10]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fade_counter[4]_i_2 
       (.I0(fade_counter_reg__0[1]),
        .O(\fade_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[4]_i_3 
       (.I0(fade_counter_reg__0[3]),
        .I1(fade_counter_reg__0[4]),
        .O(\fade_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[4]_i_4 
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__0[3]),
        .O(\fade_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[4]_i_5 
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__0[2]),
        .O(\fade_counter[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \fade_counter[4]_i_6 
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__0[10]),
        .I2(fade_target),
        .O(\fade_counter[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_2 
       (.I0(fade_counter_reg__0[7]),
        .I1(fade_counter_reg__0[8]),
        .O(\fade_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_3 
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .O(\fade_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_4 
       (.I0(fade_counter_reg__0[5]),
        .I1(fade_counter_reg__0[6]),
        .O(\fade_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_5 
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[5]),
        .O(\fade_counter[8]_i_5_n_0 ));
  FDRE \fade_counter_reg[0] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(mix_b_mult_i_6_n_0),
        .Q(fade_counter_reg__1),
        .R(rst_audio));
  FDRE \fade_counter_reg[10] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[10]_i_1_n_6 ),
        .Q(fade_counter_reg__0[10]),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fade_counter_reg[10]_i_1 
       (.CI(\fade_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_fade_counter_reg[10]_i_1_CO_UNCONNECTED [3:1],\fade_counter_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,fade_counter_reg__0[8]}),
        .O({\NLW_fade_counter_reg[10]_i_1_O_UNCONNECTED [3:2],\fade_counter_reg[10]_i_1_n_6 ,\fade_counter_reg[10]_i_1_n_7 }),
        .S({1'b0,1'b0,\fade_counter[10]_i_2_n_0 ,\fade_counter[10]_i_3_n_0 }));
  FDRE \fade_counter_reg[1] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1_n_7 ),
        .Q(fade_counter_reg__0[1]),
        .R(rst_audio));
  FDRE \fade_counter_reg[2] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1_n_6 ),
        .Q(fade_counter_reg__0[2]),
        .R(rst_audio));
  FDRE \fade_counter_reg[3] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1_n_5 ),
        .Q(fade_counter_reg__0[3]),
        .R(rst_audio));
  FDRE \fade_counter_reg[4] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1_n_4 ),
        .Q(fade_counter_reg__0[4]),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fade_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\fade_counter_reg[4]_i_1_n_0 ,\fade_counter_reg[4]_i_1_n_1 ,\fade_counter_reg[4]_i_1_n_2 ,\fade_counter_reg[4]_i_1_n_3 }),
        .CYINIT(fade_counter_reg__1),
        .DI({fade_counter_reg__0[3:1],\fade_counter[4]_i_2_n_0 }),
        .O({\fade_counter_reg[4]_i_1_n_4 ,\fade_counter_reg[4]_i_1_n_5 ,\fade_counter_reg[4]_i_1_n_6 ,\fade_counter_reg[4]_i_1_n_7 }),
        .S({\fade_counter[4]_i_3_n_0 ,\fade_counter[4]_i_4_n_0 ,\fade_counter[4]_i_5_n_0 ,\fade_counter[4]_i_6_n_0 }));
  FDRE \fade_counter_reg[5] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1_n_7 ),
        .Q(fade_counter_reg__0[5]),
        .R(rst_audio));
  FDRE \fade_counter_reg[6] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1_n_6 ),
        .Q(fade_counter_reg__0[6]),
        .R(rst_audio));
  FDRE \fade_counter_reg[7] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1_n_5 ),
        .Q(fade_counter_reg__0[7]),
        .R(rst_audio));
  FDRE \fade_counter_reg[8] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1_n_4 ),
        .Q(fade_counter_reg__0[8]),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fade_counter_reg[8]_i_1 
       (.CI(\fade_counter_reg[4]_i_1_n_0 ),
        .CO({\fade_counter_reg[8]_i_1_n_0 ,\fade_counter_reg[8]_i_1_n_1 ,\fade_counter_reg[8]_i_1_n_2 ,\fade_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(fade_counter_reg__0[7:4]),
        .O({\fade_counter_reg[8]_i_1_n_4 ,\fade_counter_reg[8]_i_1_n_5 ,\fade_counter_reg[8]_i_1_n_6 ,\fade_counter_reg[8]_i_1_n_7 }),
        .S({\fade_counter[8]_i_2_n_0 ,\fade_counter[8]_i_3_n_0 ,\fade_counter[8]_i_4_n_0 ,\fade_counter[8]_i_5_n_0 }));
  FDRE \fade_counter_reg[9] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[10]_i_1_n_7 ),
        .Q(fade_counter_reg__0[9]),
        .R(rst_audio));
  LUT3 #(
    .INIT(8'hB8)) 
    \fade_target[10]_i_1 
       (.I0(\fade_target_reg[10]_0 ),
        .I1(crossfade_trig),
        .I2(fade_target),
        .O(\fade_target[10]_i_1_n_0 ));
  FDRE \fade_target_reg[10] 
       (.C(clk_audio),
        .CE(1'b1),
        .D(\fade_target[10]_i_1_n_0 ),
        .Q(fade_target),
        .R(rst_audio));
  design_1_spatial_audio_top_0_0_dsp_fir_folded_3 fir_a
       (.P({fir_a_n_0,fir_a_n_1,fir_a_n_2,fir_a_n_3,fir_a_n_4,fir_a_n_5,fir_a_n_6,fir_a_n_7,fir_a_n_8,fir_a_n_9,fir_a_n_10,fir_a_n_11,fir_a_n_12,fir_a_n_13,fir_a_n_14,fir_a_n_15,fir_a_n_16,fir_a_n_17,fir_a_n_18,fir_a_n_19,fir_a_n_20,fir_a_n_21,fir_a_n_22,fir_a_n_23}),
        .Q(Q),
        .RSTP(RSTP),
        .accumulator_reg_0(accumulator_reg),
        .accumulator_reg_1(accumulator_reg_0),
        .accumulator_reg_2(accumulator_reg_1),
        .accumulator_reg_3(accumulator_reg_2),
        .clk_audio(clk_audio),
        .douta(douta),
        .locked(locked),
        .new_sample(new_sample),
        .pipe_audio_s1(pipe_audio_s1),
        .pipe_valid_s1_reg_0(pipe_valid_s1_reg),
        .pipe_valid_s2_reg_0(pipe_valid_s2_reg),
        .\read_ptr_reg[6]_0 (\read_ptr_reg[6] ),
        .rst_audio(rst_audio));
  design_1_spatial_audio_top_0_0_dsp_fir_folded_4 fir_b
       (.P({fir_b_n_0,fir_b_n_1,fir_b_n_2,fir_b_n_3,fir_b_n_4,fir_b_n_5,fir_b_n_6,fir_b_n_7,fir_b_n_8,fir_b_n_9,fir_b_n_10,fir_b_n_11,fir_b_n_12,fir_b_n_13,fir_b_n_14,fir_b_n_15,fir_b_n_16,fir_b_n_17,fir_b_n_18,fir_b_n_19,fir_b_n_20,fir_b_n_21,fir_b_n_22,fir_b_n_23}),
        .Q(Q),
        .RSTP(RSTP),
        .accumulator_reg_0(accumulator_reg),
        .accumulator_reg_1(pipe_valid_s2_reg),
        .accumulator_reg_2(accumulator_reg_0),
        .accumulator_reg_3(accumulator_reg_1),
        .accumulator_reg_4(accumulator_reg_2),
        .clk_audio(clk_audio),
        .doutb(doutb),
        .new_sample(new_sample),
        .pipe_audio_s1(pipe_audio_s1),
        .\read_ptr_reg[6]_0 (\read_ptr_reg[6] ),
        .rst_audio(rst_audio));
  LUT6 #(
    .INIT(64'hFFFFFFFFF400FF00)) 
    is_fading_i_1
       (.I0(fade_counter_reg__0[10]),
        .I1(fade_target),
        .I2(fade_counter0_carry__0_n_2),
        .I3(is_fading),
        .I4(new_sample),
        .I5(crossfade_trig),
        .O(is_fading_i_1_n_0));
  FDRE is_fading_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(is_fading_i_1_n_0),
        .Q(is_fading),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mix_b_mult
       (.A({fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_1,fir_b_n_2,fir_b_n_3,fir_b_n_4,fir_b_n_5,fir_b_n_6,fir_b_n_7,fir_b_n_8,fir_b_n_9,fir_b_n_10,fir_b_n_11,fir_b_n_12,fir_b_n_13,fir_b_n_14,fir_b_n_15,fir_b_n_16,fir_b_n_17,fir_b_n_18,fir_b_n_19,fir_b_n_20,fir_b_n_21,fir_b_n_22,fir_b_n_23}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mix_b_mult_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mix_b_mult_i_2_n_6,mix_b_mult_i_2_n_7,mix_b_mult_i_3_n_4,mix_b_mult_i_3_n_5,mix_b_mult_i_3_n_6,mix_b_mult_i_3_n_7,mix_b_mult_i_4_n_4,mix_b_mult_i_4_n_5,mix_b_mult_i_4_n_6,mix_b_mult_i_5_n_0,mix_b_mult_i_6_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mix_b_mult_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mix_b_mult_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mix_b_mult_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(new_sample),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(fade_counter),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mix_b_mult_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mix_b_mult_OVERFLOW_UNCONNECTED),
        .P({NLW_mix_b_mult_P_UNCONNECTED[47:36],mix_b_mult_n_70,mix_b_mult_n_71,mix_b_mult_n_72,mix_b_mult_n_73,mix_b_mult_n_74,mix_b_mult_n_75,mix_b_mult_n_76,mix_b_mult_n_77,mix_b_mult_n_78,mix_b_mult_n_79,mix_b_mult_n_80,mix_b_mult_n_81,mix_b_mult_n_82,mix_b_mult_n_83,mix_b_mult_n_84,mix_b_mult_n_85,mix_b_mult_n_86,mix_b_mult_n_87,mix_b_mult_n_88,mix_b_mult_n_89,mix_b_mult_n_90,mix_b_mult_n_91,mix_b_mult_n_92,mix_b_mult_n_93,mix_b_mult_n_94,mix_b_mult_n_95,mix_b_mult_n_96,mix_b_mult_n_97,mix_b_mult_n_98,mix_b_mult_n_99,mix_b_mult_n_100,mix_b_mult_n_101,mix_b_mult_n_102,mix_b_mult_n_103,mix_b_mult_n_104,mix_b_mult_n_105}),
        .PATTERNBDETECT(NLW_mix_b_mult_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mix_b_mult_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mix_b_mult_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_audio),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mix_b_mult_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0800080008080800)) 
    mix_b_mult_i_1
       (.I0(is_fading),
        .I1(new_sample),
        .I2(crossfade_trig),
        .I3(fade_counter0_carry__0_n_2),
        .I4(fade_target),
        .I5(fade_counter_reg__0[10]),
        .O(fade_counter));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_10
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .O(mix_b_mult_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_11
       (.I0(fade_counter_reg__0[5]),
        .I1(fade_counter_reg__0[6]),
        .O(mix_b_mult_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_12
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[5]),
        .O(mix_b_mult_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mix_b_mult_i_13
       (.I0(fade_counter_reg__0[1]),
        .O(mix_b_mult_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_14
       (.I0(fade_counter_reg__0[3]),
        .I1(fade_counter_reg__0[4]),
        .O(mix_b_mult_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_15
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__0[3]),
        .O(mix_b_mult_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_16
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__0[2]),
        .O(mix_b_mult_i_16_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    mix_b_mult_i_17
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__0[10]),
        .I2(fade_target),
        .O(mix_b_mult_i_17_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mix_b_mult_i_2
       (.CI(mix_b_mult_i_3_n_0),
        .CO({NLW_mix_b_mult_i_2_CO_UNCONNECTED[3:1],mix_b_mult_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,fade_counter_reg__0[8]}),
        .O({NLW_mix_b_mult_i_2_O_UNCONNECTED[3:2],mix_b_mult_i_2_n_6,mix_b_mult_i_2_n_7}),
        .S({1'b0,1'b0,mix_b_mult_i_7_n_0,mix_b_mult_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mix_b_mult_i_3
       (.CI(mix_b_mult_i_4_n_0),
        .CO({mix_b_mult_i_3_n_0,mix_b_mult_i_3_n_1,mix_b_mult_i_3_n_2,mix_b_mult_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(fade_counter_reg__0[7:4]),
        .O({mix_b_mult_i_3_n_4,mix_b_mult_i_3_n_5,mix_b_mult_i_3_n_6,mix_b_mult_i_3_n_7}),
        .S({mix_b_mult_i_9_n_0,mix_b_mult_i_10_n_0,mix_b_mult_i_11_n_0,mix_b_mult_i_12_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mix_b_mult_i_4
       (.CI(1'b0),
        .CO({mix_b_mult_i_4_n_0,mix_b_mult_i_4_n_1,mix_b_mult_i_4_n_2,mix_b_mult_i_4_n_3}),
        .CYINIT(fade_counter_reg__1),
        .DI({fade_counter_reg__0[3:1],mix_b_mult_i_13_n_0}),
        .O({mix_b_mult_i_4_n_4,mix_b_mult_i_4_n_5,mix_b_mult_i_4_n_6,NLW_mix_b_mult_i_4_O_UNCONNECTED[0]}),
        .S({mix_b_mult_i_14_n_0,mix_b_mult_i_15_n_0,mix_b_mult_i_16_n_0,mix_b_mult_i_17_n_0}));
  LUT4 #(
    .INIT(16'hA659)) 
    mix_b_mult_i_5
       (.I0(fade_counter_reg__1),
        .I1(fade_target),
        .I2(fade_counter_reg__0[10]),
        .I3(fade_counter_reg__0[1]),
        .O(mix_b_mult_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mix_b_mult_i_6
       (.I0(fade_counter_reg__1),
        .O(mix_b_mult_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_7
       (.I0(fade_counter_reg__0[9]),
        .I1(fade_counter_reg__0[10]),
        .O(mix_b_mult_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_8
       (.I0(fade_counter_reg__0[8]),
        .I1(fade_counter_reg__0[9]),
        .O(mix_b_mult_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_9
       (.I0(fade_counter_reg__0[7]),
        .I1(fade_counter_reg__0[8]),
        .O(mix_b_mult_i_9_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mix_sum
       (.A({fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_1,fir_a_n_2,fir_a_n_3,fir_a_n_4,fir_a_n_5,fir_a_n_6,fir_a_n_7,fir_a_n_8,fir_a_n_9,fir_a_n_10,fir_a_n_11,fir_a_n_12,fir_a_n_13,fir_a_n_14,fir_a_n_15,fir_a_n_16,fir_a_n_17,fir_a_n_18,fir_a_n_19,fir_a_n_20,fir_a_n_21,fir_a_n_22,fir_a_n_23}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mix_sum_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mix_sum_i_1_n_0,mix_sum_i_2_n_0,mix_sum_i_3_n_0,mix_sum_i_4_n_0,mix_sum_i_5_n_0,mix_sum_i_6_n_0,mix_sum_i_7_n_0,mix_sum_i_8_n_0,mix_sum_i_9_n_0,mix_sum_i_10_n_0,fade_counter_reg__1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mix_sum_BCOUT_UNCONNECTED[17:0]),
        .C({mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_73,mix_b_mult_n_74,mix_b_mult_n_75,mix_b_mult_n_76,mix_b_mult_n_77,mix_b_mult_n_78,mix_b_mult_n_79,mix_b_mult_n_80,mix_b_mult_n_81,mix_b_mult_n_82,mix_b_mult_n_83,mix_b_mult_n_84,mix_b_mult_n_85,mix_b_mult_n_86,mix_b_mult_n_87,mix_b_mult_n_88,mix_b_mult_n_89,mix_b_mult_n_90,mix_b_mult_n_91,mix_b_mult_n_92,mix_b_mult_n_93,mix_b_mult_n_94,mix_b_mult_n_95,mix_b_mult_n_96,mix_b_mult_n_97,mix_b_mult_n_98,mix_b_mult_n_99,mix_b_mult_n_100,mix_b_mult_n_101,mix_b_mult_n_102,mix_b_mult_n_103,mix_b_mult_n_104,mix_b_mult_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mix_sum_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mix_sum_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(new_sample),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mix_sum_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mix_sum_OVERFLOW_UNCONNECTED),
        .P({NLW_mix_sum_P_UNCONNECTED[47:34],P,mix_sum_n_96,mix_sum_n_97,mix_sum_n_98,mix_sum_n_99,mix_sum_n_100,mix_sum_n_101,mix_sum_n_102,mix_sum_n_103,mix_sum_n_104,mix_sum_n_105}),
        .PATTERNBDETECT(NLW_mix_sum_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mix_sum_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mix_sum_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_audio),
        .UNDERFLOW(NLW_mix_sum_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000002)) 
    mix_sum_i_1
       (.I0(mix_sum_i_11_n_0),
        .I1(fade_counter_reg__0[9]),
        .I2(fade_counter_reg__0[8]),
        .I3(fade_counter_reg__0[7]),
        .I4(fade_counter_reg__0[6]),
        .I5(fade_counter_reg__0[10]),
        .O(mix_sum_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mix_sum_i_10
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .O(mix_sum_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mix_sum_i_11
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .I2(fade_counter_reg__0[2]),
        .I3(fade_counter_reg__0[3]),
        .I4(fade_counter_reg__0[5]),
        .I5(fade_counter_reg__0[4]),
        .O(mix_sum_i_11_n_0));
  LUT5 #(
    .INIT(32'h0002FFFD)) 
    mix_sum_i_2
       (.I0(mix_sum_i_11_n_0),
        .I1(fade_counter_reg__0[7]),
        .I2(fade_counter_reg__0[6]),
        .I3(fade_counter_reg__0[8]),
        .I4(fade_counter_reg__0[9]),
        .O(mix_sum_i_2_n_0));
  LUT4 #(
    .INIT(16'h10EF)) 
    mix_sum_i_3
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .I2(mix_sum_i_11_n_0),
        .I3(fade_counter_reg__0[8]),
        .O(mix_sum_i_3_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    mix_sum_i_4
       (.I0(fade_counter_reg__0[6]),
        .I1(mix_sum_i_11_n_0),
        .I2(fade_counter_reg__0[7]),
        .O(mix_sum_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_sum_i_5
       (.I0(mix_sum_i_11_n_0),
        .I1(fade_counter_reg__0[6]),
        .O(mix_sum_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    mix_sum_i_6
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[3]),
        .I2(fade_counter_reg__0[2]),
        .I3(fade_counter_reg__0[1]),
        .I4(fade_counter_reg__1),
        .I5(fade_counter_reg__0[5]),
        .O(mix_sum_i_6_n_0));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    mix_sum_i_7
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .I2(fade_counter_reg__0[2]),
        .I3(fade_counter_reg__0[3]),
        .I4(fade_counter_reg__0[4]),
        .O(mix_sum_i_7_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    mix_sum_i_8
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__1),
        .I2(fade_counter_reg__0[1]),
        .I3(fade_counter_reg__0[3]),
        .O(mix_sum_i_8_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    mix_sum_i_9
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__1),
        .I2(fade_counter_reg__0[2]),
        .O(mix_sum_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "hrtf_crossfader" *) 
module design_1_spatial_audio_top_0_0_hrtf_crossfader_1
   (P,
    Q,
    pipe_audio_s1,
    accumulator_reg,
    accumulator_reg_0,
    clk_audio,
    rst_audio,
    RSTP,
    doutb,
    new_sample,
    douta,
    S,
    \read_ptr_reg[6] ,
    fade_target,
    crossfade_trig,
    \read_ptr_reg[6]_0 ,
    accumulator_reg_1,
    accumulator_reg_2,
    accumulator_reg_3);
  output [23:0]P;
  output [0:0]Q;
  input pipe_audio_s1;
  input accumulator_reg;
  input accumulator_reg_0;
  input clk_audio;
  input rst_audio;
  input RSTP;
  input [15:0]doutb;
  input new_sample;
  input [15:0]douta;
  input [0:0]S;
  input \read_ptr_reg[6] ;
  input [0:0]fade_target;
  input crossfade_trig;
  input [6:0]\read_ptr_reg[6]_0 ;
  input [23:0]accumulator_reg_1;
  input accumulator_reg_2;
  input accumulator_reg_3;

  wire [23:0]P;
  wire [0:0]Q;
  wire RSTP;
  wire [0:0]S;
  wire accumulator_reg;
  wire accumulator_reg_0;
  wire [23:0]accumulator_reg_1;
  wire accumulator_reg_2;
  wire accumulator_reg_3;
  wire clk_audio;
  wire crossfade_trig;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire fade_counter;
  wire fade_counter0_carry__0_i_1__0_n_0;
  wire fade_counter0_carry__0_i_2__0_n_0;
  wire fade_counter0_carry__0_i_4__0_n_0;
  wire fade_counter0_carry__0_n_2;
  wire fade_counter0_carry__0_n_3;
  wire fade_counter0_carry_i_1__0_n_0;
  wire fade_counter0_carry_i_2__0_n_0;
  wire fade_counter0_carry_i_3__0_n_0;
  wire fade_counter0_carry_i_4__0_n_0;
  wire fade_counter0_carry_i_5__0_n_0;
  wire fade_counter0_carry_i_6__0_n_0;
  wire fade_counter0_carry_i_7__0_n_0;
  wire fade_counter0_carry_i_8__0_n_0;
  wire fade_counter0_carry_n_0;
  wire fade_counter0_carry_n_1;
  wire fade_counter0_carry_n_2;
  wire fade_counter0_carry_n_3;
  wire \fade_counter[10]_i_2__0_n_0 ;
  wire \fade_counter[10]_i_3__0_n_0 ;
  wire \fade_counter[4]_i_2__0_n_0 ;
  wire \fade_counter[4]_i_3__0_n_0 ;
  wire \fade_counter[4]_i_4__0_n_0 ;
  wire \fade_counter[4]_i_5__0_n_0 ;
  wire \fade_counter[4]_i_6__0_n_0 ;
  wire \fade_counter[8]_i_2__0_n_0 ;
  wire \fade_counter[8]_i_3__0_n_0 ;
  wire \fade_counter[8]_i_4__0_n_0 ;
  wire \fade_counter[8]_i_5__0_n_0 ;
  wire \fade_counter_reg[10]_i_1__0_n_3 ;
  wire \fade_counter_reg[10]_i_1__0_n_6 ;
  wire \fade_counter_reg[10]_i_1__0_n_7 ;
  wire \fade_counter_reg[4]_i_1__0_n_0 ;
  wire \fade_counter_reg[4]_i_1__0_n_1 ;
  wire \fade_counter_reg[4]_i_1__0_n_2 ;
  wire \fade_counter_reg[4]_i_1__0_n_3 ;
  wire \fade_counter_reg[4]_i_1__0_n_4 ;
  wire \fade_counter_reg[4]_i_1__0_n_5 ;
  wire \fade_counter_reg[4]_i_1__0_n_6 ;
  wire \fade_counter_reg[4]_i_1__0_n_7 ;
  wire \fade_counter_reg[8]_i_1__0_n_0 ;
  wire \fade_counter_reg[8]_i_1__0_n_1 ;
  wire \fade_counter_reg[8]_i_1__0_n_2 ;
  wire \fade_counter_reg[8]_i_1__0_n_3 ;
  wire \fade_counter_reg[8]_i_1__0_n_4 ;
  wire \fade_counter_reg[8]_i_1__0_n_5 ;
  wire \fade_counter_reg[8]_i_1__0_n_6 ;
  wire \fade_counter_reg[8]_i_1__0_n_7 ;
  wire [9:1]fade_counter_reg__0;
  wire [0:0]fade_counter_reg__1;
  wire [0:0]fade_target;
  wire fir_a_n_0;
  wire fir_a_n_1;
  wire fir_a_n_10;
  wire fir_a_n_11;
  wire fir_a_n_12;
  wire fir_a_n_13;
  wire fir_a_n_14;
  wire fir_a_n_15;
  wire fir_a_n_16;
  wire fir_a_n_17;
  wire fir_a_n_18;
  wire fir_a_n_19;
  wire fir_a_n_2;
  wire fir_a_n_20;
  wire fir_a_n_21;
  wire fir_a_n_22;
  wire fir_a_n_23;
  wire fir_a_n_3;
  wire fir_a_n_4;
  wire fir_a_n_5;
  wire fir_a_n_6;
  wire fir_a_n_7;
  wire fir_a_n_8;
  wire fir_a_n_9;
  wire fir_b_n_0;
  wire fir_b_n_1;
  wire fir_b_n_10;
  wire fir_b_n_11;
  wire fir_b_n_12;
  wire fir_b_n_13;
  wire fir_b_n_14;
  wire fir_b_n_15;
  wire fir_b_n_16;
  wire fir_b_n_17;
  wire fir_b_n_18;
  wire fir_b_n_19;
  wire fir_b_n_2;
  wire fir_b_n_20;
  wire fir_b_n_21;
  wire fir_b_n_22;
  wire fir_b_n_23;
  wire fir_b_n_3;
  wire fir_b_n_4;
  wire fir_b_n_5;
  wire fir_b_n_6;
  wire fir_b_n_7;
  wire fir_b_n_8;
  wire fir_b_n_9;
  wire is_fading;
  wire is_fading_i_1__0_n_0;
  wire mix_b_mult_i_10__0_n_0;
  wire mix_b_mult_i_11__0_n_0;
  wire mix_b_mult_i_12__0_n_0;
  wire mix_b_mult_i_13__0_n_0;
  wire mix_b_mult_i_14__0_n_0;
  wire mix_b_mult_i_15__0_n_0;
  wire mix_b_mult_i_16__0_n_0;
  wire mix_b_mult_i_17__0_n_0;
  wire mix_b_mult_i_2__0_n_3;
  wire mix_b_mult_i_2__0_n_6;
  wire mix_b_mult_i_2__0_n_7;
  wire mix_b_mult_i_3__0_n_0;
  wire mix_b_mult_i_3__0_n_1;
  wire mix_b_mult_i_3__0_n_2;
  wire mix_b_mult_i_3__0_n_3;
  wire mix_b_mult_i_3__0_n_4;
  wire mix_b_mult_i_3__0_n_5;
  wire mix_b_mult_i_3__0_n_6;
  wire mix_b_mult_i_3__0_n_7;
  wire mix_b_mult_i_4__0_n_0;
  wire mix_b_mult_i_4__0_n_1;
  wire mix_b_mult_i_4__0_n_2;
  wire mix_b_mult_i_4__0_n_3;
  wire mix_b_mult_i_4__0_n_4;
  wire mix_b_mult_i_4__0_n_5;
  wire mix_b_mult_i_4__0_n_6;
  wire mix_b_mult_i_5__0_n_0;
  wire mix_b_mult_i_6__0_n_0;
  wire mix_b_mult_i_7__0_n_0;
  wire mix_b_mult_i_8__0_n_0;
  wire mix_b_mult_i_9__0_n_0;
  wire mix_b_mult_n_100;
  wire mix_b_mult_n_101;
  wire mix_b_mult_n_102;
  wire mix_b_mult_n_103;
  wire mix_b_mult_n_104;
  wire mix_b_mult_n_105;
  wire mix_b_mult_n_70;
  wire mix_b_mult_n_71;
  wire mix_b_mult_n_72;
  wire mix_b_mult_n_73;
  wire mix_b_mult_n_74;
  wire mix_b_mult_n_75;
  wire mix_b_mult_n_76;
  wire mix_b_mult_n_77;
  wire mix_b_mult_n_78;
  wire mix_b_mult_n_79;
  wire mix_b_mult_n_80;
  wire mix_b_mult_n_81;
  wire mix_b_mult_n_82;
  wire mix_b_mult_n_83;
  wire mix_b_mult_n_84;
  wire mix_b_mult_n_85;
  wire mix_b_mult_n_86;
  wire mix_b_mult_n_87;
  wire mix_b_mult_n_88;
  wire mix_b_mult_n_89;
  wire mix_b_mult_n_90;
  wire mix_b_mult_n_91;
  wire mix_b_mult_n_92;
  wire mix_b_mult_n_93;
  wire mix_b_mult_n_94;
  wire mix_b_mult_n_95;
  wire mix_b_mult_n_96;
  wire mix_b_mult_n_97;
  wire mix_b_mult_n_98;
  wire mix_b_mult_n_99;
  wire mix_sum_i_10__0_n_0;
  wire mix_sum_i_11__0_n_0;
  wire mix_sum_i_1__0_n_0;
  wire mix_sum_i_2__0_n_0;
  wire mix_sum_i_3__0_n_0;
  wire mix_sum_i_4__0_n_0;
  wire mix_sum_i_5__0_n_0;
  wire mix_sum_i_6__0_n_0;
  wire mix_sum_i_7__0_n_0;
  wire mix_sum_i_8__0_n_0;
  wire mix_sum_i_9__0_n_0;
  wire mix_sum_n_100;
  wire mix_sum_n_101;
  wire mix_sum_n_102;
  wire mix_sum_n_103;
  wire mix_sum_n_104;
  wire mix_sum_n_105;
  wire mix_sum_n_96;
  wire mix_sum_n_97;
  wire mix_sum_n_98;
  wire mix_sum_n_99;
  wire new_sample;
  wire pipe_audio_s1;
  wire \read_ptr_reg[6] ;
  wire [6:0]\read_ptr_reg[6]_0 ;
  wire rst_audio;
  wire [3:0]NLW_fade_counter0_carry_O_UNCONNECTED;
  wire [3:2]NLW_fade_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fade_counter0_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_fade_counter_reg[10]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_fade_counter_reg[10]_i_1__0_O_UNCONNECTED ;
  wire NLW_mix_b_mult_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mix_b_mult_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mix_b_mult_OVERFLOW_UNCONNECTED;
  wire NLW_mix_b_mult_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mix_b_mult_PATTERNDETECT_UNCONNECTED;
  wire NLW_mix_b_mult_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mix_b_mult_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mix_b_mult_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mix_b_mult_CARRYOUT_UNCONNECTED;
  wire [47:36]NLW_mix_b_mult_P_UNCONNECTED;
  wire [47:0]NLW_mix_b_mult_PCOUT_UNCONNECTED;
  wire [3:1]NLW_mix_b_mult_i_2__0_CO_UNCONNECTED;
  wire [3:2]NLW_mix_b_mult_i_2__0_O_UNCONNECTED;
  wire [0:0]NLW_mix_b_mult_i_4__0_O_UNCONNECTED;
  wire NLW_mix_sum_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mix_sum_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mix_sum_OVERFLOW_UNCONNECTED;
  wire NLW_mix_sum_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mix_sum_PATTERNDETECT_UNCONNECTED;
  wire NLW_mix_sum_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mix_sum_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mix_sum_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mix_sum_CARRYOUT_UNCONNECTED;
  wire [47:34]NLW_mix_sum_P_UNCONNECTED;
  wire [47:0]NLW_mix_sum_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fade_counter0_carry
       (.CI(1'b0),
        .CO({fade_counter0_carry_n_0,fade_counter0_carry_n_1,fade_counter0_carry_n_2,fade_counter0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({fade_counter0_carry_i_1__0_n_0,fade_counter0_carry_i_2__0_n_0,fade_counter0_carry_i_3__0_n_0,fade_counter0_carry_i_4__0_n_0}),
        .O(NLW_fade_counter0_carry_O_UNCONNECTED[3:0]),
        .S({fade_counter0_carry_i_5__0_n_0,fade_counter0_carry_i_6__0_n_0,fade_counter0_carry_i_7__0_n_0,fade_counter0_carry_i_8__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fade_counter0_carry__0
       (.CI(fade_counter0_carry_n_0),
        .CO({NLW_fade_counter0_carry__0_CO_UNCONNECTED[3:2],fade_counter0_carry__0_n_2,fade_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,fade_counter0_carry__0_i_1__0_n_0,fade_counter0_carry__0_i_2__0_n_0}),
        .O(NLW_fade_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,S,fade_counter0_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    fade_counter0_carry__0_i_1__0
       (.I0(Q),
        .I1(fade_target),
        .O(fade_counter0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry__0_i_2__0
       (.I0(fade_counter_reg__0[8]),
        .I1(fade_counter_reg__0[9]),
        .O(fade_counter0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry__0_i_4__0
       (.I0(fade_counter_reg__0[9]),
        .I1(fade_counter_reg__0[8]),
        .O(fade_counter0_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_1__0
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .O(fade_counter0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_2__0
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[5]),
        .O(fade_counter0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_3__0
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__0[3]),
        .O(fade_counter0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fade_counter0_carry_i_4__0
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .O(fade_counter0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_5__0
       (.I0(fade_counter_reg__0[7]),
        .I1(fade_counter_reg__0[6]),
        .O(fade_counter0_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_6__0
       (.I0(fade_counter_reg__0[5]),
        .I1(fade_counter_reg__0[4]),
        .O(fade_counter0_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_7__0
       (.I0(fade_counter_reg__0[3]),
        .I1(fade_counter_reg__0[2]),
        .O(fade_counter0_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fade_counter0_carry_i_8__0
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__1),
        .O(fade_counter0_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[10]_i_2__0 
       (.I0(fade_counter_reg__0[9]),
        .I1(Q),
        .O(\fade_counter[10]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[10]_i_3__0 
       (.I0(fade_counter_reg__0[8]),
        .I1(fade_counter_reg__0[9]),
        .O(\fade_counter[10]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fade_counter[4]_i_2__0 
       (.I0(fade_counter_reg__0[1]),
        .O(\fade_counter[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[4]_i_3__0 
       (.I0(fade_counter_reg__0[3]),
        .I1(fade_counter_reg__0[4]),
        .O(\fade_counter[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[4]_i_4__0 
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__0[3]),
        .O(\fade_counter[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[4]_i_5__0 
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__0[2]),
        .O(\fade_counter[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \fade_counter[4]_i_6__0 
       (.I0(fade_counter_reg__0[1]),
        .I1(Q),
        .I2(fade_target),
        .O(\fade_counter[4]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_2__0 
       (.I0(fade_counter_reg__0[7]),
        .I1(fade_counter_reg__0[8]),
        .O(\fade_counter[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_3__0 
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .O(\fade_counter[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_4__0 
       (.I0(fade_counter_reg__0[5]),
        .I1(fade_counter_reg__0[6]),
        .O(\fade_counter[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fade_counter[8]_i_5__0 
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[5]),
        .O(\fade_counter[8]_i_5__0_n_0 ));
  FDRE \fade_counter_reg[0] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(mix_b_mult_i_6__0_n_0),
        .Q(fade_counter_reg__1),
        .R(rst_audio));
  FDRE \fade_counter_reg[10] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[10]_i_1__0_n_6 ),
        .Q(Q),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fade_counter_reg[10]_i_1__0 
       (.CI(\fade_counter_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_fade_counter_reg[10]_i_1__0_CO_UNCONNECTED [3:1],\fade_counter_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,fade_counter_reg__0[8]}),
        .O({\NLW_fade_counter_reg[10]_i_1__0_O_UNCONNECTED [3:2],\fade_counter_reg[10]_i_1__0_n_6 ,\fade_counter_reg[10]_i_1__0_n_7 }),
        .S({1'b0,1'b0,\fade_counter[10]_i_2__0_n_0 ,\fade_counter[10]_i_3__0_n_0 }));
  FDRE \fade_counter_reg[1] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1__0_n_7 ),
        .Q(fade_counter_reg__0[1]),
        .R(rst_audio));
  FDRE \fade_counter_reg[2] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1__0_n_6 ),
        .Q(fade_counter_reg__0[2]),
        .R(rst_audio));
  FDRE \fade_counter_reg[3] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1__0_n_5 ),
        .Q(fade_counter_reg__0[3]),
        .R(rst_audio));
  FDRE \fade_counter_reg[4] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[4]_i_1__0_n_4 ),
        .Q(fade_counter_reg__0[4]),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fade_counter_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\fade_counter_reg[4]_i_1__0_n_0 ,\fade_counter_reg[4]_i_1__0_n_1 ,\fade_counter_reg[4]_i_1__0_n_2 ,\fade_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(fade_counter_reg__1),
        .DI({fade_counter_reg__0[3:1],\fade_counter[4]_i_2__0_n_0 }),
        .O({\fade_counter_reg[4]_i_1__0_n_4 ,\fade_counter_reg[4]_i_1__0_n_5 ,\fade_counter_reg[4]_i_1__0_n_6 ,\fade_counter_reg[4]_i_1__0_n_7 }),
        .S({\fade_counter[4]_i_3__0_n_0 ,\fade_counter[4]_i_4__0_n_0 ,\fade_counter[4]_i_5__0_n_0 ,\fade_counter[4]_i_6__0_n_0 }));
  FDRE \fade_counter_reg[5] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1__0_n_7 ),
        .Q(fade_counter_reg__0[5]),
        .R(rst_audio));
  FDRE \fade_counter_reg[6] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1__0_n_6 ),
        .Q(fade_counter_reg__0[6]),
        .R(rst_audio));
  FDRE \fade_counter_reg[7] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1__0_n_5 ),
        .Q(fade_counter_reg__0[7]),
        .R(rst_audio));
  FDRE \fade_counter_reg[8] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[8]_i_1__0_n_4 ),
        .Q(fade_counter_reg__0[8]),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fade_counter_reg[8]_i_1__0 
       (.CI(\fade_counter_reg[4]_i_1__0_n_0 ),
        .CO({\fade_counter_reg[8]_i_1__0_n_0 ,\fade_counter_reg[8]_i_1__0_n_1 ,\fade_counter_reg[8]_i_1__0_n_2 ,\fade_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(fade_counter_reg__0[7:4]),
        .O({\fade_counter_reg[8]_i_1__0_n_4 ,\fade_counter_reg[8]_i_1__0_n_5 ,\fade_counter_reg[8]_i_1__0_n_6 ,\fade_counter_reg[8]_i_1__0_n_7 }),
        .S({\fade_counter[8]_i_2__0_n_0 ,\fade_counter[8]_i_3__0_n_0 ,\fade_counter[8]_i_4__0_n_0 ,\fade_counter[8]_i_5__0_n_0 }));
  FDRE \fade_counter_reg[9] 
       (.C(clk_audio),
        .CE(fade_counter),
        .D(\fade_counter_reg[10]_i_1__0_n_7 ),
        .Q(fade_counter_reg__0[9]),
        .R(rst_audio));
  design_1_spatial_audio_top_0_0_dsp_fir_folded fir_a
       (.P({fir_a_n_0,fir_a_n_1,fir_a_n_2,fir_a_n_3,fir_a_n_4,fir_a_n_5,fir_a_n_6,fir_a_n_7,fir_a_n_8,fir_a_n_9,fir_a_n_10,fir_a_n_11,fir_a_n_12,fir_a_n_13,fir_a_n_14,fir_a_n_15,fir_a_n_16,fir_a_n_17,fir_a_n_18,fir_a_n_19,fir_a_n_20,fir_a_n_21,fir_a_n_22,fir_a_n_23}),
        .RSTP(RSTP),
        .accumulator_reg_0(accumulator_reg),
        .accumulator_reg_1(accumulator_reg_0),
        .accumulator_reg_2(accumulator_reg_1),
        .accumulator_reg_3(accumulator_reg_2),
        .accumulator_reg_4(accumulator_reg_3),
        .clk_audio(clk_audio),
        .douta(douta),
        .new_sample(new_sample),
        .pipe_audio_s1(pipe_audio_s1),
        .\read_ptr_reg[6]_0 (\read_ptr_reg[6] ),
        .\read_ptr_reg[6]_1 (\read_ptr_reg[6]_0 ),
        .rst_audio(rst_audio));
  design_1_spatial_audio_top_0_0_dsp_fir_folded_2 fir_b
       (.P({fir_b_n_0,fir_b_n_1,fir_b_n_2,fir_b_n_3,fir_b_n_4,fir_b_n_5,fir_b_n_6,fir_b_n_7,fir_b_n_8,fir_b_n_9,fir_b_n_10,fir_b_n_11,fir_b_n_12,fir_b_n_13,fir_b_n_14,fir_b_n_15,fir_b_n_16,fir_b_n_17,fir_b_n_18,fir_b_n_19,fir_b_n_20,fir_b_n_21,fir_b_n_22,fir_b_n_23}),
        .RSTP(RSTP),
        .accumulator_reg_0(accumulator_reg),
        .accumulator_reg_1(accumulator_reg_0),
        .accumulator_reg_2(accumulator_reg_1),
        .accumulator_reg_3(accumulator_reg_2),
        .accumulator_reg_4(accumulator_reg_3),
        .clk_audio(clk_audio),
        .doutb(doutb),
        .new_sample(new_sample),
        .pipe_audio_s1(pipe_audio_s1),
        .\read_ptr_reg[6]_0 (\read_ptr_reg[6] ),
        .\read_ptr_reg[6]_1 (\read_ptr_reg[6]_0 ),
        .rst_audio(rst_audio));
  LUT6 #(
    .INIT(64'hFFFFFFFFF400FF00)) 
    is_fading_i_1__0
       (.I0(Q),
        .I1(fade_target),
        .I2(fade_counter0_carry__0_n_2),
        .I3(is_fading),
        .I4(new_sample),
        .I5(crossfade_trig),
        .O(is_fading_i_1__0_n_0));
  FDRE is_fading_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(is_fading_i_1__0_n_0),
        .Q(is_fading),
        .R(rst_audio));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mix_b_mult
       (.A({fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_0,fir_b_n_1,fir_b_n_2,fir_b_n_3,fir_b_n_4,fir_b_n_5,fir_b_n_6,fir_b_n_7,fir_b_n_8,fir_b_n_9,fir_b_n_10,fir_b_n_11,fir_b_n_12,fir_b_n_13,fir_b_n_14,fir_b_n_15,fir_b_n_16,fir_b_n_17,fir_b_n_18,fir_b_n_19,fir_b_n_20,fir_b_n_21,fir_b_n_22,fir_b_n_23}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mix_b_mult_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mix_b_mult_i_2__0_n_6,mix_b_mult_i_2__0_n_7,mix_b_mult_i_3__0_n_4,mix_b_mult_i_3__0_n_5,mix_b_mult_i_3__0_n_6,mix_b_mult_i_3__0_n_7,mix_b_mult_i_4__0_n_4,mix_b_mult_i_4__0_n_5,mix_b_mult_i_4__0_n_6,mix_b_mult_i_5__0_n_0,mix_b_mult_i_6__0_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mix_b_mult_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mix_b_mult_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mix_b_mult_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(new_sample),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(fade_counter),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mix_b_mult_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mix_b_mult_OVERFLOW_UNCONNECTED),
        .P({NLW_mix_b_mult_P_UNCONNECTED[47:36],mix_b_mult_n_70,mix_b_mult_n_71,mix_b_mult_n_72,mix_b_mult_n_73,mix_b_mult_n_74,mix_b_mult_n_75,mix_b_mult_n_76,mix_b_mult_n_77,mix_b_mult_n_78,mix_b_mult_n_79,mix_b_mult_n_80,mix_b_mult_n_81,mix_b_mult_n_82,mix_b_mult_n_83,mix_b_mult_n_84,mix_b_mult_n_85,mix_b_mult_n_86,mix_b_mult_n_87,mix_b_mult_n_88,mix_b_mult_n_89,mix_b_mult_n_90,mix_b_mult_n_91,mix_b_mult_n_92,mix_b_mult_n_93,mix_b_mult_n_94,mix_b_mult_n_95,mix_b_mult_n_96,mix_b_mult_n_97,mix_b_mult_n_98,mix_b_mult_n_99,mix_b_mult_n_100,mix_b_mult_n_101,mix_b_mult_n_102,mix_b_mult_n_103,mix_b_mult_n_104,mix_b_mult_n_105}),
        .PATTERNBDETECT(NLW_mix_b_mult_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mix_b_mult_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mix_b_mult_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_audio),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mix_b_mult_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_10__0
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .O(mix_b_mult_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_11__0
       (.I0(fade_counter_reg__0[5]),
        .I1(fade_counter_reg__0[6]),
        .O(mix_b_mult_i_11__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_12__0
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[5]),
        .O(mix_b_mult_i_12__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mix_b_mult_i_13__0
       (.I0(fade_counter_reg__0[1]),
        .O(mix_b_mult_i_13__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_14__0
       (.I0(fade_counter_reg__0[3]),
        .I1(fade_counter_reg__0[4]),
        .O(mix_b_mult_i_14__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_15__0
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__0[3]),
        .O(mix_b_mult_i_15__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_16__0
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__0[2]),
        .O(mix_b_mult_i_16__0_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    mix_b_mult_i_17__0
       (.I0(fade_counter_reg__0[1]),
        .I1(Q),
        .I2(fade_target),
        .O(mix_b_mult_i_17__0_n_0));
  LUT6 #(
    .INIT(64'h0800080008080800)) 
    mix_b_mult_i_1__0
       (.I0(is_fading),
        .I1(new_sample),
        .I2(crossfade_trig),
        .I3(fade_counter0_carry__0_n_2),
        .I4(fade_target),
        .I5(Q),
        .O(fade_counter));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mix_b_mult_i_2__0
       (.CI(mix_b_mult_i_3__0_n_0),
        .CO({NLW_mix_b_mult_i_2__0_CO_UNCONNECTED[3:1],mix_b_mult_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,fade_counter_reg__0[8]}),
        .O({NLW_mix_b_mult_i_2__0_O_UNCONNECTED[3:2],mix_b_mult_i_2__0_n_6,mix_b_mult_i_2__0_n_7}),
        .S({1'b0,1'b0,mix_b_mult_i_7__0_n_0,mix_b_mult_i_8__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mix_b_mult_i_3__0
       (.CI(mix_b_mult_i_4__0_n_0),
        .CO({mix_b_mult_i_3__0_n_0,mix_b_mult_i_3__0_n_1,mix_b_mult_i_3__0_n_2,mix_b_mult_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI(fade_counter_reg__0[7:4]),
        .O({mix_b_mult_i_3__0_n_4,mix_b_mult_i_3__0_n_5,mix_b_mult_i_3__0_n_6,mix_b_mult_i_3__0_n_7}),
        .S({mix_b_mult_i_9__0_n_0,mix_b_mult_i_10__0_n_0,mix_b_mult_i_11__0_n_0,mix_b_mult_i_12__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mix_b_mult_i_4__0
       (.CI(1'b0),
        .CO({mix_b_mult_i_4__0_n_0,mix_b_mult_i_4__0_n_1,mix_b_mult_i_4__0_n_2,mix_b_mult_i_4__0_n_3}),
        .CYINIT(fade_counter_reg__1),
        .DI({fade_counter_reg__0[3:1],mix_b_mult_i_13__0_n_0}),
        .O({mix_b_mult_i_4__0_n_4,mix_b_mult_i_4__0_n_5,mix_b_mult_i_4__0_n_6,NLW_mix_b_mult_i_4__0_O_UNCONNECTED[0]}),
        .S({mix_b_mult_i_14__0_n_0,mix_b_mult_i_15__0_n_0,mix_b_mult_i_16__0_n_0,mix_b_mult_i_17__0_n_0}));
  LUT4 #(
    .INIT(16'hA659)) 
    mix_b_mult_i_5__0
       (.I0(fade_counter_reg__1),
        .I1(fade_target),
        .I2(Q),
        .I3(fade_counter_reg__0[1]),
        .O(mix_b_mult_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mix_b_mult_i_6__0
       (.I0(fade_counter_reg__1),
        .O(mix_b_mult_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_7__0
       (.I0(fade_counter_reg__0[9]),
        .I1(Q),
        .O(mix_b_mult_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_8__0
       (.I0(fade_counter_reg__0[8]),
        .I1(fade_counter_reg__0[9]),
        .O(mix_b_mult_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_b_mult_i_9__0
       (.I0(fade_counter_reg__0[7]),
        .I1(fade_counter_reg__0[8]),
        .O(mix_b_mult_i_9__0_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mix_sum
       (.A({fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_0,fir_a_n_1,fir_a_n_2,fir_a_n_3,fir_a_n_4,fir_a_n_5,fir_a_n_6,fir_a_n_7,fir_a_n_8,fir_a_n_9,fir_a_n_10,fir_a_n_11,fir_a_n_12,fir_a_n_13,fir_a_n_14,fir_a_n_15,fir_a_n_16,fir_a_n_17,fir_a_n_18,fir_a_n_19,fir_a_n_20,fir_a_n_21,fir_a_n_22,fir_a_n_23}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mix_sum_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mix_sum_i_1__0_n_0,mix_sum_i_2__0_n_0,mix_sum_i_3__0_n_0,mix_sum_i_4__0_n_0,mix_sum_i_5__0_n_0,mix_sum_i_6__0_n_0,mix_sum_i_7__0_n_0,mix_sum_i_8__0_n_0,mix_sum_i_9__0_n_0,mix_sum_i_10__0_n_0,fade_counter_reg__1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mix_sum_BCOUT_UNCONNECTED[17:0]),
        .C({mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_72,mix_b_mult_n_73,mix_b_mult_n_74,mix_b_mult_n_75,mix_b_mult_n_76,mix_b_mult_n_77,mix_b_mult_n_78,mix_b_mult_n_79,mix_b_mult_n_80,mix_b_mult_n_81,mix_b_mult_n_82,mix_b_mult_n_83,mix_b_mult_n_84,mix_b_mult_n_85,mix_b_mult_n_86,mix_b_mult_n_87,mix_b_mult_n_88,mix_b_mult_n_89,mix_b_mult_n_90,mix_b_mult_n_91,mix_b_mult_n_92,mix_b_mult_n_93,mix_b_mult_n_94,mix_b_mult_n_95,mix_b_mult_n_96,mix_b_mult_n_97,mix_b_mult_n_98,mix_b_mult_n_99,mix_b_mult_n_100,mix_b_mult_n_101,mix_b_mult_n_102,mix_b_mult_n_103,mix_b_mult_n_104,mix_b_mult_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mix_sum_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mix_sum_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(new_sample),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_audio),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mix_sum_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mix_sum_OVERFLOW_UNCONNECTED),
        .P({NLW_mix_sum_P_UNCONNECTED[47:34],P,mix_sum_n_96,mix_sum_n_97,mix_sum_n_98,mix_sum_n_99,mix_sum_n_100,mix_sum_n_101,mix_sum_n_102,mix_sum_n_103,mix_sum_n_104,mix_sum_n_105}),
        .PATTERNBDETECT(NLW_mix_sum_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mix_sum_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mix_sum_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_audio),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_audio),
        .UNDERFLOW(NLW_mix_sum_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    mix_sum_i_10__0
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .O(mix_sum_i_10__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mix_sum_i_11__0
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .I2(fade_counter_reg__0[2]),
        .I3(fade_counter_reg__0[3]),
        .I4(fade_counter_reg__0[5]),
        .I5(fade_counter_reg__0[4]),
        .O(mix_sum_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000002)) 
    mix_sum_i_1__0
       (.I0(mix_sum_i_11__0_n_0),
        .I1(fade_counter_reg__0[9]),
        .I2(fade_counter_reg__0[8]),
        .I3(fade_counter_reg__0[7]),
        .I4(fade_counter_reg__0[6]),
        .I5(Q),
        .O(mix_sum_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h0002FFFD)) 
    mix_sum_i_2__0
       (.I0(mix_sum_i_11__0_n_0),
        .I1(fade_counter_reg__0[7]),
        .I2(fade_counter_reg__0[6]),
        .I3(fade_counter_reg__0[8]),
        .I4(fade_counter_reg__0[9]),
        .O(mix_sum_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h10EF)) 
    mix_sum_i_3__0
       (.I0(fade_counter_reg__0[6]),
        .I1(fade_counter_reg__0[7]),
        .I2(mix_sum_i_11__0_n_0),
        .I3(fade_counter_reg__0[8]),
        .O(mix_sum_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    mix_sum_i_4__0
       (.I0(fade_counter_reg__0[6]),
        .I1(mix_sum_i_11__0_n_0),
        .I2(fade_counter_reg__0[7]),
        .O(mix_sum_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mix_sum_i_5__0
       (.I0(mix_sum_i_11__0_n_0),
        .I1(fade_counter_reg__0[6]),
        .O(mix_sum_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    mix_sum_i_6__0
       (.I0(fade_counter_reg__0[4]),
        .I1(fade_counter_reg__0[3]),
        .I2(fade_counter_reg__0[2]),
        .I3(fade_counter_reg__0[1]),
        .I4(fade_counter_reg__1),
        .I5(fade_counter_reg__0[5]),
        .O(mix_sum_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    mix_sum_i_7__0
       (.I0(fade_counter_reg__1),
        .I1(fade_counter_reg__0[1]),
        .I2(fade_counter_reg__0[2]),
        .I3(fade_counter_reg__0[3]),
        .I4(fade_counter_reg__0[4]),
        .O(mix_sum_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    mix_sum_i_8__0
       (.I0(fade_counter_reg__0[2]),
        .I1(fade_counter_reg__1),
        .I2(fade_counter_reg__0[1]),
        .I3(fade_counter_reg__0[3]),
        .O(mix_sum_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    mix_sum_i_9__0
       (.I0(fade_counter_reg__0[1]),
        .I1(fade_counter_reg__1),
        .I2(fade_counter_reg__0[2]),
        .O(mix_sum_i_9__0_n_0));
endmodule

(* ORIG_REF_NAME = "i2s_controller" *) 
module design_1_spatial_audio_top_0_0_i2s_controller
   (sclk_reg_0,
    rst_audio,
    new_sample,
    rx_lrck,
    tx_data,
    locked_0,
    E,
    new_sample_pulse_reg_0,
    new_sample_pulse_reg_1,
    new_sample_pulse_reg_2,
    new_sample_pulse_reg_3,
    RSTP,
    \lockout_counter_reg[10] ,
    locked_1,
    \l_data_rx_reg[23]_0 ,
    \r_data_rx_reg[23]_0 ,
    clk_audio,
    rx_data,
    locked,
    Q,
    P,
    \tx_shift_reg[23]_0 ,
    \latched_angle_reg[6] ,
    \latched_angle_reg[6]_0 ,
    is_locked_out_reg,
    is_locked_out_reg_0,
    is_locked_out_reg_1,
    is_locked_out_reg_2);
  output sclk_reg_0;
  output rst_audio;
  output new_sample;
  output rx_lrck;
  output tx_data;
  output locked_0;
  output [0:0]E;
  output [0:0]new_sample_pulse_reg_0;
  output [0:0]new_sample_pulse_reg_1;
  output new_sample_pulse_reg_2;
  output [0:0]new_sample_pulse_reg_3;
  output RSTP;
  output \lockout_counter_reg[10] ;
  output locked_1;
  output [23:0]\l_data_rx_reg[23]_0 ;
  output [23:0]\r_data_rx_reg[23]_0 ;
  input clk_audio;
  input rx_data;
  input locked;
  input [0:0]Q;
  input [23:0]P;
  input [23:0]\tx_shift_reg[23]_0 ;
  input \latched_angle_reg[6] ;
  input \latched_angle_reg[6]_0 ;
  input is_locked_out_reg;
  input [0:0]is_locked_out_reg_0;
  input is_locked_out_reg_1;
  input is_locked_out_reg_2;

  wire [0:0]E;
  wire [23:0]P;
  wire [0:0]Q;
  wire RSTP;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire [5:0]bit_cnt_reg__0;
  wire clk_audio;
  wire [2:0]div_cnt;
  wire \div_cnt[0]_i_1_n_0 ;
  wire \div_cnt[1]_i_1_n_0 ;
  wire \div_cnt[2]_i_1_n_0 ;
  wire is_locked_out_reg;
  wire [0:0]is_locked_out_reg_0;
  wire is_locked_out_reg_1;
  wire is_locked_out_reg_2;
  wire \l_data_rx[23]_i_1_n_0 ;
  wire [23:0]\l_data_rx_reg[23]_0 ;
  wire \latched_angle_reg[6] ;
  wire \latched_angle_reg[6]_0 ;
  wire locked;
  wire locked_0;
  wire locked_1;
  wire \lockout_counter_reg[10] ;
  wire lrck_i_1_n_0;
  wire lrck_i_2_n_0;
  wire lrck_i_3_n_0;
  wire lrck_i_4_n_0;
  wire new_sample;
  wire new_sample_pulse_i_1_n_0;
  wire new_sample_pulse_i_2_n_0;
  wire new_sample_pulse_i_3_n_0;
  wire [0:0]new_sample_pulse_reg_0;
  wire [0:0]new_sample_pulse_reg_1;
  wire new_sample_pulse_reg_2;
  wire [0:0]new_sample_pulse_reg_3;
  wire p_0_in__2;
  wire [5:0]p_0_in__3;
  wire [23:0]\r_data_rx_reg[23]_0 ;
  wire rst_audio;
  wire rx_data;
  wire rx_lrck;
  wire [23:0]rx_shift;
  wire \rx_shift[23]_i_2_n_0 ;
  wire rx_shift_0;
  wire sclk_fall;
  wire sclk_reg_0;
  wire sd_rx_pipe;
  wire sd_rx_sync;
  wire sd_tx_i_1_n_0;
  wire tx_data;
  wire [23:0]tx_shift;
  wire \tx_shift[0]_i_1_n_0 ;
  wire \tx_shift[10]_i_1_n_0 ;
  wire \tx_shift[11]_i_1_n_0 ;
  wire \tx_shift[12]_i_1_n_0 ;
  wire \tx_shift[13]_i_1_n_0 ;
  wire \tx_shift[14]_i_1_n_0 ;
  wire \tx_shift[15]_i_1_n_0 ;
  wire \tx_shift[16]_i_1_n_0 ;
  wire \tx_shift[17]_i_1_n_0 ;
  wire \tx_shift[18]_i_1_n_0 ;
  wire \tx_shift[19]_i_1_n_0 ;
  wire \tx_shift[1]_i_1_n_0 ;
  wire \tx_shift[20]_i_1_n_0 ;
  wire \tx_shift[21]_i_1_n_0 ;
  wire \tx_shift[22]_i_1_n_0 ;
  wire \tx_shift[23]_i_1_n_0 ;
  wire \tx_shift[23]_i_2_n_0 ;
  wire \tx_shift[23]_i_3_n_0 ;
  wire \tx_shift[23]_i_4_n_0 ;
  wire \tx_shift[2]_i_1_n_0 ;
  wire \tx_shift[3]_i_1_n_0 ;
  wire \tx_shift[4]_i_1_n_0 ;
  wire \tx_shift[5]_i_1_n_0 ;
  wire \tx_shift[6]_i_1_n_0 ;
  wire \tx_shift[7]_i_1_n_0 ;
  wire \tx_shift[8]_i_1_n_0 ;
  wire \tx_shift[9]_i_1_n_0 ;
  wire [23:0]\tx_shift_reg[23]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    accumulator_reg_i_2__2
       (.I0(new_sample),
        .O(new_sample_pulse_reg_2));
  LUT2 #(
    .INIT(4'hB)) 
    accumulator_reg_i_3__2
       (.I0(new_sample),
        .I1(locked),
        .O(RSTP));
  LUT3 #(
    .INIT(8'h08)) 
    audio_history_reg_0_63_0_2_i_1
       (.I0(locked),
        .I1(new_sample),
        .I2(Q),
        .O(locked_0));
  LUT3 #(
    .INIT(8'h80)) 
    audio_history_reg_64_127_0_2_i_1
       (.I0(locked),
        .I1(new_sample),
        .I2(Q),
        .O(locked_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt_reg__0[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt_reg__0[0]),
        .I1(bit_cnt_reg__0[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt_reg__0[1]),
        .I1(bit_cnt_reg__0[0]),
        .I2(bit_cnt_reg__0[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_cnt[3]_i_1 
       (.I0(bit_cnt_reg__0[2]),
        .I1(bit_cnt_reg__0[0]),
        .I2(bit_cnt_reg__0[1]),
        .I3(bit_cnt_reg__0[3]),
        .O(\bit_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bit_cnt[4]_i_1 
       (.I0(bit_cnt_reg__0[1]),
        .I1(bit_cnt_reg__0[0]),
        .I2(bit_cnt_reg__0[2]),
        .I3(bit_cnt_reg__0[3]),
        .I4(bit_cnt_reg__0[4]),
        .O(p_0_in__3[4]));
  LUT4 #(
    .INIT(16'h0001)) 
    \bit_cnt[5]_i_1 
       (.I0(sclk_reg_0),
        .I1(div_cnt[2]),
        .I2(div_cnt[1]),
        .I3(div_cnt[0]),
        .O(sclk_fall));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bit_cnt[5]_i_2 
       (.I0(bit_cnt_reg__0[3]),
        .I1(bit_cnt_reg__0[4]),
        .I2(bit_cnt_reg__0[1]),
        .I3(bit_cnt_reg__0[0]),
        .I4(bit_cnt_reg__0[2]),
        .I5(bit_cnt_reg__0[5]),
        .O(p_0_in__3[5]));
  FDRE \bit_cnt_reg[0] 
       (.C(clk_audio),
        .CE(sclk_fall),
        .D(p_0_in__3[0]),
        .Q(bit_cnt_reg__0[0]),
        .R(rst_audio));
  FDRE \bit_cnt_reg[1] 
       (.C(clk_audio),
        .CE(sclk_fall),
        .D(p_0_in__3[1]),
        .Q(bit_cnt_reg__0[1]),
        .R(rst_audio));
  FDRE \bit_cnt_reg[2] 
       (.C(clk_audio),
        .CE(sclk_fall),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(bit_cnt_reg__0[2]),
        .R(rst_audio));
  FDRE \bit_cnt_reg[3] 
       (.C(clk_audio),
        .CE(sclk_fall),
        .D(\bit_cnt[3]_i_1_n_0 ),
        .Q(bit_cnt_reg__0[3]),
        .R(rst_audio));
  FDRE \bit_cnt_reg[4] 
       (.C(clk_audio),
        .CE(sclk_fall),
        .D(p_0_in__3[4]),
        .Q(bit_cnt_reg__0[4]),
        .R(rst_audio));
  FDRE \bit_cnt_reg[5] 
       (.C(clk_audio),
        .CE(sclk_fall),
        .D(p_0_in__3[5]),
        .Q(bit_cnt_reg__0[5]),
        .R(rst_audio));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[13]_i_1__0 
       (.I0(new_sample),
        .I1(\latched_angle_reg[6]_0 ),
        .O(new_sample_pulse_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \div_cnt[0]_i_1 
       (.I0(div_cnt[0]),
        .O(\div_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \div_cnt[1]_i_1 
       (.I0(div_cnt[0]),
        .I1(div_cnt[1]),
        .O(\div_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \div_cnt[2]_i_1 
       (.I0(div_cnt[1]),
        .I1(div_cnt[0]),
        .I2(div_cnt[2]),
        .O(\div_cnt[2]_i_1_n_0 ));
  FDRE \div_cnt_reg[0] 
       (.C(clk_audio),
        .CE(1'b1),
        .D(\div_cnt[0]_i_1_n_0 ),
        .Q(div_cnt[0]),
        .R(rst_audio));
  FDRE \div_cnt_reg[1] 
       (.C(clk_audio),
        .CE(1'b1),
        .D(\div_cnt[1]_i_1_n_0 ),
        .Q(div_cnt[1]),
        .R(rst_audio));
  FDRE \div_cnt_reg[2] 
       (.C(clk_audio),
        .CE(1'b1),
        .D(\div_cnt[2]_i_1_n_0 ),
        .Q(div_cnt[2]),
        .R(rst_audio));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFF4C)) 
    is_locked_out_i_1
       (.I0(is_locked_out_reg_0),
        .I1(is_locked_out_reg),
        .I2(new_sample),
        .I3(is_locked_out_reg_1),
        .I4(is_locked_out_reg_2),
        .O(\lockout_counter_reg[10] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \l_data_rx[23]_i_1 
       (.I0(bit_cnt_reg__0[5]),
        .I1(sclk_reg_0),
        .I2(bit_cnt_reg__0[0]),
        .I3(new_sample_pulse_i_2_n_0),
        .I4(new_sample_pulse_i_3_n_0),
        .O(\l_data_rx[23]_i_1_n_0 ));
  FDRE \l_data_rx_reg[0] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[0]),
        .Q(\l_data_rx_reg[23]_0 [0]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[10] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[10]),
        .Q(\l_data_rx_reg[23]_0 [10]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[11] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[11]),
        .Q(\l_data_rx_reg[23]_0 [11]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[12] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[12]),
        .Q(\l_data_rx_reg[23]_0 [12]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[13] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[13]),
        .Q(\l_data_rx_reg[23]_0 [13]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[14] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[14]),
        .Q(\l_data_rx_reg[23]_0 [14]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[15] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[15]),
        .Q(\l_data_rx_reg[23]_0 [15]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[16] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[16]),
        .Q(\l_data_rx_reg[23]_0 [16]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[17] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[17]),
        .Q(\l_data_rx_reg[23]_0 [17]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[18] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[18]),
        .Q(\l_data_rx_reg[23]_0 [18]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[19] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[19]),
        .Q(\l_data_rx_reg[23]_0 [19]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[1] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[1]),
        .Q(\l_data_rx_reg[23]_0 [1]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[20] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[20]),
        .Q(\l_data_rx_reg[23]_0 [20]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[21] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[21]),
        .Q(\l_data_rx_reg[23]_0 [21]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[22] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[22]),
        .Q(\l_data_rx_reg[23]_0 [22]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[23] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[23]),
        .Q(\l_data_rx_reg[23]_0 [23]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[2] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[2]),
        .Q(\l_data_rx_reg[23]_0 [2]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[3] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[3]),
        .Q(\l_data_rx_reg[23]_0 [3]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[4] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[4]),
        .Q(\l_data_rx_reg[23]_0 [4]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[5] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[5]),
        .Q(\l_data_rx_reg[23]_0 [5]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[6] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[6]),
        .Q(\l_data_rx_reg[23]_0 [6]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[7] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[7]),
        .Q(\l_data_rx_reg[23]_0 [7]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[8] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[8]),
        .Q(\l_data_rx_reg[23]_0 [8]),
        .R(rst_audio));
  FDRE \l_data_rx_reg[9] 
       (.C(clk_audio),
        .CE(\l_data_rx[23]_i_1_n_0 ),
        .D(rx_shift[9]),
        .Q(\l_data_rx_reg[23]_0 [9]),
        .R(rst_audio));
  LUT2 #(
    .INIT(4'h2)) 
    \latched_angle[6]_i_1 
       (.I0(new_sample),
        .I1(\latched_angle_reg[6] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_angle[6]_i_1__0 
       (.I0(new_sample),
        .I1(\latched_angle_reg[6]_0 ),
        .O(new_sample_pulse_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \lockout_counter[10]_i_2 
       (.I0(new_sample),
        .I1(is_locked_out_reg),
        .I2(is_locked_out_reg_0),
        .O(new_sample_pulse_reg_3));
  LUT6 #(
    .INIT(64'h888888888888880A)) 
    lrck_i_1
       (.I0(locked),
        .I1(rx_lrck),
        .I2(bit_cnt_reg__0[5]),
        .I3(lrck_i_2_n_0),
        .I4(lrck_i_3_n_0),
        .I5(lrck_i_4_n_0),
        .O(lrck_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    lrck_i_2
       (.I0(bit_cnt_reg__0[1]),
        .I1(bit_cnt_reg__0[0]),
        .I2(bit_cnt_reg__0[2]),
        .O(lrck_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    lrck_i_3
       (.I0(bit_cnt_reg__0[3]),
        .I1(bit_cnt_reg__0[4]),
        .O(lrck_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    lrck_i_4
       (.I0(div_cnt[0]),
        .I1(div_cnt[1]),
        .I2(div_cnt[2]),
        .I3(sclk_reg_0),
        .O(lrck_i_4_n_0));
  FDRE lrck_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(lrck_i_1_n_0),
        .Q(rx_lrck),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    new_sample_pulse_i_1
       (.I0(sclk_reg_0),
        .I1(bit_cnt_reg__0[5]),
        .I2(bit_cnt_reg__0[0]),
        .I3(new_sample_pulse_i_2_n_0),
        .I4(new_sample_pulse_i_3_n_0),
        .O(new_sample_pulse_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    new_sample_pulse_i_2
       (.I0(bit_cnt_reg__0[2]),
        .I1(bit_cnt_reg__0[1]),
        .I2(bit_cnt_reg__0[4]),
        .I3(bit_cnt_reg__0[3]),
        .O(new_sample_pulse_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    new_sample_pulse_i_3
       (.I0(div_cnt[2]),
        .I1(div_cnt[1]),
        .I2(div_cnt[0]),
        .O(new_sample_pulse_i_3_n_0));
  FDRE new_sample_pulse_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(new_sample_pulse_i_1_n_0),
        .Q(new_sample),
        .R(rst_audio));
  FDRE \r_data_rx_reg[0] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[0]),
        .Q(\r_data_rx_reg[23]_0 [0]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[10] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[10]),
        .Q(\r_data_rx_reg[23]_0 [10]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[11] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[11]),
        .Q(\r_data_rx_reg[23]_0 [11]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[12] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[12]),
        .Q(\r_data_rx_reg[23]_0 [12]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[13] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[13]),
        .Q(\r_data_rx_reg[23]_0 [13]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[14] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[14]),
        .Q(\r_data_rx_reg[23]_0 [14]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[15] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[15]),
        .Q(\r_data_rx_reg[23]_0 [15]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[16] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[16]),
        .Q(\r_data_rx_reg[23]_0 [16]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[17] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[17]),
        .Q(\r_data_rx_reg[23]_0 [17]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[18] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[18]),
        .Q(\r_data_rx_reg[23]_0 [18]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[19] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[19]),
        .Q(\r_data_rx_reg[23]_0 [19]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[1] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[1]),
        .Q(\r_data_rx_reg[23]_0 [1]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[20] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[20]),
        .Q(\r_data_rx_reg[23]_0 [20]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[21] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[21]),
        .Q(\r_data_rx_reg[23]_0 [21]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[22] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[22]),
        .Q(\r_data_rx_reg[23]_0 [22]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[23] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[23]),
        .Q(\r_data_rx_reg[23]_0 [23]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[2] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[2]),
        .Q(\r_data_rx_reg[23]_0 [2]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[3] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[3]),
        .Q(\r_data_rx_reg[23]_0 [3]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[4] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[4]),
        .Q(\r_data_rx_reg[23]_0 [4]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[5] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[5]),
        .Q(\r_data_rx_reg[23]_0 [5]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[6] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[6]),
        .Q(\r_data_rx_reg[23]_0 [6]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[7] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[7]),
        .Q(\r_data_rx_reg[23]_0 [7]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[8] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[8]),
        .Q(\r_data_rx_reg[23]_0 [8]),
        .R(rst_audio));
  FDRE \r_data_rx_reg[9] 
       (.C(clk_audio),
        .CE(new_sample_pulse_i_1_n_0),
        .D(rx_shift[9]),
        .Q(\r_data_rx_reg[23]_0 [9]),
        .R(rst_audio));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \rx_shift[23]_i_1 
       (.I0(div_cnt[2]),
        .I1(div_cnt[1]),
        .I2(div_cnt[0]),
        .I3(locked),
        .I4(sclk_reg_0),
        .I5(\rx_shift[23]_i_2_n_0 ),
        .O(rx_shift_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h01FFFFFE)) 
    \rx_shift[23]_i_2 
       (.I0(bit_cnt_reg__0[2]),
        .I1(bit_cnt_reg__0[1]),
        .I2(bit_cnt_reg__0[0]),
        .I3(bit_cnt_reg__0[3]),
        .I4(bit_cnt_reg__0[4]),
        .O(\rx_shift[23]_i_2_n_0 ));
  FDRE \rx_shift_reg[0] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(sd_rx_pipe),
        .Q(rx_shift[0]),
        .R(1'b0));
  FDRE \rx_shift_reg[10] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[9]),
        .Q(rx_shift[10]),
        .R(1'b0));
  FDRE \rx_shift_reg[11] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[10]),
        .Q(rx_shift[11]),
        .R(1'b0));
  FDRE \rx_shift_reg[12] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[11]),
        .Q(rx_shift[12]),
        .R(1'b0));
  FDRE \rx_shift_reg[13] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[12]),
        .Q(rx_shift[13]),
        .R(1'b0));
  FDRE \rx_shift_reg[14] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[13]),
        .Q(rx_shift[14]),
        .R(1'b0));
  FDRE \rx_shift_reg[15] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[14]),
        .Q(rx_shift[15]),
        .R(1'b0));
  FDRE \rx_shift_reg[16] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[15]),
        .Q(rx_shift[16]),
        .R(1'b0));
  FDRE \rx_shift_reg[17] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[16]),
        .Q(rx_shift[17]),
        .R(1'b0));
  FDRE \rx_shift_reg[18] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[17]),
        .Q(rx_shift[18]),
        .R(1'b0));
  FDRE \rx_shift_reg[19] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[18]),
        .Q(rx_shift[19]),
        .R(1'b0));
  FDRE \rx_shift_reg[1] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[0]),
        .Q(rx_shift[1]),
        .R(1'b0));
  FDRE \rx_shift_reg[20] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[19]),
        .Q(rx_shift[20]),
        .R(1'b0));
  FDRE \rx_shift_reg[21] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[20]),
        .Q(rx_shift[21]),
        .R(1'b0));
  FDRE \rx_shift_reg[22] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[21]),
        .Q(rx_shift[22]),
        .R(1'b0));
  FDRE \rx_shift_reg[23] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[22]),
        .Q(rx_shift[23]),
        .R(1'b0));
  FDRE \rx_shift_reg[2] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[1]),
        .Q(rx_shift[2]),
        .R(1'b0));
  FDRE \rx_shift_reg[3] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[2]),
        .Q(rx_shift[3]),
        .R(1'b0));
  FDRE \rx_shift_reg[4] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[3]),
        .Q(rx_shift[4]),
        .R(1'b0));
  FDRE \rx_shift_reg[5] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[4]),
        .Q(rx_shift[5]),
        .R(1'b0));
  FDRE \rx_shift_reg[6] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[5]),
        .Q(rx_shift[6]),
        .R(1'b0));
  FDRE \rx_shift_reg[7] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[6]),
        .Q(rx_shift[7]),
        .R(1'b0));
  FDRE \rx_shift_reg[8] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[7]),
        .Q(rx_shift[8]),
        .R(1'b0));
  FDRE \rx_shift_reg[9] 
       (.C(clk_audio),
        .CE(rx_shift_0),
        .D(rx_shift[8]),
        .Q(rx_shift[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sclk_i_1
       (.I0(locked),
        .O(rst_audio));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    sclk_i_2
       (.I0(div_cnt[0]),
        .I1(div_cnt[1]),
        .I2(div_cnt[2]),
        .I3(sclk_reg_0),
        .O(p_0_in__2));
  FDRE sclk_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(p_0_in__2),
        .Q(sclk_reg_0),
        .R(rst_audio));
  FDRE sd_rx_pipe_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(sd_rx_sync),
        .Q(sd_rx_pipe),
        .R(1'b0));
  FDRE sd_rx_sync_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(rx_data),
        .Q(sd_rx_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888888800A0A0A0)) 
    sd_tx_i_1
       (.I0(locked),
        .I1(tx_data),
        .I2(tx_shift[23]),
        .I3(bit_cnt_reg__0[3]),
        .I4(bit_cnt_reg__0[4]),
        .I5(lrck_i_4_n_0),
        .O(sd_tx_i_1_n_0));
  FDRE sd_tx_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(sd_tx_i_1_n_0),
        .Q(tx_data),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    \tx_shift[0]_i_1 
       (.I0(\tx_shift[23]_i_4_n_0 ),
        .I1(\tx_shift_reg[23]_0 [0]),
        .I2(P[0]),
        .I3(\tx_shift[23]_i_3_n_0 ),
        .O(\tx_shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[10]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[10]),
        .I2(\tx_shift_reg[23]_0 [10]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[9]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[11]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[11]),
        .I2(\tx_shift_reg[23]_0 [11]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[10]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[12]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[12]),
        .I2(\tx_shift_reg[23]_0 [12]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[11]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[13]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[13]),
        .I2(\tx_shift_reg[23]_0 [13]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[12]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[14]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[14]),
        .I2(\tx_shift_reg[23]_0 [14]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[13]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[15]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[15]),
        .I2(\tx_shift_reg[23]_0 [15]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[14]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[16]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[16]),
        .I2(\tx_shift_reg[23]_0 [16]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[15]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[17]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[17]),
        .I2(\tx_shift_reg[23]_0 [17]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[16]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[18]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[18]),
        .I2(\tx_shift_reg[23]_0 [18]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[17]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[19]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[19]),
        .I2(\tx_shift_reg[23]_0 [19]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[18]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[1]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[1]),
        .I2(\tx_shift_reg[23]_0 [1]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[0]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[20]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[20]),
        .I2(\tx_shift_reg[23]_0 [20]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[19]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[21]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[21]),
        .I2(\tx_shift_reg[23]_0 [21]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[20]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[22]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[22]),
        .I2(\tx_shift_reg[23]_0 [22]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[21]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440000000)) 
    \tx_shift[23]_i_1 
       (.I0(lrck_i_4_n_0),
        .I1(locked),
        .I2(bit_cnt_reg__0[1]),
        .I3(bit_cnt_reg__0[0]),
        .I4(bit_cnt_reg__0[2]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[23]_i_2 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[23]),
        .I2(\tx_shift_reg[23]_0 [23]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[22]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \tx_shift[23]_i_3 
       (.I0(bit_cnt_reg__0[5]),
        .I1(bit_cnt_reg__0[1]),
        .I2(bit_cnt_reg__0[0]),
        .I3(bit_cnt_reg__0[2]),
        .I4(bit_cnt_reg__0[4]),
        .I5(bit_cnt_reg__0[3]),
        .O(\tx_shift[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tx_shift[23]_i_4 
       (.I0(bit_cnt_reg__0[5]),
        .I1(bit_cnt_reg__0[1]),
        .I2(bit_cnt_reg__0[0]),
        .I3(bit_cnt_reg__0[2]),
        .I4(bit_cnt_reg__0[4]),
        .I5(bit_cnt_reg__0[3]),
        .O(\tx_shift[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[2]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[2]),
        .I2(\tx_shift_reg[23]_0 [2]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[1]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[3]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[3]),
        .I2(\tx_shift_reg[23]_0 [3]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[2]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[4]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[4]),
        .I2(\tx_shift_reg[23]_0 [4]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[3]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[5]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[5]),
        .I2(\tx_shift_reg[23]_0 [5]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[4]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[6]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[6]),
        .I2(\tx_shift_reg[23]_0 [6]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[5]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[7]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[7]),
        .I2(\tx_shift_reg[23]_0 [7]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[6]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[8]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[8]),
        .I2(\tx_shift_reg[23]_0 [8]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[7]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \tx_shift[9]_i_1 
       (.I0(\tx_shift[23]_i_3_n_0 ),
        .I1(P[9]),
        .I2(\tx_shift_reg[23]_0 [9]),
        .I3(\tx_shift[23]_i_4_n_0 ),
        .I4(tx_shift[8]),
        .I5(lrck_i_3_n_0),
        .O(\tx_shift[9]_i_1_n_0 ));
  FDRE \tx_shift_reg[0] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[0]_i_1_n_0 ),
        .Q(tx_shift[0]),
        .R(1'b0));
  FDRE \tx_shift_reg[10] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[10]_i_1_n_0 ),
        .Q(tx_shift[10]),
        .R(1'b0));
  FDRE \tx_shift_reg[11] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[11]_i_1_n_0 ),
        .Q(tx_shift[11]),
        .R(1'b0));
  FDRE \tx_shift_reg[12] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[12]_i_1_n_0 ),
        .Q(tx_shift[12]),
        .R(1'b0));
  FDRE \tx_shift_reg[13] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[13]_i_1_n_0 ),
        .Q(tx_shift[13]),
        .R(1'b0));
  FDRE \tx_shift_reg[14] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[14]_i_1_n_0 ),
        .Q(tx_shift[14]),
        .R(1'b0));
  FDRE \tx_shift_reg[15] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[15]_i_1_n_0 ),
        .Q(tx_shift[15]),
        .R(1'b0));
  FDRE \tx_shift_reg[16] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[16]_i_1_n_0 ),
        .Q(tx_shift[16]),
        .R(1'b0));
  FDRE \tx_shift_reg[17] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[17]_i_1_n_0 ),
        .Q(tx_shift[17]),
        .R(1'b0));
  FDRE \tx_shift_reg[18] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[18]_i_1_n_0 ),
        .Q(tx_shift[18]),
        .R(1'b0));
  FDRE \tx_shift_reg[19] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[19]_i_1_n_0 ),
        .Q(tx_shift[19]),
        .R(1'b0));
  FDRE \tx_shift_reg[1] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[1]_i_1_n_0 ),
        .Q(tx_shift[1]),
        .R(1'b0));
  FDRE \tx_shift_reg[20] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[20]_i_1_n_0 ),
        .Q(tx_shift[20]),
        .R(1'b0));
  FDRE \tx_shift_reg[21] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[21]_i_1_n_0 ),
        .Q(tx_shift[21]),
        .R(1'b0));
  FDRE \tx_shift_reg[22] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[22]_i_1_n_0 ),
        .Q(tx_shift[22]),
        .R(1'b0));
  FDRE \tx_shift_reg[23] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[23]_i_2_n_0 ),
        .Q(tx_shift[23]),
        .R(1'b0));
  FDRE \tx_shift_reg[2] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[2]_i_1_n_0 ),
        .Q(tx_shift[2]),
        .R(1'b0));
  FDRE \tx_shift_reg[3] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[3]_i_1_n_0 ),
        .Q(tx_shift[3]),
        .R(1'b0));
  FDRE \tx_shift_reg[4] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[4]_i_1_n_0 ),
        .Q(tx_shift[4]),
        .R(1'b0));
  FDRE \tx_shift_reg[5] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[5]_i_1_n_0 ),
        .Q(tx_shift[5]),
        .R(1'b0));
  FDRE \tx_shift_reg[6] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[6]_i_1_n_0 ),
        .Q(tx_shift[6]),
        .R(1'b0));
  FDRE \tx_shift_reg[7] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[7]_i_1_n_0 ),
        .Q(tx_shift[7]),
        .R(1'b0));
  FDRE \tx_shift_reg[8] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[8]_i_1_n_0 ),
        .Q(tx_shift[8]),
        .R(1'b0));
  FDRE \tx_shift_reg[9] 
       (.C(clk_audio),
        .CE(\tx_shift[23]_i_1_n_0 ),
        .D(\tx_shift[9]_i_1_n_0 ),
        .Q(tx_shift[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "rom_hrtf_left,blk_mem_gen_v8_4_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "rom_hrtf_left" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
module design_1_spatial_audio_top_0_0_rom_hrtf_left
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "4" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.572712 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rom_hrtf_left.mem" *) 
  (* C_INIT_FILE_NAME = "rom_hrtf_left.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "9216" *) 
  (* C_READ_DEPTH_B = "9216" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "9216" *) 
  (* C_WRITE_DEPTH_B = "9216" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "rom_hrtf_right,blk_mem_gen_v8_4_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "rom_hrtf_right" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
module design_1_spatial_audio_top_0_0_rom_hrtf_right
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "4" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.572712 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rom_hrtf_right.mem" *) 
  (* C_INIT_FILE_NAME = "rom_hrtf_right.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "9216" *) 
  (* C_READ_DEPTH_B = "9216" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "9216" *) 
  (* C_WRITE_DEPTH_B = "9216" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "spatial_audio_top" *) 
module design_1_spatial_audio_top_0_0_spatial_audio_top
   (rx_sclk,
    tx_data,
    rx_lrck,
    locked,
    clk_audio,
    rx_data,
    target_angle);
  output rx_sclk;
  output tx_data;
  output rx_lrck;
  input locked;
  input clk_audio;
  input rx_data;
  input [7:0]target_angle;

  wire RSTP;
  wire active_channel_i_1_n_0;
  wire active_channel_i_2_n_0;
  wire active_channel_reg_n_0;
  wire addr_gen_a_n_0;
  wire addr_gen_a_n_2;
  wire addr_gen_a_n_3;
  wire addr_gen_b_n_0;
  wire \angle_a[7]_i_1_n_0 ;
  wire \angle_a[7]_i_2_n_0 ;
  wire \angle_a[7]_i_3_n_0 ;
  wire \angle_a[7]_i_4_n_0 ;
  wire \angle_a[7]_i_5_n_0 ;
  wire \angle_a[7]_i_6_n_0 ;
  wire \angle_a_reg_n_0_[0] ;
  wire \angle_a_reg_n_0_[1] ;
  wire \angle_a_reg_n_0_[2] ;
  wire \angle_a_reg_n_0_[3] ;
  wire \angle_a_reg_n_0_[4] ;
  wire \angle_a_reg_n_0_[5] ;
  wire \angle_a_reg_n_0_[6] ;
  wire \angle_a_reg_n_0_[7] ;
  wire \angle_b[7]_i_1_n_0 ;
  wire \angle_b[7]_i_2_n_0 ;
  wire \angle_b[7]_i_3_n_0 ;
  wire \angle_b[7]_i_4_n_0 ;
  wire \angle_b[7]_i_5_n_0 ;
  wire \angle_b[7]_i_6_n_0 ;
  wire \angle_b_reg_n_0_[0] ;
  wire \angle_b_reg_n_0_[1] ;
  wire \angle_b_reg_n_0_[2] ;
  wire \angle_b_reg_n_0_[3] ;
  wire \angle_b_reg_n_0_[4] ;
  wire \angle_b_reg_n_0_[5] ;
  wire \angle_b_reg_n_0_[6] ;
  wire \angle_b_reg_n_0_[7] ;
  wire [23:0]audio_out_mixed;
  wire [13:0]bram_addr_a;
  wire [13:0]bram_addr_b;
  wire clk_audio;
  wire [15:0]coeff_l_a;
  wire [15:0]coeff_l_b;
  wire [15:0]coeff_r_a;
  wire [15:0]coeff_r_b;
  wire crossfade_left_n_0;
  wire crossfade_left_n_33;
  wire crossfade_right_n_0;
  wire crossfade_right_n_1;
  wire crossfade_right_n_10;
  wire crossfade_right_n_11;
  wire crossfade_right_n_12;
  wire crossfade_right_n_13;
  wire crossfade_right_n_14;
  wire crossfade_right_n_15;
  wire crossfade_right_n_16;
  wire crossfade_right_n_17;
  wire crossfade_right_n_18;
  wire crossfade_right_n_19;
  wire crossfade_right_n_2;
  wire crossfade_right_n_20;
  wire crossfade_right_n_21;
  wire crossfade_right_n_22;
  wire crossfade_right_n_23;
  wire crossfade_right_n_3;
  wire crossfade_right_n_4;
  wire crossfade_right_n_5;
  wire crossfade_right_n_6;
  wire crossfade_right_n_7;
  wire crossfade_right_n_8;
  wire crossfade_right_n_9;
  wire crossfade_trig;
  wire crossfade_trig_i_1_n_0;
  wire [10:10]fade_counter_reg__0;
  wire [10:10]fade_target;
  wire \fir_a/pipe_audio_s1 ;
  wire [6:0]\fir_b/write_ptr_reg ;
  wire i2s_n_12;
  wire i2s_n_13;
  wire i2s_n_5;
  wire i2s_n_8;
  wire i2s_n_9;
  wire is_locked_out_reg_n_0;
  wire [23:0]l_data_rx;
  wire locked;
  wire lockout_counter;
  wire \lockout_counter[10]_i_1_n_0 ;
  wire \lockout_counter[10]_i_4_n_0 ;
  wire [10:10]lockout_counter_reg__0;
  wire \lockout_counter_reg_n_0_[0] ;
  wire \lockout_counter_reg_n_0_[1] ;
  wire \lockout_counter_reg_n_0_[2] ;
  wire \lockout_counter_reg_n_0_[3] ;
  wire \lockout_counter_reg_n_0_[4] ;
  wire \lockout_counter_reg_n_0_[5] ;
  wire \lockout_counter_reg_n_0_[6] ;
  wire \lockout_counter_reg_n_0_[7] ;
  wire \lockout_counter_reg_n_0_[8] ;
  wire \lockout_counter_reg_n_0_[9] ;
  wire new_sample;
  wire [10:0]p_0_in;
  wire [23:0]r_data_rx;
  wire rst_audio;
  wire rx_data;
  wire rx_lrck;
  wire rx_sclk;
  wire state0;
  wire state0_0;
  wire [7:0]target_angle;
  wire tx_data;

  LUT4 #(
    .INIT(16'h30DC)) 
    active_channel_i_1
       (.I0(is_locked_out_reg_n_0),
        .I1(active_channel_reg_n_0),
        .I2(active_channel_i_2_n_0),
        .I3(\angle_a[7]_i_2_n_0 ),
        .O(active_channel_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    active_channel_i_2
       (.I0(\angle_b[7]_i_6_n_0 ),
        .I1(\angle_b[7]_i_5_n_0 ),
        .I2(\angle_b[7]_i_4_n_0 ),
        .I3(\angle_b[7]_i_3_n_0 ),
        .O(active_channel_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    active_channel_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(active_channel_i_1_n_0),
        .Q(active_channel_reg_n_0),
        .R(rst_audio));
  design_1_spatial_audio_top_0_0_hrtf_address_generator addr_gen_a
       (.E(state0_0),
        .Q({\angle_a_reg_n_0_[6] ,\angle_a_reg_n_0_[5] ,\angle_a_reg_n_0_[4] ,\angle_a_reg_n_0_[3] ,\angle_a_reg_n_0_[2] ,\angle_a_reg_n_0_[1] ,\angle_a_reg_n_0_[0] }),
        .\bram_addr_reg[13]_0 (bram_addr_a),
        .clk_audio(clk_audio),
        .conv_en_reg_0(addr_gen_a_n_2),
        .conv_en_reg_1(addr_gen_a_n_3),
        .locked(locked),
        .new_sample(new_sample),
        .pipe_audio_s1(\fir_a/pipe_audio_s1 ),
        .rst_audio(rst_audio),
        .state_reg_0(addr_gen_a_n_0));
  design_1_spatial_audio_top_0_0_hrtf_address_generator_0 addr_gen_b
       (.E(state0),
        .Q({\angle_b_reg_n_0_[6] ,\angle_b_reg_n_0_[5] ,\angle_b_reg_n_0_[4] ,\angle_b_reg_n_0_[3] ,\angle_b_reg_n_0_[2] ,\angle_b_reg_n_0_[1] ,\angle_b_reg_n_0_[0] }),
        .\bram_addr_reg[13]_0 (bram_addr_b),
        .\bram_addr_reg[13]_1 (i2s_n_8),
        .clk_audio(clk_audio),
        .locked(locked),
        .new_sample(new_sample),
        .rst_audio(rst_audio),
        .state_reg_0(addr_gen_b_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \angle_a[7]_i_1 
       (.I0(\angle_a[7]_i_2_n_0 ),
        .I1(locked),
        .O(\angle_a[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \angle_a[7]_i_2 
       (.I0(\angle_a[7]_i_3_n_0 ),
        .I1(\angle_a[7]_i_4_n_0 ),
        .I2(\angle_a[7]_i_5_n_0 ),
        .I3(\angle_a[7]_i_6_n_0 ),
        .I4(is_locked_out_reg_n_0),
        .I5(active_channel_reg_n_0),
        .O(\angle_a[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_a[7]_i_3 
       (.I0(target_angle[5]),
        .I1(\angle_b_reg_n_0_[5] ),
        .I2(target_angle[0]),
        .I3(\angle_b_reg_n_0_[0] ),
        .O(\angle_a[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_a[7]_i_4 
       (.I0(target_angle[1]),
        .I1(\angle_b_reg_n_0_[1] ),
        .I2(target_angle[2]),
        .I3(\angle_b_reg_n_0_[2] ),
        .O(\angle_a[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_a[7]_i_5 
       (.I0(target_angle[6]),
        .I1(\angle_b_reg_n_0_[6] ),
        .I2(target_angle[7]),
        .I3(\angle_b_reg_n_0_[7] ),
        .O(\angle_a[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_a[7]_i_6 
       (.I0(target_angle[3]),
        .I1(\angle_b_reg_n_0_[3] ),
        .I2(target_angle[4]),
        .I3(\angle_b_reg_n_0_[4] ),
        .O(\angle_a[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[0] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[0]),
        .Q(\angle_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[1] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[1]),
        .Q(\angle_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[2] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[2]),
        .Q(\angle_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[3] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[3]),
        .Q(\angle_a_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[4] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[4]),
        .Q(\angle_a_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[5] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[5]),
        .Q(\angle_a_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[6] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[6]),
        .Q(\angle_a_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_a_reg[7] 
       (.C(clk_audio),
        .CE(\angle_a[7]_i_1_n_0 ),
        .D(target_angle[7]),
        .Q(\angle_a_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \angle_b[7]_i_1 
       (.I0(\angle_b[7]_i_2_n_0 ),
        .I1(locked),
        .O(\angle_b[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \angle_b[7]_i_2 
       (.I0(\angle_b[7]_i_3_n_0 ),
        .I1(\angle_b[7]_i_4_n_0 ),
        .I2(\angle_b[7]_i_5_n_0 ),
        .I3(\angle_b[7]_i_6_n_0 ),
        .I4(active_channel_reg_n_0),
        .I5(is_locked_out_reg_n_0),
        .O(\angle_b[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_b[7]_i_3 
       (.I0(target_angle[5]),
        .I1(\angle_a_reg_n_0_[5] ),
        .I2(target_angle[0]),
        .I3(\angle_a_reg_n_0_[0] ),
        .O(\angle_b[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_b[7]_i_4 
       (.I0(target_angle[1]),
        .I1(\angle_a_reg_n_0_[1] ),
        .I2(target_angle[2]),
        .I3(\angle_a_reg_n_0_[2] ),
        .O(\angle_b[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_b[7]_i_5 
       (.I0(target_angle[6]),
        .I1(\angle_a_reg_n_0_[6] ),
        .I2(target_angle[7]),
        .I3(\angle_a_reg_n_0_[7] ),
        .O(\angle_b[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \angle_b[7]_i_6 
       (.I0(target_angle[3]),
        .I1(\angle_a_reg_n_0_[3] ),
        .I2(target_angle[4]),
        .I3(\angle_a_reg_n_0_[4] ),
        .O(\angle_b[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[0] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[0]),
        .Q(\angle_b_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[1] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[1]),
        .Q(\angle_b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[2] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[2]),
        .Q(\angle_b_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[3] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[3]),
        .Q(\angle_b_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[4] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[4]),
        .Q(\angle_b_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[5] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[5]),
        .Q(\angle_b_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[6] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[6]),
        .Q(\angle_b_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \angle_b_reg[7] 
       (.C(clk_audio),
        .CE(\angle_b[7]_i_1_n_0 ),
        .D(target_angle[7]),
        .Q(\angle_b_reg_n_0_[7] ),
        .R(1'b0));
  design_1_spatial_audio_top_0_0_hrtf_crossfader crossfade_left
       (.P(audio_out_mixed),
        .Q(\fir_b/write_ptr_reg ),
        .RSTP(RSTP),
        .S(crossfade_left_n_33),
        .accumulator_reg(i2s_n_9),
        .accumulator_reg_0(l_data_rx),
        .accumulator_reg_1(i2s_n_5),
        .accumulator_reg_2(i2s_n_13),
        .clk_audio(clk_audio),
        .crossfade_trig(crossfade_trig),
        .douta(coeff_l_a),
        .doutb(coeff_l_b),
        .fade_counter0_carry__0_0(fade_counter_reg__0),
        .fade_target(fade_target),
        .\fade_target_reg[10]_0 (active_channel_reg_n_0),
        .locked(locked),
        .new_sample(new_sample),
        .pipe_audio_s1(\fir_a/pipe_audio_s1 ),
        .pipe_valid_s1_reg(addr_gen_a_n_3),
        .pipe_valid_s2_reg(crossfade_left_n_0),
        .\read_ptr_reg[6] (addr_gen_a_n_2),
        .rst_audio(rst_audio));
  design_1_spatial_audio_top_0_0_hrtf_crossfader_1 crossfade_right
       (.P({crossfade_right_n_0,crossfade_right_n_1,crossfade_right_n_2,crossfade_right_n_3,crossfade_right_n_4,crossfade_right_n_5,crossfade_right_n_6,crossfade_right_n_7,crossfade_right_n_8,crossfade_right_n_9,crossfade_right_n_10,crossfade_right_n_11,crossfade_right_n_12,crossfade_right_n_13,crossfade_right_n_14,crossfade_right_n_15,crossfade_right_n_16,crossfade_right_n_17,crossfade_right_n_18,crossfade_right_n_19,crossfade_right_n_20,crossfade_right_n_21,crossfade_right_n_22,crossfade_right_n_23}),
        .Q(fade_counter_reg__0),
        .RSTP(RSTP),
        .S(crossfade_left_n_33),
        .accumulator_reg(i2s_n_9),
        .accumulator_reg_0(crossfade_left_n_0),
        .accumulator_reg_1(r_data_rx),
        .accumulator_reg_2(i2s_n_5),
        .accumulator_reg_3(i2s_n_13),
        .clk_audio(clk_audio),
        .crossfade_trig(crossfade_trig),
        .douta(coeff_r_a),
        .doutb(coeff_r_b),
        .fade_target(fade_target),
        .new_sample(new_sample),
        .pipe_audio_s1(\fir_a/pipe_audio_s1 ),
        .\read_ptr_reg[6] (addr_gen_a_n_2),
        .\read_ptr_reg[6]_0 (\fir_b/write_ptr_reg ),
        .rst_audio(rst_audio));
  LUT3 #(
    .INIT(8'hE0)) 
    crossfade_trig_i_1
       (.I0(\angle_a[7]_i_2_n_0 ),
        .I1(\angle_b[7]_i_2_n_0 ),
        .I2(locked),
        .O(crossfade_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    crossfade_trig_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(crossfade_trig_i_1_n_0),
        .Q(crossfade_trig),
        .R(1'b0));
  design_1_spatial_audio_top_0_0_i2s_controller i2s
       (.E(state0_0),
        .P({crossfade_right_n_0,crossfade_right_n_1,crossfade_right_n_2,crossfade_right_n_3,crossfade_right_n_4,crossfade_right_n_5,crossfade_right_n_6,crossfade_right_n_7,crossfade_right_n_8,crossfade_right_n_9,crossfade_right_n_10,crossfade_right_n_11,crossfade_right_n_12,crossfade_right_n_13,crossfade_right_n_14,crossfade_right_n_15,crossfade_right_n_16,crossfade_right_n_17,crossfade_right_n_18,crossfade_right_n_19,crossfade_right_n_20,crossfade_right_n_21,crossfade_right_n_22,crossfade_right_n_23}),
        .Q(\fir_b/write_ptr_reg [6]),
        .RSTP(RSTP),
        .clk_audio(clk_audio),
        .is_locked_out_reg(is_locked_out_reg_n_0),
        .is_locked_out_reg_0(lockout_counter_reg__0),
        .is_locked_out_reg_1(\angle_a[7]_i_2_n_0 ),
        .is_locked_out_reg_2(\angle_b[7]_i_2_n_0 ),
        .\l_data_rx_reg[23]_0 (l_data_rx),
        .\latched_angle_reg[6] (addr_gen_a_n_0),
        .\latched_angle_reg[6]_0 (addr_gen_b_n_0),
        .locked(locked),
        .locked_0(i2s_n_5),
        .locked_1(i2s_n_13),
        .\lockout_counter_reg[10] (i2s_n_12),
        .new_sample(new_sample),
        .new_sample_pulse_reg_0(state0),
        .new_sample_pulse_reg_1(i2s_n_8),
        .new_sample_pulse_reg_2(i2s_n_9),
        .new_sample_pulse_reg_3(lockout_counter),
        .\r_data_rx_reg[23]_0 (r_data_rx),
        .rst_audio(rst_audio),
        .rx_data(rx_data),
        .rx_lrck(rx_lrck),
        .sclk_reg_0(rx_sclk),
        .tx_data(tx_data),
        .\tx_shift_reg[23]_0 (audio_out_mixed));
  FDRE #(
    .INIT(1'b0)) 
    is_locked_out_reg
       (.C(clk_audio),
        .CE(1'b1),
        .D(i2s_n_12),
        .Q(is_locked_out_reg_n_0),
        .R(rst_audio));
  LUT1 #(
    .INIT(2'h1)) 
    \lockout_counter[0]_i_1 
       (.I0(\lockout_counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \lockout_counter[10]_i_1 
       (.I0(\angle_a[7]_i_2_n_0 ),
        .I1(\angle_b[7]_i_2_n_0 ),
        .I2(locked),
        .O(\lockout_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \lockout_counter[10]_i_3 
       (.I0(\lockout_counter[10]_i_4_n_0 ),
        .I1(\lockout_counter_reg_n_0_[6] ),
        .I2(\lockout_counter_reg_n_0_[9] ),
        .I3(\lockout_counter_reg_n_0_[8] ),
        .I4(\lockout_counter_reg_n_0_[7] ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lockout_counter[10]_i_4 
       (.I0(\lockout_counter_reg_n_0_[4] ),
        .I1(\lockout_counter_reg_n_0_[2] ),
        .I2(\lockout_counter_reg_n_0_[0] ),
        .I3(\lockout_counter_reg_n_0_[1] ),
        .I4(\lockout_counter_reg_n_0_[3] ),
        .I5(\lockout_counter_reg_n_0_[5] ),
        .O(\lockout_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lockout_counter[1]_i_1 
       (.I0(\lockout_counter_reg_n_0_[0] ),
        .I1(\lockout_counter_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lockout_counter[2]_i_1 
       (.I0(\lockout_counter_reg_n_0_[1] ),
        .I1(\lockout_counter_reg_n_0_[0] ),
        .I2(\lockout_counter_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lockout_counter[3]_i_1 
       (.I0(\lockout_counter_reg_n_0_[2] ),
        .I1(\lockout_counter_reg_n_0_[0] ),
        .I2(\lockout_counter_reg_n_0_[1] ),
        .I3(\lockout_counter_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lockout_counter[4]_i_1 
       (.I0(\lockout_counter_reg_n_0_[3] ),
        .I1(\lockout_counter_reg_n_0_[1] ),
        .I2(\lockout_counter_reg_n_0_[0] ),
        .I3(\lockout_counter_reg_n_0_[2] ),
        .I4(\lockout_counter_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lockout_counter[5]_i_1 
       (.I0(\lockout_counter_reg_n_0_[4] ),
        .I1(\lockout_counter_reg_n_0_[2] ),
        .I2(\lockout_counter_reg_n_0_[0] ),
        .I3(\lockout_counter_reg_n_0_[1] ),
        .I4(\lockout_counter_reg_n_0_[3] ),
        .I5(\lockout_counter_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \lockout_counter[6]_i_1 
       (.I0(\lockout_counter[10]_i_4_n_0 ),
        .I1(\lockout_counter_reg_n_0_[6] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lockout_counter[7]_i_1 
       (.I0(\lockout_counter[10]_i_4_n_0 ),
        .I1(\lockout_counter_reg_n_0_[6] ),
        .I2(\lockout_counter_reg_n_0_[7] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lockout_counter[8]_i_1 
       (.I0(\lockout_counter[10]_i_4_n_0 ),
        .I1(\lockout_counter_reg_n_0_[6] ),
        .I2(\lockout_counter_reg_n_0_[7] ),
        .I3(\lockout_counter_reg_n_0_[8] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lockout_counter[9]_i_1 
       (.I0(\lockout_counter[10]_i_4_n_0 ),
        .I1(\lockout_counter_reg_n_0_[6] ),
        .I2(\lockout_counter_reg_n_0_[7] ),
        .I3(\lockout_counter_reg_n_0_[8] ),
        .I4(\lockout_counter_reg_n_0_[9] ),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[0] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[0]),
        .Q(\lockout_counter_reg_n_0_[0] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[10] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[10]),
        .Q(lockout_counter_reg__0),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[1] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[1]),
        .Q(\lockout_counter_reg_n_0_[1] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[2] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[2]),
        .Q(\lockout_counter_reg_n_0_[2] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[3] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[3]),
        .Q(\lockout_counter_reg_n_0_[3] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[4] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[4]),
        .Q(\lockout_counter_reg_n_0_[4] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[5] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[5]),
        .Q(\lockout_counter_reg_n_0_[5] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[6] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[6]),
        .Q(\lockout_counter_reg_n_0_[6] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[7] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[7]),
        .Q(\lockout_counter_reg_n_0_[7] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[8] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[8]),
        .Q(\lockout_counter_reg_n_0_[8] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lockout_counter_reg[9] 
       (.C(clk_audio),
        .CE(lockout_counter),
        .D(p_0_in[9]),
        .Q(\lockout_counter_reg_n_0_[9] ),
        .R(\lockout_counter[10]_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "rom_hrtf_left,blk_mem_gen_v8_4_2,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
  design_1_spatial_audio_top_0_0_rom_hrtf_left rom_l
       (.addra(bram_addr_a),
        .addrb(bram_addr_b),
        .clka(clk_audio),
        .clkb(clk_audio),
        .douta(coeff_l_a),
        .doutb(coeff_l_b));
  (* CHECK_LICENSE_TYPE = "rom_hrtf_right,blk_mem_gen_v8_4_2,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
  design_1_spatial_audio_top_0_0_rom_hrtf_right rom_r
       (.addra(bram_addr_a),
        .addrb(bram_addr_b),
        .clka(clk_audio),
        .clkb(clk_audio),
        .douta(coeff_r_a),
        .doutb(coeff_r_b));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module design_1_spatial_audio_top_0_0_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module design_1_spatial_audio_top_0_0_bindec_5
   (enb_array,
    addrb);
  output [0:0]enb_array;
  input [3:0]addrb;

  wire [3:0]addrb;
  wire [0:0]enb_array;

  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addrb[2]),
        .I1(addrb[1]),
        .I2(addrb[3]),
        .I3(addrb[0]),
        .O(enb_array));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module design_1_spatial_audio_top_0_0_bindec_6
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module design_1_spatial_audio_top_0_0_bindec_7
   (enb_array,
    addrb);
  output [0:0]enb_array;
  input [3:0]addrb;

  wire [3:0]addrb;
  wire [0:0]enb_array;

  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addrb[2]),
        .I1(addrb[1]),
        .I2(addrb[3]),
        .I3(addrb[0]),
        .O(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire [8:8]ena_array;
  wire [8:8]enb_array;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire \ram_ena_inferred__0/i__n_0 ;
  wire ram_ena_n_0;
  wire \ram_enb_inferred__0/i__n_0 ;
  wire ram_enb_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_16 ;
  wire \ramloop[2].ram.r_n_17 ;
  wire \ramloop[2].ram.r_n_18 ;
  wire \ramloop[2].ram.r_n_19 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_20 ;
  wire \ramloop[2].ram.r_n_21 ;
  wire \ramloop[2].ram.r_n_22 ;
  wire \ramloop[2].ram.r_n_23 ;
  wire \ramloop[2].ram.r_n_24 ;
  wire \ramloop[2].ram.r_n_25 ;
  wire \ramloop[2].ram.r_n_26 ;
  wire \ramloop[2].ram.r_n_27 ;
  wire \ramloop[2].ram.r_n_28 ;
  wire \ramloop[2].ram.r_n_29 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_30 ;
  wire \ramloop[2].ram.r_n_31 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_10 ;
  wire \ramloop[3].ram.r_n_11 ;
  wire \ramloop[3].ram.r_n_12 ;
  wire \ramloop[3].ram.r_n_13 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_10 ;
  wire \ramloop[4].ram.r_n_11 ;
  wire \ramloop[4].ram.r_n_12 ;
  wire \ramloop[4].ram.r_n_13 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;

  design_1_spatial_audio_top_0_0_bindec_6 \bindec_a.bindec_inst_a 
       (.addra(addra[13:10]),
        .ena_array(ena_array));
  design_1_spatial_audio_top_0_0_bindec_7 \bindec_b.bindec_inst_b 
       (.addrb(addrb[13:10]),
        .enb_array(enb_array));
  design_1_spatial_audio_top_0_0_blk_mem_gen_mux_8 \has_mux_a.A 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_16 ),
        .addra(addra[13:10]),
        .clka(clka),
        .douta(douta),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .ram_douta(ram_douta));
  design_1_spatial_audio_top_0_0_blk_mem_gen_mux__parameterized0_9 \has_mux_b.B 
       (.DOBDO({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPBDOP(\ramloop[1].ram.r_n_17 ),
        .addrb(addrb[13:10]),
        .clkb(clkb),
        .doutb(doutb),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ({\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 ,\ramloop[2].ram.r_n_18 ,\ramloop[2].ram.r_n_19 ,\ramloop[2].ram.r_n_20 ,\ramloop[2].ram.r_n_21 ,\ramloop[2].ram.r_n_22 ,\ramloop[2].ram.r_n_23 ,\ramloop[2].ram.r_n_24 ,\ramloop[2].ram.r_n_25 ,\ramloop[2].ram.r_n_26 ,\ramloop[2].ram.r_n_27 ,\ramloop[2].ram.r_n_28 ,\ramloop[2].ram.r_n_29 ,\ramloop[2].ram.r_n_30 ,\ramloop[2].ram.r_n_31 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ({\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ({\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 }),
        .ram_doutb(ram_doutb));
  LUT2 #(
    .INIT(4'h1)) 
    ram_ena
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(ram_ena_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    \ram_ena_inferred__0/i_ 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(\ram_ena_inferred__0/i__n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    ram_enb
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(ram_enb_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    \ram_enb_inferred__0/i_ 
       (.I0(addrb[13]),
        .I1(addrb[12]),
        .O(\ram_enb_inferred__0/i__n_0 ));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (ram_ena_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (ram_enb_n_0),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ram_ena_inferred__0/i__n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ram_enb_inferred__0/i__n_0 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOBDO({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP(\ramloop[1].ram.r_n_16 ),
        .DOPBDOP(\ramloop[1].ram.r_n_17 ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ({\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 ,\ramloop[2].ram.r_n_18 ,\ramloop[2].ram.r_n_19 ,\ramloop[2].ram.r_n_20 ,\ramloop[2].ram.r_n_21 ,\ramloop[2].ram.r_n_22 ,\ramloop[2].ram.r_n_23 ,\ramloop[2].ram.r_n_24 ,\ramloop[2].ram.r_n_25 ,\ramloop[2].ram.r_n_26 ,\ramloop[2].ram.r_n_27 ,\ramloop[2].ram.r_n_28 ,\ramloop[2].ram.r_n_29 ,\ramloop[2].ram.r_n_30 ,\ramloop[2].ram.r_n_31 }),
        .addra(addra[9:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .ena_array(ena_array),
        .enb_array(enb_array));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (ram_ena_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (ram_enb_n_0),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\ram_ena_inferred__0/i__n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\ram_enb_inferred__0/i__n_0 ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr__parameterized0
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire [8:8]ena_array;
  wire [8:8]enb_array;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire \ram_ena_inferred__0/i__n_0 ;
  wire ram_ena_n_0;
  wire \ram_enb_inferred__0/i__n_0 ;
  wire ram_enb_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_16 ;
  wire \ramloop[2].ram.r_n_17 ;
  wire \ramloop[2].ram.r_n_18 ;
  wire \ramloop[2].ram.r_n_19 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_20 ;
  wire \ramloop[2].ram.r_n_21 ;
  wire \ramloop[2].ram.r_n_22 ;
  wire \ramloop[2].ram.r_n_23 ;
  wire \ramloop[2].ram.r_n_24 ;
  wire \ramloop[2].ram.r_n_25 ;
  wire \ramloop[2].ram.r_n_26 ;
  wire \ramloop[2].ram.r_n_27 ;
  wire \ramloop[2].ram.r_n_28 ;
  wire \ramloop[2].ram.r_n_29 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_30 ;
  wire \ramloop[2].ram.r_n_31 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_10 ;
  wire \ramloop[3].ram.r_n_11 ;
  wire \ramloop[3].ram.r_n_12 ;
  wire \ramloop[3].ram.r_n_13 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_10 ;
  wire \ramloop[4].ram.r_n_11 ;
  wire \ramloop[4].ram.r_n_12 ;
  wire \ramloop[4].ram.r_n_13 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;

  design_1_spatial_audio_top_0_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:10]),
        .ena_array(ena_array));
  design_1_spatial_audio_top_0_0_bindec_5 \bindec_b.bindec_inst_b 
       (.addrb(addrb[13:10]),
        .enb_array(enb_array));
  design_1_spatial_audio_top_0_0_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_16 ),
        .addra(addra[13:10]),
        .clka(clka),
        .douta(douta),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .ram_douta(ram_douta));
  design_1_spatial_audio_top_0_0_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.DOBDO({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPBDOP(\ramloop[1].ram.r_n_17 ),
        .addrb(addrb[13:10]),
        .clkb(clkb),
        .doutb(doutb),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ({\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 ,\ramloop[2].ram.r_n_18 ,\ramloop[2].ram.r_n_19 ,\ramloop[2].ram.r_n_20 ,\ramloop[2].ram.r_n_21 ,\ramloop[2].ram.r_n_22 ,\ramloop[2].ram.r_n_23 ,\ramloop[2].ram.r_n_24 ,\ramloop[2].ram.r_n_25 ,\ramloop[2].ram.r_n_26 ,\ramloop[2].ram.r_n_27 ,\ramloop[2].ram.r_n_28 ,\ramloop[2].ram.r_n_29 ,\ramloop[2].ram.r_n_30 ,\ramloop[2].ram.r_n_31 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ({\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 }),
        .\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ({\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 }),
        .ram_doutb(ram_doutb));
  LUT2 #(
    .INIT(4'h1)) 
    ram_ena
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(ram_ena_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    \ram_ena_inferred__0/i_ 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(\ram_ena_inferred__0/i__n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    ram_enb
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(ram_enb_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    \ram_enb_inferred__0/i_ 
       (.I0(addrb[13]),
        .I1(addrb[12]),
        .O(\ram_enb_inferred__0/i__n_0 ));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized4 \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (ram_ena_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (ram_enb_n_0),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized5 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ram_ena_inferred__0/i__n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ram_enb_inferred__0/i__n_0 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOBDO({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOPADOP(\ramloop[1].ram.r_n_16 ),
        .DOPBDOP(\ramloop[1].ram.r_n_17 ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized6 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ({\ramloop[2].ram.r_n_16 ,\ramloop[2].ram.r_n_17 ,\ramloop[2].ram.r_n_18 ,\ramloop[2].ram.r_n_19 ,\ramloop[2].ram.r_n_20 ,\ramloop[2].ram.r_n_21 ,\ramloop[2].ram.r_n_22 ,\ramloop[2].ram.r_n_23 ,\ramloop[2].ram.r_n_24 ,\ramloop[2].ram.r_n_25 ,\ramloop[2].ram.r_n_26 ,\ramloop[2].ram.r_n_27 ,\ramloop[2].ram.r_n_28 ,\ramloop[2].ram.r_n_29 ,\ramloop[2].ram.r_n_30 ,\ramloop[2].ram.r_n_31 }),
        .addra(addra[9:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .ena_array(ena_array),
        .enb_array(enb_array));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized7 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (ram_ena_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (ram_enb_n_0),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb));
  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized8 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[4].ram.r_n_7 ,\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\ram_ena_inferred__0/i__n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\ram_enb_inferred__0/i__n_0 ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    ram_douta,
    DOADO,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ,
    DOPADOP,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 );
  output [15:0]douta;
  input [3:0]addra;
  input clka;
  input [8:0]ram_douta;
  input [7:0]DOADO;
  input [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  input [0:0]DOPADOP;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]addra;
  wire clka;
  wire [15:0]\din_2D[15]__0 ;
  wire [15:0]douta;
  wire \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ;
  wire [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;
  wire [8:0]ram_douta;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[0]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[0]),
        .I3(DOADO[0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [0]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [0]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[10]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [1]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [10]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [10]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[11]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [11]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [11]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[12]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [3]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [12]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [12]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[13]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [4]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [13]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [13]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[14]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [5]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [14]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [14]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [6]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [15]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [15]));
  LUT4 #(
    .INIT(16'h0004)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2 
       (.I0(sel_pipe_d1[2]),
        .I1(sel_pipe_d1[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[1]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[1]),
        .I3(DOADO[1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [1]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[2]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[2]),
        .I3(DOADO[2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [2]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [2]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[3]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[3]),
        .I3(DOADO[3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [3]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [3]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[4]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[4]),
        .I3(DOADO[4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [4]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [4]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[5]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[5]),
        .I3(DOADO[5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [5]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [5]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[6]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[6]),
        .I3(DOADO[6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [6]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [6]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[7]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[7]),
        .I3(DOADO[7]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [7]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [7]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[8]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[8]),
        .I3(DOPADOP),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [8]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [8]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[9]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [0]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [9]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [0]),
        .Q(douta[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[10] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [10]),
        .Q(douta[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[11] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [11]),
        .Q(douta[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[12] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [12]),
        .Q(douta[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[13] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [13]),
        .Q(douta[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[14] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [14]),
        .Q(douta[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [15]),
        .Q(douta[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [1]),
        .Q(douta[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [2]),
        .Q(douta[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [3]),
        .Q(douta[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [4]),
        .Q(douta[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [5]),
        .Q(douta[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[6] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [6]),
        .Q(douta[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[7] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [7]),
        .Q(douta[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[8] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [8]),
        .Q(douta[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[9] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [9]),
        .Q(douta[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_mux_8
   (douta,
    addra,
    clka,
    ram_douta,
    DOADO,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ,
    DOPADOP,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 );
  output [15:0]douta;
  input [3:0]addra;
  input clka;
  input [8:0]ram_douta;
  input [7:0]DOADO;
  input [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  input [0:0]DOPADOP;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]addra;
  wire clka;
  wire [15:0]\din_2D[15]__0 ;
  wire [15:0]douta;
  wire \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ;
  wire [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;
  wire [8:0]ram_douta;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[0]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[0]),
        .I3(DOADO[0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [0]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [0]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[10]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [1]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [10]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [10]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[11]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [11]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [11]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[12]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [3]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [12]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [12]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[13]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [4]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [13]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [13]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[14]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [5]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [14]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [14]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [6]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [15]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [15]));
  LUT4 #(
    .INIT(16'h0004)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2 
       (.I0(sel_pipe_d1[2]),
        .I1(sel_pipe_d1[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[1]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[1]),
        .I3(DOADO[1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [1]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[2]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[2]),
        .I3(DOADO[2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [2]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [2]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[3]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[3]),
        .I3(DOADO[3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [3]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [3]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[4]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[4]),
        .I3(DOADO[4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [4]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [4]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[5]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[5]),
        .I3(DOADO[5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [5]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [5]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[6]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[6]),
        .I3(DOADO[6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [6]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [6]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[7]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[7]),
        .I3(DOADO[7]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [7]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [7]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[8]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[8]),
        .I3(DOPADOP),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [8]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [8]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[9]_i_1 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [0]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [9]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [0]),
        .Q(douta[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[10] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [10]),
        .Q(douta[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[11] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [11]),
        .Q(douta[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[12] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [12]),
        .Q(douta[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[13] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [13]),
        .Q(douta[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[14] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [14]),
        .Q(douta[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [15]),
        .Q(douta[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [1]),
        .Q(douta[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [2]),
        .Q(douta[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [3]),
        .Q(douta[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [4]),
        .Q(douta[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [5]),
        .Q(douta[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[6] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [6]),
        .Q(douta[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[7] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [7]),
        .Q(douta[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[8] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [8]),
        .Q(douta[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[9] 
       (.C(clka),
        .CE(1'b1),
        .D(\din_2D[15]__0 [9]),
        .Q(douta[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_mux__parameterized0
   (doutb,
    addrb,
    clkb,
    ram_doutb,
    DOBDO,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ,
    DOPBDOP,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 );
  output [15:0]doutb;
  input [3:0]addrb;
  input clkb;
  input [8:0]ram_doutb;
  input [7:0]DOBDO;
  input [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  input [0:0]DOPBDOP;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [3:0]addrb;
  wire clkb;
  wire [15:0]\din_2D[15]__0 ;
  wire [15:0]doutb;
  wire \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ;
  wire [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ;
  wire [8:0]ram_doutb;

  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[0]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[0]),
        .I3(DOBDO[0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [0]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [0]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[10]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [1]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [10]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [10]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[11]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [11]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [11]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[12]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [3]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [12]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [12]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[13]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [4]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [13]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [13]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[14]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [5]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [14]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [14]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [6]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [15]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [15]));
  LUT4 #(
    .INIT(16'h0004)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[1]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[1]),
        .I3(DOBDO[1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [1]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[2]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[2]),
        .I3(DOBDO[2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [2]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [2]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[3]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[3]),
        .I3(DOBDO[3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [3]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [3]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[4]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[4]),
        .I3(DOBDO[4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [4]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [4]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[5]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[5]),
        .I3(DOBDO[5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [5]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [5]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[6]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[6]),
        .I3(DOBDO[6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [6]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [6]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[7]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[7]),
        .I3(DOBDO[7]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [7]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [7]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[8]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[8]),
        .I3(DOPBDOP),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [8]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [8]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[9]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [0]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [9]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [0]),
        .Q(doutb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[10] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [10]),
        .Q(doutb[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[11] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [11]),
        .Q(doutb[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[12] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [12]),
        .Q(doutb[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[13] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [13]),
        .Q(doutb[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[14] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [14]),
        .Q(doutb[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [15]),
        .Q(doutb[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [1]),
        .Q(doutb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [2]),
        .Q(doutb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[3] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [3]),
        .Q(doutb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[4] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [4]),
        .Q(doutb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[5] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [5]),
        .Q(doutb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[6] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [6]),
        .Q(doutb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[7] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [7]),
        .Q(doutb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[8] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [8]),
        .Q(doutb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[9] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [9]),
        .Q(doutb[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[0]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[1]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[2]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[3]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_mux__parameterized0_9
   (doutb,
    addrb,
    clkb,
    ram_doutb,
    DOBDO,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ,
    DOPBDOP,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ,
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 );
  output [15:0]doutb;
  input [3:0]addrb;
  input clkb;
  input [8:0]ram_doutb;
  input [7:0]DOBDO;
  input [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  input [0:0]DOPBDOP;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  input [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [3:0]addrb;
  wire clkb;
  wire [15:0]\din_2D[15]__0 ;
  wire [15:0]doutb;
  wire \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ;
  wire [15:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 ;
  wire [6:0]\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ;
  wire [8:0]ram_doutb;

  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[0]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[0]),
        .I3(DOBDO[0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [0]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [0]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[10]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [1]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [10]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [10]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[11]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [2]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [11]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [11]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[12]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [3]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [12]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [12]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[13]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [4]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [13]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [13]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[14]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [5]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [14]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [14]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [6]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [15]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [15]));
  LUT4 #(
    .INIT(16'h0004)) 
    \no_softecc_gmuxr.ce_pri.dout_i[15]_i_2 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .O(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[1]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[1]),
        .I3(DOBDO[1]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [1]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [1]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[2]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[2]),
        .I3(DOBDO[2]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [2]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [2]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[3]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[3]),
        .I3(DOBDO[3]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [3]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [3]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[4]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[4]),
        .I3(DOBDO[4]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [4]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [4]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[5]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[5]),
        .I3(DOBDO[5]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [5]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [5]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[6]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[6]),
        .I3(DOBDO[6]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [6]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [6]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[7]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[7]),
        .I3(DOBDO[7]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [7]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [7]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[8]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(ram_doutb[8]),
        .I3(DOPBDOP),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [8]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [8]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \no_softecc_gmuxr.ce_pri.dout_i[9]_i_1 
       (.I0(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .I2(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_1 [0]),
        .I3(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_2 [0]),
        .I4(\no_softecc_gmuxr.ce_pri.dout_i_reg[15]_0 [9]),
        .I5(\no_softecc_gmuxr.ce_pri.dout_i[15]_i_2_n_0 ),
        .O(\din_2D[15]__0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [0]),
        .Q(doutb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[10] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [10]),
        .Q(doutb[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[11] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [11]),
        .Q(doutb[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[12] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [12]),
        .Q(doutb[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[13] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [13]),
        .Q(doutb[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[14] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [14]),
        .Q(doutb[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[15] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [15]),
        .Q(doutb[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [1]),
        .Q(doutb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [2]),
        .Q(doutb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[3] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [3]),
        .Q(doutb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[4] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [4]),
        .Q(doutb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[5] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [5]),
        .Q(doutb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[6] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [6]),
        .Q(doutb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[7] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [7]),
        .Q(doutb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[8] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [8]),
        .Q(doutb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_gmuxr.ce_pri.dout_i_reg[9] 
       (.C(clkb),
        .CE(1'b1),
        .D(\din_2D[15]__0 [9]),
        .Q(doutb[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clkb),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[0]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[1]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[2]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[3]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width
   (ram_douta,
    ram_doutb,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    addra,
    addrb);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    addra,
    addrb);
  output [7:0]DOADO;
  output [7:0]DOBDO;
  output [0:0]DOPADOP;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [7:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(DOPADOP),
        .DOPBDOP(DOPBDOP),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ;
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [9:0]addra;
  input [9:0]addrb;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .ena_array(ena_array),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized4
   (ram_douta,
    ram_doutb,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    addra,
    addrb);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .ram_douta(ram_douta),
        .ram_doutb(ram_doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized5
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    addra,
    addrb);
  output [7:0]DOADO;
  output [7:0]DOBDO;
  output [0:0]DOPADOP;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [7:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(DOPADOP),
        .DOPBDOP(DOPBDOP),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ;
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [9:0]addra;
  input [9:0]addrb;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .ena_array(ena_array),
        .enb_array(enb_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    ram_doutb,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    addra,
    addrb);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hCFDA295141DC63F61FBF749546F83880EFEA1778FF842BE09E79188AA93C0000),
    .INITP_01(256'h1B27899D11CC615BF5A74A550BE060009F97E52C7138B45D330FA82A86F02000),
    .INITP_02(256'h088091B0B27477F5192FB154278100010466685B3904CC777B5B30AA1BC06000),
    .INITP_03(256'h2606C53B2D627540667E25509C0C003F1301622C99822BBDE6AC02A84F000007),
    .INITP_04(256'h180B09772B239B63B03085124030007F0C0D0678447102CFDE54CAA3083C007F),
    .INITP_05(256'h60246B35FBC7263A16EA215E03F400FE301615493667BCC9630A02AF01FC00FF),
    .INITP_06(256'hF18470E03C1E1F429032000000000000E04F998D9CDA14850AA047FE07FC01FC),
    .INITP_07(256'hF00C193313B3610CA0192C0030011F00FF03CE633C8246CE946C1490000007C0),
    .INITP_08(256'hDFA7B9D3719F2C9E34609C007001F801C713961482289CF1F3720C00F801FE00),
    .INITP_09(256'h1F5F19C8DC067AB58CB05C01FC07F8039F1FA9D9C20DF770AC609C01F807F803),
    .INITP_0A(256'h00C0DFD5ACA81472CE404000000FE0033E4E582D623F8E92EDE048003007F003),
    .INITP_0B(256'h7C7183C02CB41B7142F02048003E00F807FE02322D5D51C4D6602010001F8012),
    .INITP_0C(256'h486FE9E6BBD1470292702ABF01FE02FE6067DE01229741E700A1504E003E00FC),
    .INITP_0D(256'hE46FCB168D8AFADBA96F548FE070033F4C6FCBF54826BF04C05E015B80FC017F),
    .INITP_0E(256'hFCF9CCED769C392E71C39547F810204FF0F7CD369639CB1804A32A0DF030004F),
    .INITP_0F(256'h81B903CC2815693064C30551BE0620038FFE0769C919896067E50AA3FC183007),
    .INIT_00(256'hDD18F20DFD0400FC0000FAFDFAFE010403040200000000010100000000000102),
    .INIT_01(256'h59698D513D4F14C343118BC0D260CD84271886DDCCBAA8E39A1F395EB045C22B),
    .INIT_02(256'h3D17E81A9FE5B39C7EB1CD2A2365CA8C4158621F0AE656B9341E399C465AFFDA),
    .INIT_03(256'h0F59F4A03897AA8B8DC67A9EA3958DA5192EB982448F6336924E8710F43D6F1F),
    .INIT_04(256'h13F5070103FFFD01FFFCFFFAFF0203010402FFFFFF010000FF01000002010303),
    .INIT_05(256'hD3E55056F7C82176568C66D749FD3C73038A8E8F984FBF0B557F55B93BCE22E2),
    .INIT_06(256'h0D1052D5A53F183EB28DA3F243F1CC7004999221579CE69C0CB88BC7841ECF40),
    .INIT_07(256'h5CC657D3366B5B577A4D9DCE021955D1B0E1600B39ED7BB9A90FB1A545B168CB),
    .INIT_08(256'hF807000102FCFF00FCFDFBFD010403030300FE00010100000001010002010000),
    .INIT_09(256'h38D88DFDF5FA5AF92FD376CD432BA4ED314CA936680C87DAD54AC530D81BEC0E),
    .INIT_0A(256'h2886C45BCF179B11AEA849CFD1BE491CD32C780424C7CDE2B0D4C5994963D9F5),
    .INIT_0B(256'hAC19950A3428204032C321427BEF8034165DE5F753A0C7B44A24807C3A2EACFE),
    .INIT_0C(256'h03010101FD00FFFDFDFCFE010202020100FFFF00000000000000000102000001),
    .INIT_0D(256'h2434D6387E7B3230354A58E0286C4D3DEC16829F9C35B4FC3FD223E016EE0AFC),
    .INIT_0E(256'h79D1465A808451AA35D9E8FFACA460473796BE880F2B67343DC151769E486EE8),
    .INIT_0F(256'h0A90E71806F2130AB42895E348D9957EA61CE1042311D5545EED2E39AAAF1D2B),
    .INIT_10(256'h000003FDFE00FDFCFDFF00020303010101FFFF00010000000000010000010101),
    .INIT_11(256'hDD4D077FAD0FD3ECA7C4ADC70B843D8D4EE189379947F735DD1CE614F209FE03),
    .INIT_12(256'h07FEF0370C3FC8D9E2CB972315D38792ADDAEDD94D9602B8BC224B6D52CDABCE),
    .INIT_13(256'h64D0F9ECF313F3901C99048314D7DD196F10F8D7A95DC0AD4497BB75FCB8F6B1),
    .INIT_14(256'h0101FE0000FEFFFDFF010201020200FF000101010101010202020101000000FF),
    .INIT_15(256'h74716B907E3AEA1E2EDDD6839A69C37C810206849FD031E817E912F408FF0402),
    .INIT_16(256'hE7ADCBCBE4E0833816F885289E77210F6EB767824B15A0BFF83B26EA78EEC519),
    .INIT_17(256'h8CC2D8F41AF3810386FA762B162560CA5E1BEB9C125B56DF1A501B8064234CE3),
    .INIT_18(256'h00FF0000FEFFFEFF010200010000000000010001020001020101000000FFFFFE),
    .INIT_19(256'h49727A5F45F49C887A1AFBA0B0D566583EE4C6DA9329F312EB0FF607FE030101),
    .INIT_1A(256'h4E95505CB875A0B4237D7041CBE00AAECC77FD603C52351528C9D920CCD821F8),
    .INIT_1B(256'hA7C4E407E979EE5CCD642E325494EF825531DF31451497F218AF090DD2F0C227),
    .INIT_1C(256'hFF0000FFFFFE000001000000FFFF000000010001020201010100FFFFFFFFFEFE),
    .INIT_1D(256'h54881627B1D30E70656ECAEDD84A3158DF2802641AFB0FEF0DF608FD03010200),
    .INIT_1E(256'hCDAEAC587CBE683F07B27D3D9695F141CF0A67A016B64F7D6EBF240CA2C80C68),
    .INIT_1F(256'hC1E107D153CB3EA53F223469AC029B7D67FD67974AA3DBEB67E7EE7771299A06),
    .INIT_20(256'h01000000FF0000000000FFFEFFFF0000010102020202020200FFFEFFFEFDFDFC),
    .INIT_21(256'hC3E60F378D9192ADF0172FD140FE67D68E343817FC0DF30BF606FE020002FFFF),
    .INIT_22(256'h3F77AA194B442BAA158FB2CB6F4D0AB65315BD8436B71818D543750BC1A46266),
    .INIT_23(256'hF4F5B73BB3239933060E49A50BAF966D0F81BB92052AEF64FAF95837C1C93937),
    .INIT_24(256'h00FF0000010202010000FFFF00000101010203020203010000FFFFFEFEFEFEFE),
    .INIT_25(256'h5A2B803C085CD9CC7A73F23EA1A0BBB39B17120408FB0AFB050004FE0200FF01),
    .INIT_26(256'hAB29D75BABCA5C2BE29AF02F2430CEDE4F107029C2F2201A484D8FE824C98877),
    .INIT_27(256'hF4A3229C189C4616011663F6C19252FE8CC0A12E6854D464428B45AC7D7D362A),
    .INIT_28(256'h00000101010100FFFFFEFEFFFFFF00000101020202020000FFFEFCFCFCFCFEFF),
    .INIT_29(256'h1EDB4EA863CE16F1B7623EFF1E789041090B09010104FC02FE02FF01FEFFFFFF),
    .INIT_2A(256'hFCB76B40ECB5DE433E8177DB508BC8A9E5CBB5BE41659F52AF5921B2328097F2),
    .INIT_2B(256'hA21F9F1DA6592E0E1657D087642DC655B3910C6F9A52110328BF008C3893155E),
    .INIT_2C(256'h010101020101FFFFFFFEFEFF00FF00010102020202010101FFFEFEFDFDFEFF00),
    .INIT_2D(256'h862A1D9390E767FF492A0F02EB283408040EFD04040001FF01FF00FFFFFFFF00),
    .INIT_2E(256'h10B4F9F9240B3B86259AEF0696EF54DBF7EF3E95CF009F6D49D7ACEA6876A0EB),
    .INIT_2F(256'h38BF45D7844C1C2770E07418D171015241DD43929CABD41DC0BF09907E6451C0),
    .INIT_30(256'h0101010000FFFEFEFFFFFEFFFFFF000101010201000000FEFDFDFDFDFEFF0001),
    .INIT_31(256'h4CCE5EC037CE77C2D6D652E99984030413F9030304FEFFFFFFFFFFFFFEFEFF00),
    .INIT_32(256'hF42C46AA1B0E376F401AA232F892CE5FC48319743FCD91BD644AC34C25BF661C),
    .INIT_33(256'hDE852BDE9E5C508BFB8801800280C7AD6CFD5296038605D0E90751F573D9BB99),
    .INIT_34(256'h0404040303020202020302030303030404040404040302020101010202020304),
    .INIT_35(256'h716897B96236FF3379F74D153002FE1806020509020401040203030201020304),
    .INIT_36(256'h8D68C56DBF84AD5894BA243F4FCCC4B3BD43163E306CC14DFEFA4A2B2090BFC1),
    .INIT_37(256'h996C451AE7C2DA32A2075FB8FD17FCBE73F55D07E6C5CCF2288BEF011A83A683),
    .INIT_38(256'h020100000000000001000101000101010100000000FFFFFFFFFF000102010101),
    .INIT_39(256'hAC1702E560EE3C479D03C612FDFE0C09030209FD04FF0101FF0000FF00010102),
    .INIT_3A(256'hBD0AABD0D8A904F2F94E3B81A9E369EF3798DFC95E3101CA0DF0D34FB77D569C),
    .INIT_3B(256'h696979786B78A5F32E5B8C9D8D4AF99F4408DCDD1178D826A70D05DCD98DEC66),
    .INIT_3C(256'h0000FFFF0000000100000100000000FF000000FFFFFFFFFF0001010101010000),
    .INIT_3D(256'hEA034FF21AE48A0E49DA06F9FF0E0BFC060AFC02FFFF00000000000001020101),
    .INIT_3E(256'hC23908E20BACC99F5469046333EECA9AB6ABB8B2B56CC96A4C408983019E2A6E),
    .INIT_3F(256'h5E86B5EB27678894998F6E28C85EE97F526BAD14AE44DB93070FF09FF52B42EB),
    .INIT_40(256'hFFFFFFFFFF00010101010101010000FFFFFFFFFEFDFEFF000102020302020100),
    .INIT_41(256'hCAA31A1E2B9083847AF9EFF60E15FE0308010100FFFF00010200000101010000),
    .INIT_42(256'h8FBE375AFA17F272E57678E6D5C2E4F5A0392F80F71B4636371F7B980F22CE06),
    .INIT_43(256'h61B41176E63C4A22D8840B7DE857F7C7DE15AF95602BF197DFF59ECFDF9E19A2),
    .INIT_44(256'h00FFFFFF0001010101020101010000FFFFFEFEFEFF00000202030302020100FF),
    .INIT_45(256'hD0C9707FD6C682F125ECE60612070909FD0302FFFEFE00000101010202010000),
    .INIT_46(256'h947725713A0DB884E71A94C810BDA5F741B97AF53C1066EFA17529D7E046C770),
    .INIT_47(256'h6AEE7F0781C3B97E044B81BC0B956E77B03604FD1312A3178065C5E286B532F4),
    .INIT_48(256'hFFFFFFFFFF0000010101020000FFFFFDFCFDFEFDFE000101020302020100FFFE),
    .INIT_49(256'hA73CB2F92374501C66ECF409020B0F03FE0202FEFEFE000001010001010000FF),
    .INIT_4A(256'hD010B8EB3FC6B707DE474D638C9B423C8E5E719C75D5AA40D09D928255F13150),
    .INIT_4B(256'hA83BCB62D6FDD67DF517FBF8815B4661D09680A49B52EB5F975BBF73D150D648),
    .INIT_4C(256'hFFFFFFFFFFFF01010102010000FFFEFDFDFDFDFEFF000102030202020000FFFE),
    .INIT_4D(256'hC39B126EA5136FDAB823FAFA0B0A0B0500FE01FEFEFE000101010100000000FF),
    .INIT_4E(256'hC625C05439C92FE645CD3B211086B9458F7AB9921D5E12C5579038367D8C20F5),
    .INIT_4F(256'h0589F56DC1DAAD3F97B2B3CF645F81B01CFE222EDD53B2105B181FB7743093FA),
    .INIT_50(256'h0000FFFF000101010201010100FFFEFEFEFDFFFF00010202020201010100FFFE),
    .INIT_51(256'h33D25107B5DA9C575852FC050A0B060802FF0000FF0101020102010000000000),
    .INIT_52(256'h2F99BBAC829A280651130DDC65D6D6C09E0D7B8105C96A7A8BF324F54789F358),
    .INIT_53(256'h2EA90845605C33C71349AB39D1B1EF4BB5777456F02D3A649E41575125F4AD55),
    .INIT_54(256'h010001010001010101010000FFFFFEFEFEFEFF0001010101010100010000FFFF),
    .INIT_55(256'h15E691D15A450FA9798AE1010C0B060209FE0000010101010100000000000000),
    .INIT_56(256'h26E75A5DEBF21E25AF6AE4D93BBC72B926D6A92EABD4774A9270FBB9BFC6C734),
    .INIT_57(256'h337FCFFCE5AF67009B34D7A39197ACFB76EE852694B1CFBC5606B0E9DCF5FCF0),
    .INIT_58(256'h0101010100000101000100FFFFFFFEFEFF00000101010101000000FF0000FF00),
    .INIT_59(256'hBCE36D6C2E770724FDC27F830A0B06010901FD0201010102000000FF00000000),
    .INIT_5A(256'hBDCE2F42C92B6EBB2D8EB8ACD2AF6440995EAB2D43FC440C516B900F2FFFDA2A),
    .INIT_5B(256'h1035585D54FF8E4633352C394578D2151B348BBCD9FD0AD671189741E82B4FC6),
    .INIT_5C(256'h01010201010101000000FFFEFFFEFF000001010101020100FFFFFFFEFF000000),
    .INIT_5D(256'hACA5D255AF16BB6B1BD7102C3C1404080305FD040201010200FF0100FF000001),
    .INIT_5E(256'h65C56E7358F3867FC9FDB7CB81EB7C26E8098E3DBC8154AB2D8E3194455BBA23),
    .INIT_5F(256'h15D0ADA3843BF2D6EC2883D90542B0101BBC48283717E4CEB94FE5BE9049010C),
    .INIT_60(256'h01020201010101000000FFFFFFFFFF000001020101010100FFFEFEFEFFFF0001),
    .INIT_61(256'hBB9B5A3FAA021E0258344321A2191CFF0AFD05FF0601020101FF0000FFFFFF00),
    .INIT_62(256'h0DCEA5488B8AEDDFC25386064BA7BDAF8B374872B42899481BD8AB9358A37B0E),
    .INIT_63(256'h37A821CEA88E7D8CCB46CE3DA40F628B9561BED93F200ACE9E898E856C59AB65),
    .INIT_64(256'h00010102010100FFFEFEFFFFFEFFFF00000101010000FF00FEFEFDFDFDFEFF00),
    .INIT_65(256'h11C24E9320C2676D0BE99A15DB0B12130007FE04FE06FE01FF00FEFEFFFFFFFF),
    .INIT_66(256'h66B16784599433A3D6BF487A8486A305C7F246D2872A0893754109244E939B5C),
    .INIT_67(256'h34AAF63FF704386AC14AEEA8297AC4ECB86E0E3B274D02EFC8CAF02580009F51),
    .INIT_68(256'hFF00010202010100FFFEFFFFFFFF000000010101010100FF00FFFEFDFDFFFFFF),
    .INIT_69(256'h9728E91EEF1CE3FAE3C01B6F2F437F150B060400020203FF03FF00FEFF00FFFF),
    .INIT_6A(256'hB96D327C8231C7B5476A1C20398D06D2869215BD82D321F315FDDF645E57DBC0),
    .INIT_6B(256'h25A5F636C3C0187AC533DFB56ACDE7DAD087EA3B799EA108163952B9816D98C7),
    .INIT_6C(256'hFFFFFF000102010000FFFFFF00000000000100000101FFFF0000FFFEFEFEFEFF),
    .INIT_6D(256'hB6E5B5F9B86B4123B349112BD255510E20FF0CFD01FF0302FF010000FDFFFFFF),
    .INIT_6E(256'hC45C86111BFD38F4FF4EB91A377738EE6C762D0310437B53D238DCFB346715A6),
    .INIT_6F(256'hFC881A9C16E31E8EEC34AD5D1AAEF9EBA846D75CA5C0D93BD39DD68E82A1038F),
    .INIT_70(256'hFFFFFEFF000101010100FFFF00000100000000010100000100FF0000FEFEFEFF),
    .INIT_71(256'h7ED6672EDD4D1996626EB3173AA75D35BB29F80EF805FE0400010100FFFF00FF),
    .INIT_72(256'hC4907ACDE51D501D85DEF4E7F4942D53D716F82361E7F97107DFB6E4816B72E1),
    .INIT_73(256'hDB904815CF7C559B0F567BD6802CA3BD822CC84CD0334F59C5E73A8957B52272),
    .INIT_74(256'hFFFEFEFDFE000101020100FE000000000000FF010100000001FF0001FFFEFDFE),
    .INIT_75(256'hD0BDD988B0F9C6AC1AB8431ED450BF4003812AEF11F409FA05FF020100FEFFFF),
    .INIT_76(256'hE8ACBE365D1074041F9D53E9214582F97A9AAB688133A2EDA15F4DAC3A24BB43),
    .INIT_77(256'hDCD0A9806539F7D900406D89D05DF6372C0EDA69E678E1165E004B2F1AC397C8),
    .INIT_78(256'hFFFEFEFEFDFF0102020201FFFF0000000000FFFF000100000000010101FFFEFD),
    .INIT_79(256'h150B165F9DA308FC58D7FF35823E8D1FF9C45428ED15F209F807FE040000FEFE),
    .INIT_7A(256'h14B18C648CCD211AADBB228637DB23D7B5D2B1A5FB58E4D4FE3626077FAAE8FD),
    .INIT_7B(256'hF7223027FCC08C45152446505A97EE51CBFAC0742AC0711560C1A942171CF51C),
    .INIT_7C(256'hFE00FFFEFEFEFF010203030201FFFF000100FF0000010101010101000101FFFE),
    .INIT_7D(256'h3EB5995B84EEBAFA1A2C9C3A49BC7B0BA8797E3627F014F10AF608FD040102FE),
    .INIT_7E(256'h9A1EFCCA3AD5918C68A4AFAB7CC291399AF4737109536225CF48E9C7D4641BE4),
    .INIT_7F(256'hF2519EBCB07D2BAF31FA1D4C09B4E0771681B7AA7A38F8E0B5216B6108AF1067),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],ram_doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],ram_doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    addra,
    addrb);
  output [7:0]DOADO;
  output [7:0]DOBDO;
  output [0:0]DOPADOP;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]DOADO;
  wire [7:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0F432FF73CF4752C9D30E1557701CC009CC0C033936170A56B31A2A8FF020400),
    .INITP_01(256'h3FAFF3D06FB38CDC668FE85559E0E2001FAFC81C141B718DA85908AAB3C1C600),
    .INITP_02(256'hDFE7F32854CC3F34A9EA37D557783000BFD7EE6ED8B3F6E1B8C2C42AACF0F101),
    .INITP_03(256'h13D5BA722505C939F0FB98D555DC06206FF3F4F62A02CBD0F6F2626AAB7C3E60),
    .INITP_04(256'h06FEBD2FB8883ECE441333A6557F03300DCE7F597302BAAEE2B2FBAAAAFE0F60),
    .INITP_05(256'h01B02F5C1E3681195E116AC0AB5F8176037150A4BC4C1B49FA73D1115ABF81FB),
    .INITP_06(256'h803827DAC86187C801764879AAAEE03B805913A6A71F4BD364C88987555F407C),
    .INITP_07(256'h920817C8E5B0003C95EDEB499557D41F502819C6F43CA5B0F7084605AB46D81D),
    .INITP_08(256'h4994FBE6C0E3B435AFD425A78AABCE0DAB1414EB5C6F02A8CBF3FE1355ABCC1B),
    .INITP_09(256'h5D8CF66392122E522F0622853955CD174D84FB644EDD876D627153E31AA1CD07),
    .INITP_0A(256'h7E8A0418ABE8023259E3F303AD55DD937D88E4538D2DF1C0A30265188555DD13),
    .INITP_0B(256'hEE32382CA57167BFEC8107126D55C5037EB2000CA0E6800620C62FDE8955E706),
    .INITP_0C(256'h3C5069E0E642558BE77528F28555D60FBE7038ECA760E43C853270EBAD55D70F),
    .INITP_0D(256'h0C9C4E8108A0AFFAB6D4B16E0AD59E0E3C9C6BA14330EC7DEC00F7461555DE0F),
    .INITP_0E(256'h1978FF02C91167628A952934EAABBA0E69A0500609960B85638E0B8C6AA7DC1D),
    .INITP_0F(256'h3F81E27DAD3871E57DDEC8D8D5567038FBE0F11917F1D296F757F80F954A7C3D),
    .INIT_00(256'hFDFEFFFFFEFEFDFF010303040200FF000000000000FF01020201010201000000),
    .INIT_01(256'hE72F816F34886FD3DC2D1D757376CA9ED925C14C2529EF14F00AF609FD060101),
    .INIT_02(256'h1FB3CE7B40C328DB52EEF742ED928E4F386B6B7419981542C918417592C570A6),
    .INIT_03(256'hE61E9C1E562CD353B912BAC9C66C1B510BE699D8D1D1BFB4B689F00A5D8F3876),
    .INIT_04(256'h01FDFEFF00FEFEFE00010304030100FFFFFF0100FFFF00010203030201010100),
    .INIT_05(256'h1EF816732EE4AE18E49C645F0B8AB994D20096D5281D27EF12F008F309FC05FF),
    .INIT_06(256'h0F0D8B944880427E2E73575D52E602956D043A46CA5209F693730B33019BF530),
    .INIT_07(256'h2F4A81F5678F73116AA9D62F0F18D8AA03CFDBDD5F809ECBBCA929DE8FB87DA9),
    .INIT_08(256'hFE01FCFE0000FEFDFEFF0103040200FFFEFD000200FEFF010101030301000001),
    .INIT_09(256'hD9FF1FB64E108ED5D4BF4704B840BD01234B73B3B82E1924ED12EF08F30AFC04),
    .INIT_0A(256'h4F80EB6A13E4C8957B190BA329023D37672808C74829BBEEF584E03026BAD9C7),
    .INIT_0B(256'h3E96DF1845708B861B4E4E39989CB06741B3C4328363C8D08C4205296768230F),
    .INIT_0C(256'h04FF02FCFE0000FDFDFDFF0105040200FFFEFE000200FF000202020201010001),
    .INIT_0D(256'h62CC35D7CC8B3DF338B5360680F7B3033A7F1F528461561422EA12F009F20BFC),
    .INIT_0E(256'h7227F698C087AFC5544C82B6CED4A712855464ABF039E27DE5B554AE87CD660F),
    .INIT_0F(256'h37C01B4C688086865EBAC2BFD64B4D692C11B127E57B75BC89006AE3A2600E90),
    .INIT_10(256'hFB04FE01FCFE0000FDFCFCFF01030402FFFEFDFE000200FE00010101020201FF),
    .INIT_11(256'h53F5F761F4AB5C5629F8A53610FFBF57806B966B9FD4E3A50825E515ED09F10B),
    .INIT_12(256'h96CBB7FA467417D35003D3D4CCA2FBAC925BA7B706C6C54A024288E8DD07139A),
    .INIT_13(256'h9E8C428C7E5973ABB12329263D791D42513D6C2D8F5929304FEA486C377117D2),
    .INIT_14(256'h0CFB07FF00FCFFFF00FEFDFBFE0203030300FEFE000000000100000203010102),
    .INIT_15(256'h38A7400A7E647FAE47415EC280D89F973453434EA54A7F6901F32CDE1AE70DEF),
    .INIT_16(256'h2C5B14443B40E8D32C75621C770B119DE3D33369258D85A47E7CB92309DD1C7F),
    .INIT_17(256'h08E3B6458A887C7F8A790610C7D345204B716AA7AB3AE16F818DD0DDD18B9D33),
    .INIT_18(256'hEB10F907FD02FCFE00FFFDFDFCFF00030301FFFEFEFEFF0100FEFF0101010101),
    .INIT_19(256'h501DBC052D72F67D65B49CE3742C10DC42F3372C2122A4AD442FDC31D81FE211),
    .INIT_1A(256'h506FB95B739094CEB4F9FB57D364201F70430A6443EE3D504CBBA4912A63DC8D),
    .INIT_1B(256'hA821DD9612677F7C74827D0B20D2C61903456D8A0642DC5E7AFCF5777F37F872),
    .INIT_1C(256'h12E912F509FD03FCFFFF00FDFEFE01010303020000FEFE000100FF0000020304),
    .INIT_1D(256'h22300CC195B98CCB3B079E2544AB2F6367CE4A65DC38F6ADCDA0FFD22CDA1FDF),
    .INIT_1E(256'hC0BE1147AE7B6D548E5B709A9C84DF6EFE6C1E8C9F55E14DF7A719EE99DE5F18),
    .INIT_1F(256'hA0A6F6944EE22B3B6ECE09C2FEE0B5F353FC34ACDF2E3ED13455B058D8333722),
    .INIT_20(256'hE610EB12F50BFC03FBFFFEFEFDFDFD0102030302FFFFFDFF00FEFF0000000203),
    .INIT_21(256'h434BC7ABCC63463A8C9DFB79C81B1D9C46F6835867FC03B4922F5033DD16E812),
    .INIT_22(256'h9F2938B6D0B934E9BF7761106CD75EAFD6B973EA2948D02244AF960EA94A8406),
    .INIT_23(256'h997A70BD46EA942884C1021DD220D79E1EE1995C5456F22F8DB8CB605FFF406D),
    .INIT_24(256'h00F608F210F70AFC04FAFFFFFEFEFEFD010305040301FFFE0000FFFF01010103),
    .INIT_25(256'h09F46824D198E2DA67E48293CDA5E55878CECCD00442BB30CBC422ABCEFBF302),
    .INIT_26(256'hF2ED758BDFBF96F09E8B7F58D55687DCA7612988E95333867CE000DA132014C0),
    .INIT_27(256'h833E2D449B24C68543B6EBF3E1C3868F4B71C34A332AEE63C222397B54B49904),
    .INIT_28(256'h1DE808FAFB09F907FD02F8FFFEFBFEFEFC000403020300FDFDFFFEFDFE01FFFE),
    .INIT_29(256'h206C0A72D16D434A10A1A0A42E08CE1E5A2AD796F31CA741F0569158BAEE26CB),
    .INIT_2A(256'hAF823D5B5B928785D589D7B7D27F77364DBFB409BE71B6B7FA2F58ACE79F4B38),
    .INIT_2B(256'h60383F2B1E6E19F6B41E34A14A945FD4B8A2CAA09C6CA6B6385A8EF99FC75447),
    .INIT_2C(256'hA23DD21CE807FEFE02FF01F8FDFEFEFDFC020201040500FF01FDFBFE01FEFD00),
    .INIT_2D(256'h9548A39C0F6E8FAC9B8DEFB1DDC3E07363C9F31EF09F770C8B52A8B21E84F068),
    .INIT_2E(256'hC606A537270A446765D79C13D6B46643E250D351ED8FF7D306E95959827628E7),
    .INIT_2F(256'hAC4A25293152A004854811952AB0E5B20CD2BAA326F8C2F25A3A577F48465BCE),
    .INIT_30(256'h8F8954BE30D719F009FE04FBFCFDFCFD01FD00020403050301FDFEFFFDFD0000),
    .INIT_31(256'h230F7944FFEAE2837B7F761EFEFD247044A5A10AE4A372F5D44F79054F2F5B84),
    .INIT_32(256'h50FDA922E5240D0E33149ED6C7037E6D33C99AD4ACF65F3CE3DC1111CAAA2D59),
    .INIT_33(256'h10422461996D1913A9ACC67BEC7AED0CDC1BAA660D74756586085CE32FF0C4E4),
    .INIT_34(256'h7C3FBF35D129D420E710F909F6FCFC01FDFFFE03000405040001FFFBFC00FFFD),
    .INIT_35(256'h96E4A53F3E95D3C9537328C54A2040D8599560E5B9478FD1FADBC0E30AD1A09C),
    .INIT_36(256'h49648FE39EA9FDE6D8BCA9C79982E42FB9B62DE18F081CD435C1FD78CF4A0380),
    .INIT_37(256'hC3D4615D72602B2357E8E821E760C2E5E3C2E34DD031AA2874B0459B45FC088B),
    .INIT_38(256'hF78E7C4ECC20F1FC09F6060107F0FB00FDFD00FEFF010305040101FDF7FE06FF),
    .INIT_39(256'hE0DF2748D32F7C7F6643FC0CB0AD28C9A220D4A9BAF20F9760CE1FC549867B71),
    .INIT_3A(256'h3A7116E117274793303A76C372A2EC593BC7C1B3E4BE93ADCC5166F4410C041C),
    .INIT_3B(256'hC29E6FEE13A4D76B10585594B53A81B2C2BC5F279F2B6E3740B003D129CAE52A),
    .INIT_3C(256'hA3DDD34E879950B82ADE14FB08F7FDF9FFFF01FA03FF0204050000FFFCFEFBFC),
    .INIT_3D(256'hFDF718F75C1F6F1A6AA27E879B2DEABCBF370821A3CD5B1B94188FF760A05D6A),
    .INIT_3E(256'h03C995A8E14FBAA79EFD925A7E9C959A1181868DE987DA9E50D1060FFB3384A1),
    .INIT_3F(256'h421991D925BA14B8302FEB12490E43748C8155AC5B1388D0067C02939BE677D5),
    .INIT_40(256'h85BC75804AD912FDEF11EF14FB08F3FFFBFD0302F9FD0303030904FDFB02FFFB),
    .INIT_41(256'h3A0208F7C8740D8ADAF543FE3466C081E32FD17C920D29413700E0C93A4A0732),
    .INIT_42(256'h08E14B7ACA9DB136CEFD77EBD3CAF01840F9BE1DCEE7D22A2A5B19366A844281),
    .INIT_43(256'h0EA25E22DF7613219748A6B4E2CE273C37271DEFFEB067B74B31ED7A45679A66),
    .INIT_44(256'h0D3DA6D949938D5BAB35D71CF80BF4FEF9FD0004F9FFFE0302060300FBFE01FA),
    .INIT_45(256'hDE2A47B718C0EB793644700C9960FE0C89A8BDB38ACF3F3F6989F9DC50316FFE),
    .INIT_46(256'h0E89A353C964BB6A6502B92DC7F062321295272CF10686B8441E136EF38D452B),
    .INIT_47(256'hF24B115F9718ED6312848A5389900B18FDDCD9EE82510F67B619C967ECE00582),
    .INIT_48(256'hBBB6642409AC914EC612F6000B0101F5FCFE0003FBFE00FF0407050101FCFEFD),
    .INIT_49(256'hBF51F195AD940CE2D56217641260B8EC89F02149B1D441635B6BFE48775E4136),
    .INIT_4A(256'h5423C9FDB0663087C19F32A98B92C02FA09C6F59D9642367239FFEA3FB5A19B0),
    .INIT_4B(256'hE26385BF89AFA37774D07DEE20681C05CFAEB9E5D9E089E515278E4498527900),
    .INIT_4C(256'h2283F2FFBD190BED15CF22DC1DF30BF1FDFA0300FAFC05FA030603FD05FDF9FC),
    .INIT_4D(256'h3FE729DECD6F6020984F650D599ADEF21ED3F79163EE7399354B8E6FCB33E4B8),
    .INIT_4E(256'hDBBBE6908650F8CD091D97309341859D0DC2A50951A3A3958F3394A03081741E),
    .INIT_4F(256'h9952E4369D5D4C62ACFA719CB8302B1CBAA5C9FF1744D64A692A3A0A48CAEEA3),
    .INIT_50(256'h388863CE9975809C56A43BD220F212F3F9FB07FEFCFA06FA020907FE0402F5F9),
    .INIT_51(256'h2CB21A1D7833686CE9EA0341D4A3A08B7D49B5108CC5847D12FBF6415D1689CB),
    .INIT_52(256'h9A81F0035638AB3B7B8301DFA130436DB717124507CD0983DB56BFB22F8A3D89),
    .INIT_53(256'h8D512A8EC92D11349FFD576959DD1454FFC6F431499B148E9413D7AD0B526C41),
    .INIT_54(256'h6BA3666C1817BD756E983CD519F40FF7F6FA07FEFCF906FBFF0907FE0304F4F5),
    .INIT_55(256'h4FBAE8B4E4712BB5A386A8DDE1AAB240C53F05B9BBBE8816E9B2E9ABA0AAA32E),
    .INIT_56(256'h6B780743EB1B66A90B0030CF1D17E03CD5B6C3CB15007B96D74C64705531BF4F),
    .INIT_57(256'hBF7B58C3E528E7FD6BD92C280187F78B5D1E2D7185E954A58DD27340CF03F6DA),
    .INIT_58(256'h5D10AF9344FDCC69709F36D819FE07F6FBFDFF0006F7FBFE0301080600FAFD01),
    .INIT_59(256'hE9FBDA3CD6C8CB770CE0C36D565B3CE9A24501D77D43B1B7CA2A27A81A52AD76),
    .INIT_5A(256'h357B3E7B3EAB2A5E816484D3C8608DDED60D02766A9D9F6E3EF880C9839E0DFF),
    .INIT_5B(256'hF6AD9EF9EB12D4DD3597D6CFB35CEDAC9B85A0C4DC4182966B7D03E285C0AB8A),
    .INIT_5C(256'h15D57DCA3A02C8716BA034DE12FB0BFAF6FC050000F901FD020808020201F7F8),
    .INIT_5D(256'h0CE4FC4AE759A1F37E4E6FDD69807E31A231CE7EF7782D940119162E627AD081),
    .INIT_5E(256'h3189659C6F0CCC210F8F8E1193BFC6AD5E2DA8247C569370EED580835A5AE72F),
    .INIT_5F(256'h43EEC010F613C6CDFC32738A8B41F2CDC0BB124C35759B76232FB99544786063),
    .INIT_60(256'h3D5DBACF0928AA7D64A736DE18F80CF5F5FF03FD04F7F3FC06050B09FFF6FBFC),
    .INIT_61(256'hCC3973C246DCBA6AA0542DFD53FB0EB9BE53AD10522AC3201B918868330CF289),
    .INIT_62(256'h61C08BAB723C3CB59CB329E5B36E1BF33FE190C1835A6B6BC5B775EA5492F4C5),
    .INIT_63(256'hA925B9F7F033DB9C9BDA3F53694C0DDCD0FE71BC8F8F8330D1F1A0710026236E),
    .INIT_64(256'h4BE208FFA378759E4CB133DB1DF60AF2FBFF01FE01F4F80005050B06FCF7FCFD),
    .INIT_65(256'h894EECF43F759D556F415EDE034F1C5D030FA6A64E6E3B510CD9F5D9DF25A2EE),
    .INIT_66(256'hA725C4BA5426935FDA4D7B6F8C8FEC54603802B4EA2BBD139C0EFE8C00D45583),
    .INIT_67(256'h16599699CE6C168B316CF747928532CEE139B903C58634D28EE7B955AEDA26A3),
    .INIT_68(256'h89B2899F0AF020D91ECF23E21BF708F1FEFF01FFFDF6FD0105060802FDF9FBFC),
    .INIT_69(256'hA6342025D4292157C1B81A1F880DEA3CF872B09D4B6B478615CD8C0D283EDF66),
    .INIT_6A(256'h238B29D21BD0CD0F992740D05BA32A47B86873D43976F0E17B8E0DBB01458FEB),
    .INIT_6B(256'h7B76341095B37081BDE3BF6F00005BC0D75CFA29B01EC96D4D0AE73C5AC37008),
    .INIT_6C(256'hFB8F5363865ACA1CE7FE0CF50DFE06F0FE0400FEFBF5FB040A090702FCF9F802),
    .INIT_6D(256'h9D7B8155B87E47E0B2D81A30E81EB332BFEAA2CE728F2CF260598FDDD6B94D34),
    .INIT_6E(256'hFB2B64C7E8AD09FE9571ABDA3BEF9795F36B5FACF2B60C0946D7B9B94FADB458),
    .INIT_6F(256'hB43F8E8C92F99249579AC7CBB39F94AFCB771C28446D2BFE162F1B4749E9E6B6),
    .INIT_70(256'hF791E2B66B76A53DC51CEA1105FBFBFDFFFE00FEF7FD0202020A06FDF9FE00F5),
    .INIT_71(256'h65106704A2D149FCB98FC86DB3F2C60AAC6DE3A2266F338B2A7B261CCF2EC1A7),
    .INIT_72(256'h1ACB61BDD5B50CB2667D23AC0FD665D0B6B818910679234ECE9F598E24BD2EF6),
    .INIT_73(256'h9CBDD619A92267E30DA71C7F831FA89AE9AB1CDD9D875650E447577B7C559CE7),
    .INIT_74(256'hCBF28131DA31CB1FD320E317F807F5FBFF02FBFCFE02FF0605040100F9F8FE00),
    .INIT_75(256'h4B8728939423244B05AF426D760B96FFFF00E795A614AB6CC3F13C163C739B3D),
    .INIT_76(256'h3A8BA1988A68FB97D9035E5C94770B6EADEA4EC29C95704CD6998508192273FE),
    .INIT_77(256'h40D4EDB8C5391A6EE50AEE9C6B6CAAAE2BC9E01878776188ABA3B399DA7F051E),
    .INIT_78(256'h84FFA87169B628DD12FD030CFD01F80100FFFCF6F6FF06090905FEF9FCFE01FF),
    .INIT_79(256'h64F58CDC9C09BD57C72C55D334487D2AC8AC281A933D09C23490E2E9102556FD),
    .INIT_7A(256'hBE4D87D9B1752B0C9658B8DDC4EAF82FD4C6AD2E9CAE7353C7153DFA8233923A),
    .INIT_7B(256'h6A9CEC7DF222B52C1EBA19EF3EAFB0F572A123D41E244A01BFEDF60CF709A9C3),
    .INIT_7C(256'h637E41CC37C228D022E318F709F6FE0101FBFFFC000106050501FEFAFC010300),
    .INIT_7D(256'h752E081FA0A97DFBE8F40CE0894C6FB9FE0A74D3E96AC8E2B50F3B1163C05B3C),
    .INIT_7E(256'h9D3CCFD79CEE7475BF2E899A723E46201ECE5DED89D4A6A5EF852DA2447F2749),
    .INIT_7F(256'h224F4F77FAE6724BB1D0791FE8E9D8175B00EF498FE76DC3E6509DE564E3FFD4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [9:0]addra;
  input [9:0]addrb;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_35 ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFBFFFDFFFCFFFE00000005000400050001FFFDFFFBFFFAFFFF00010001FFFF),
    .INIT_01(256'hFFE200CDFF61007DFF9D003AFFCB001AFFED000B00030003FFFFFFF800000001),
    .INIT_02(256'hCB3EC93EE518F1B0DF6603F73DC131DA12271E240D20E8B3D459ED6B29381AF0),
    .INIT_03(256'hF28CF5D7F6FCF7EA02C9120910AD145A246E2354188B15AD09A8F0F8E10DD40E),
    .INIT_04(256'h08630D5510CA119910620E9C0A1C0369FD8DFB6BF726ED57E983EECDF3BFF363),
    .INIT_05(256'h07CA07A706B80587044D016EFCFEF827F4F2F355F30CF455F747F9AEFCD50279),
    .INIT_06(256'h02B001D7005FFEBEFD09FB8FFAE1FB12FB8CFBDBFC24FD7BFFCE027004EC06DE),
    .INIT_07(256'hFEB4FD44FD10FD9FFDCBFD98FD92FDDDFEB8002F01E803020351032502F40305),
    .INIT_08(256'hFFFAFFFAFFFA00000003000500070004FFFDFFFBFFFCFFFEFFFE000100020000),
    .INIT_09(256'h0051FFAA003CFFD70008FFFBFFF2000CFFF60014FFF60008FFF800000001FFFF),
    .INIT_0A(256'hC42DDDFAF190DBFEF6E134FE35C115181CB014C8F2A9DF74DBF0161727AD04BE),
    .INIT_0B(256'hF724F878F574FE330D800D0913F1264220AC161919401172F4ECE811DFE9CD10),
    .INIT_0C(256'h0C41114812C010D90F690BEC0480FE0EFBC0F5F7EBD3EB20F24DF4C1F1DBF19D),
    .INIT_0D(256'h077706720549048B0246FDE6F93EF5F5F397F296F3E0F6A7F8CFFBF2016806B2),
    .INIT_0E(256'h01B90064FEBCFCEBFB8BFAEAFB27FBB2FC2AFCB7FDCCFFE6022B043D05FC073C),
    .INIT_0F(256'hFD66FCC6FD36FD9DFD96FDAFFE25FED2000A01A80303038B036F031802CD0275),
    .INIT_10(256'hFFFCFFF8FFFE00010006000400040000FFFCFFFBFFFD00000001000100010001),
    .INIT_11(256'h0044FFC90035FFBE0031FFCE0024FFE3001AFFF6000AFFF9FFFD00010001FFFA),
    .INIT_12(256'hD6D8F5A6DA27E71E2C9A386016D41B2B1B1FF761EC10D988FCE92BC10DFFFF9F),
    .INIT_13(256'hF9A2F610F97A07500DD91418246321EF13C016491850FB2AE853EA6AD6A9BFDC),
    .INIT_14(256'h106813E1118B0E9B0C4506FB00D4FBC0F368EBB0EE98F4CDF47DF135F09EF5DE),
    .INIT_15(256'h066805910469026CFEB8FA45F69CF45FF2E6F36AF60EF86DFB3E0071058B0A78),
    .INIT_16(256'h0065FEB7FCFAFB84FACDFAFCFBC6FCB0FD5DFDFDFFB201E9040C0588068206C7),
    .INIT_17(256'hFCB6FCDDFD64FD91FDD1FE41FEDBFFFD018102E80398039D031302B0027B01BE),
    .INIT_18(256'hFFF7FFFB0001000A0003FFFF00040000FFFAFFFB000200040000000000010002),
    .INIT_19(256'hFF70007FFF8E0048FFC70026FFE30010FFFF0006FFFDFFFA00010001FFFAFFFF),
    .INIT_1A(256'hF8B9DFFAD9592070398018FA17CB20FCFA81F256E40DE7D8249118DB000100B3),
    .INIT_1B(256'hF5D7F68902640EA514B2221D2297131B13BA1ABD011DE75FEFB8E204C0B6CEFD),
    .INIT_1C(256'h13A512470DAA0B4F09080406FB03F1B9EE32F223F630F3EAF0D2F074F4D1F90F),
    .INIT_1D(256'h05B80423022CFF41FB2EF73DF4E5F3D7F39DF58EF84CFABCFF7B04F0092F0E91),
    .INIT_1E(256'hFEEBFD2AFB9FFAC5FAF0FBD8FCDFFDB6FE28FF7E01A103D00558061906570648),
    .INIT_1F(256'hFCD5FD4DFD8DFDD3FE58FEF7FFE5013C02B10387039803170297025601BB0088),
    .INIT_20(256'hFFF9FFFE00070007000000040002FFFAFFFD0000000100000001FFFF00010002),
    .INIT_21(256'h0084FF9A0034FFDF0014FFF600040009FFFC0006FFFAFFFC0003FFFCFFFBFFF8),
    .INIT_22(256'hE9A1D09814AF388419C1146D2443FF7BF179F195DEAF15B82122023400B3FF5F),
    .INIT_23(256'hF13C017A110311401E8625F913B20F4F1C120872E51CEF3FED97C48DC76CFA40),
    .INIT_24(256'h11AD0D0A0AFE0A1804C8FA08F280F270F549F5A8F41DF242EFC0F28EFA0EF5A7),
    .INIT_25(256'h03CB01F1FF97FBCCF7D4F584F48CF425F5C0F885FA6AFE80046708A10CFC120D),
    .INIT_26(256'hFD76FC1EFB53FB21FBBAFC96FD98FE56FF74015703530518060D0666063A057D),
    .INIT_27(256'hFD6BFDA7FDE5FE69FF01FFCF00FE024F0341037503070274023301C20095FF00),
    .INIT_28(256'hFFFF0000000200080005FFFD00000001FFFEFFFE000300020000000000020003),
    .INIT_29(256'hFFD2000C0000FFF10010FFF90011FFF5000BFFFAFFFD0003FFFFFFF9FFFAFFFD),
    .INIT_2A(256'hCF23086337571A76101E244005E3EEB5FA7FE0570643242B05E20055FFA30046),
    .INIT_2B(256'hFF8E10D710191915268217460CD119160E4AE83FEAD2F3D2CC8EC255F721F4A1),
    .INIT_2C(256'h0C3B0B6C0A0F02CDFA8AF637F52BF63CF67EF4E4F32FF078F0B8F8BFF662F092),
    .INIT_2D(256'h01C2FF89FC3DF899F65EF522F49DF619F8D6FAB1FE3503B607CE0B9F102D1040),
    .INIT_2E(256'hFCC3FBF5FB89FBB8FC58FD57FE40FF360106032204CD05C1064C063C056803BC),
    .INIT_2F(256'hFDE5FE09FE8AFF0BFFB200B901EC02D1031502D2024A021C01C100A4FF1EFDDB),
    .INIT_30(256'h00010005000200030002FFFEFFFE0000FFFF000000010000FFFF0002FFFEFFFE),
    .INIT_31(256'hFFD90020FFE2001AFFED0017FFF40009FFFDFFFCFFFFFFFFFFF9FFFBFFF9FFFD),
    .INIT_32(256'hFEA8330D1C570D7A20710B9CEE01FDC3E739FA6D22500A18FFED0000FFFC0012),
    .INIT_33(256'h0D8F0F19156A244C199E0C8F16891056EC77E965F5ADD38CC1F4F1C3FBC5D428),
    .INIT_34(256'h0AA5085A0203FC72F9E8F713F5D3F719F6B0F420F106F075F65EF70CF397FE3D),
    .INIT_35(256'hFFA9FC94F946F73CF622F556F635F8E6FB2BFE59033C06E109DA0DE60EED0BF1),
    .INIT_36(256'hFC51FBCFFBDAFC69FD25FDD7FED700CF02D5045A0560060C060A055703E701DF),
    .INIT_37(256'hFE50FEA9FF0FFF9C0083017702380298028A022501E101A800EAFFB1FE70FD35),
    .INIT_38(256'h000200040005FFFF00000001FFFFFFFF0001000100000000000000010000FFFF),
    .INIT_39(256'h002BFFD6001EFFEE0013FFF90008FFFEFFFD00010000FFFAFFFCFFFBFFFF0000),
    .INIT_3A(256'h2DD41D030C801C740E07EF7FFDFFEE60F4191D960D73FFDC0045FFC50037FFC7),
    .INIT_3B(256'h0DC8120320FC1AC70C7F1414117EF02BE8ACF702D9E6C35AED36FF18DADBF90C),
    .INIT_3C(256'h06B002D8FF0BFBFFF844F63AF73EF73AF532F268F036F4D4F95CF64AFCD00B39),
    .INIT_3D(256'hFD3CFA29F80CF6FAF636F6E6F94AFB47FE1A02A705F1084B0BE40D910B0508D3),
    .INIT_3E(256'hFC0DFC06FC4CFCE7FDBBFEA50045022D03E0050D05BB05B7052603ED02190009),
    .INIT_3F(256'hFEC8FF2BFF8D004000F601A20215022A01C901A701C001450044FF21FDDDFCAB),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_35 }),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7F007F007F00007F00007F7F7F7F000000000000000000000000000000000000),
    .INIT_01(256'h070E0D0608087A747B7063737F717A130F060C07787E7A780B0800007F007F00),
    .INIT_02(256'h7D7C7B7B7B7C7D7E000203050604030302007E7D7B7B7B7A79787A7D7C7E0406),
    .INIT_03(256'h7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0001020202020101007F),
    .INIT_04(256'h007F0000007F7F007F7F7F7F7F00000000007F7F7F0000007F00000000000000),
    .INIT_05(256'h0C0B0607067A757A7167747E737B110D060A06797E7B790A0700007F007F007F),
    .INIT_06(256'h7D7C7C7C7D7E7F000102040403020302007E7D7C7B7B7A79797B7D7C7F040507),
    .INIT_07(256'h7F7F0000000000000000007F7F7F7E7E7E7E7E7F7F0001010202020101007F7D),
    .INIT_08(256'h7F000000007F7F007F7F7F7F0000000000007F00000000000000000000000000),
    .INIT_09(256'h0A0506057B767A726A757E757C0F0C0509067A7E7C7A080700007F007F007F00),
    .INIT_0A(256'h7D7C7C7D7E7F000102030302020302007E7E7C7B7B7A7A7A7C7D7D7F0405060A),
    .INIT_0B(256'h7F000000000000000000007F7F7E7E7E7E7E7E7F0000010102020101007F7E7D),
    .INIT_0C(256'h000000007F007F7F7F7F7F0000000000007F7F00000000000000000000000000),
    .INIT_0D(256'h0405047B777A746C767E767D0E0B0508057B7E7D7A070600007F007F007F007F),
    .INIT_0E(256'h7D7D7E7E7F000101020202020201007F7E7C7B7B7B7B7B7C7E7D000405060908),
    .INIT_0F(256'h000000000000000000007F7F7F7E7E7E7E7F7F0000010101010101007F7E7E7D),
    .INIT_10(256'h0000007F7F007F7F7F7F000000000000007F7F00000000000000000000000000),
    .INIT_11(256'h04037B777A756E777E777E0C0A0507047C7E7D7B060600007F007F007F007F00),
    .INIT_12(256'h7E7E7E7F0001010102020202017F7F7E7C7B7B7B7B7B7D7E7E00040506080703),
    .INIT_13(256'h0000000000000000007F7F7F7F7E7E7F7F7F7F00000101010100007F7E7E7D7D),
    .INIT_14(256'h00007F00007F7F7F7F0000000000007F0000000000000000000000000000007F),
    .INIT_15(256'h027B787A7571797E797F0B090406037C7E7E7C050500007F007F007F007F0000),
    .INIT_16(256'h7E7F7F0001010102020101007F7E7E7D7C7B7B7B7C7D7E7E0004050508060303),
    .INIT_17(256'h00000000000000007F7F7F7F7F7F7F7F7F0000000101010000007F7E7E7E7E7E),
    .INIT_18(256'h007F00007F7F7F7F0000000000000000000000000000000000000000007F7F7F),
    .INIT_19(256'h7A787A76737A7E7A000B070405027D7F7E7D050400007F007F007F007F000000),
    .INIT_1A(256'h7F000101010202010101007F7E7D7C7C7C7C7B7C7D7F7F010405050705020300),
    .INIT_1B(256'h0000000000007F7F7F7F7F7F7F7F7F7F0000000101010000007F7E7E7D7D7E7F),
    .INIT_1C(256'h7F00007F7F7F0000000000007F7F0000000000000000000000007F7F7F7F7F7F),
    .INIT_1D(256'h797A76757C7E7B020A060304017D7F7E7E050300007F007F007F007F00000000),
    .INIT_1E(256'h0001010202020201017F7E7E7D7C7B7C7C7C7C7D7F7F0204050507050202007A),
    .INIT_1F(256'h00000000007F7F7F7F7F7F7F7F7F7F00000001010100007F7F7E7D7D7D7E7E7F),
    .INIT_20(256'h000000007F00000000007F7F7F7F00000000000000000000007F7F7F7F7F7F7F),
    .INIT_21(256'h7A76777D7E7C0309050304007E7F7E7F040200007F007F007F007F0000007F7F),
    .INIT_22(256'h0101020303020201007E7D7C7C7C7C7B7C7D7E7F0002040505060402017E7979),
    .INIT_23(256'h000000007F7F7F7F7F7F7F7F7F7F00000101010101007F7F7E7D7D7D7D7E7F00),
    .INIT_24(256'h007F00000000000000007F7F000000000000000000000000007F7F7F7F7F7F7F),
    .INIT_25(256'h77797E7E7E05080403037F7E007E000401000000007F007F0000007F00007F00),
    .INIT_26(256'h01020203020201007F7E7C7C7C7C7B7B7C7E7F0002040405060301017E79797A),
    .INIT_27(256'h0000007F7F7F7F7F7F7F7F7F7F0000000101010100007F7E7E7D7D7D7E7E7F00),
    .INIT_28(256'h000000000000007F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F7F),
    .INIT_29(256'h7B7F7E7F06070302027F7F007E0103010000000000007F007F007F007F7F7F7F),
    .INIT_2A(256'h01020202020100007F7D7C7C7C7B7B7C7D7E7F02040405050201017D797A7A77),
    .INIT_2B(256'h00007F7F7F7F7F7F7F7F7F7F0000000101010100007F7F7E7E7D7E7E7E7F0000),
    .INIT_2C(256'h0000000000007F7F7F7F7F7F007F000000000000000000007F7F7F7F7F7F7F00),
    .INIT_2D(256'h007F0106060202017E7F007F0103000000007F000000007F007F007F7F7F7F00),
    .INIT_2E(256'h010101010101007F7E7D7D7D7C7B7C7D7E7F01030405040201007C797A7A787C),
    .INIT_2F(256'h007F7F7F7F7F7F7F7F7F7F0000000101010000007F7F7E7E7E7E7E7E7F7F0000),
    .INIT_30(256'h00000000007F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7F7F7F7F0000),
    .INIT_31(256'h7F0207050202007E7F007F0202000000007F0000007F7F7F7F7F7F7F7F7F7F00),
    .INIT_32(256'h000101000000007F7E7E7E7D7C7D7D7E7F010202040302017F7C7A7B7A797E00),
    .INIT_33(256'h7F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7F7E7E7F7F7F7F7F0000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0306040202007E000000020100007F0000000000000000000000000000000000),
    .INIT_36(256'h00007F7F7F7F7F7F7F7F7F7E7E7E7E7F000102020100007F7C7A7B7A7B7F0000),
    .INIT_37(256'h7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F0000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000007F7F7F7F7F000000000000),
    .INIT_39(256'h05030201007E0000010200007F7F00000000007F007F00007F00007F00000000),
    .INIT_3A(256'h7F7F7E7E7E7E7F7F7F00000000000000000001007F7E7D7C7C7B7A7C7F000105),
    .INIT_3B(256'h7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F7F000000000000007F7F),
    .INIT_3C(256'h00007F7F00000000000000000000007F0000007F7F7F7F7F0000000000000000),
    .INIT_3D(256'h0202007F000000020200007F7F00007F00007F007F7F00000000000000000000),
    .INIT_3E(256'h7E7E7E7D7E7E7E7F0001010102020100007F7E7E7D7B7A7B7C7C7E0000020605),
    .INIT_3F(256'h7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F0000000101000000007F7E),
    .INIT_40(256'h7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F7F000000000000000000),
    .INIT_41(256'h01007F7F00010201007F7F7F00007F00000000007F7F00000000000000000000),
    .INIT_42(256'h7D7D7D7D7D7E7E0001020203030302017F7E7D7B79797A7A7B7F010104060402),
    .INIT_43(256'h7F7F0000000000000000007F7F7F7E7E7E7F7F7F0000000101010100007F7F7E),
    .INIT_44(256'h007F7F7F00000000000000000000007F7F7F7F7F7F000000000000000000007F),
    .INIT_45(256'h0000007F00020200007F7F00000000007F00007F7F7F00000000000000000000),
    .INIT_46(256'h7D7C7C7C7D7E7F0001030404040302007F7D7A787879797A7D00030606030101),
    .INIT_47(256'h7F7F00000000000000007F7F7F7E7E7E7E7F7F7F0001010101010100007F7E7D),
    .INIT_48(256'h7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F0000000000000000007F7F),
    .INIT_49(256'h0001000101000101007F7F00000000007F00007F7F7F0000000000000000007F),
    .INIT_4A(256'h7C7C7C7C7D7E7F0102040505040302007E7B787778787A7C7D00060805010000),
    .INIT_4B(256'h7F0000000000000000007F7E7E7E7E7E7E7F7F0000010101010101007F7F7E7D),
    .INIT_4C(256'h7F7F7F7F7F7F000000000000007F7F7F7F7F7F7F7F0000000000000000007F7F),
    .INIT_4D(256'h01010202007F000100007F7F00000000007F007F7F7F0000000000000000007F),
    .INIT_4E(256'h7C7C7C7C7D7E000103040505040201007D7A7877787B7C7C7E030606037E7F01),
    .INIT_4F(256'h0000000000000000007F7F7E7E7E7E7E7F7F000000010101010101007F7F7E7D),
    .INIT_50(256'h00007F7F0000000000000000007F7F7F7F7F7F7F000000000000000000007F7F),
    .INIT_51(256'h03020101007F7F0001007F0000000000007F00007F0000000000000000000000),
    .INIT_52(256'h7D7C7C7D7E7F0002030404030201007E7C7B79797B7C7C7E00020403007D7F03),
    .INIT_53(256'h0000000000000000007F7F7F7E7E7E7F7F7F000000010101010100007F7E7E7D),
    .INIT_54(256'h0000000000000000000000007F7F7F7F7F7F7F00000000000000000000007F7F),
    .INIT_55(256'h0503010000007F7F0101000000000000007F0000000000000000000000000000),
    .INIT_56(256'h7D7D7D7E7E7F01020203020201007F7E7D7B7B7C7D7D7F000000007F7E7E7F03),
    .INIT_57(256'h00000000000000007F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7E7E7D),
    .INIT_58(256'h00000000000000000000007F7F7F7F7F7F000000000000000000007F00007F00),
    .INIT_59(256'h030403000000007F7F0101000000000000007F00000000000000007F00000000),
    .INIT_5A(256'h7E7E7E7F7F000101020101007F7E7E7D7D7D7E7E7F0001007F7E7D7D7E7E0002),
    .INIT_5B(256'h00000000007F7F7F7F7F7F7F7F7F7F00000000000000000000007F7F7F7F7E7E),
    .INIT_5C(256'h000000000000000000007F7F7F7F7F0000000000000000007F7F7F7F7F000000),
    .INIT_5D(256'h01030503000000007E7F02010000000000007F0000000000007F00007F000000),
    .INIT_5E(256'h7F7F7F000000010100007F7E7E7D7D7D7E000000010201007F7C7B7B7D7F0000),
    .INIT_5F(256'h007F7F7F7F7F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F7F7F7F),
    .INIT_60(256'h000000000000000000007F7F7F7F7F0000000000000000007F7F7F7F7F7F0000),
    .INIT_61(256'h00010406030000017F7E00030100007F007F007F00000000007F00007F7F7F00),
    .INIT_62(256'h00000001010100007F7F7E7D7D7C7C7D7F000203030302007E7C7B7B7C7D7E7F),
    .INIT_63(256'h007F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_64(256'h000000000000007F7F7F7F7F7F7F7F000000000000007F007F7F7F7F7F7F7F00),
    .INIT_65(256'h7F00010407037F00017E7D010301000000007F007F007F007F007F7F7F7F7F7F),
    .INIT_66(256'h000101010101007F7E7D7D7C7C7C7D7E7F000304040302007F7E7D7C7B7B7C7E),
    .INIT_67(256'h007F7F7F7E7F7F7F7F7F7F0000000000000000007F7F7F7E7E7E7E7F7F7F7F00),
    .INIT_68(256'h7F000000000000007F7F7F7F7F7F0000000000000000007F007F7F7F7F7F7F7F),
    .INIT_69(256'h7D7F00010508037F00007E7D02030000000000000000007F007F007F7F007F7F),
    .INIT_6A(256'h010102020101007F7E7D7C7C7C7C7D7E7F01020304030201017F7E7D7B797A7C),
    .INIT_6B(256'h007F7F7F7E7E7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0000),
    .INIT_6C(256'h7F7F7F0000000000007F7F7F000000000000000000007F7F00007F7F7F7F7F7F),
    .INIT_6D(256'h7B7D7F00000609037F00007D7D030300007F007F007F00007F0000007F7F7F7F),
    .INIT_6E(256'h010202020100007E7D7D7C7C7C7D7D7E7F0001020304030302017F7D7C7A7879),
    .INIT_6F(256'h7F7F7F7F7F7E7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0001),
    .INIT_70(256'h7F7F7F7F0000000000007F7F000000000000000000000000007F00007F7F7F7F),
    .INIT_71(256'h797B7D000000070A037F00007C7E040300007F007F007F00000000007F7F007F),
    .INIT_72(256'h0102020101007F7F7E7D7C7C7C7D7E7E7E7F0001010304040403017E7D7C7977),
    .INIT_73(256'h7F7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7E7E7E7E7E7F7F0001),
    .INIT_74(256'h7F7F7F7F7F0000000000007F0000000000007F0000000000007F00007F7F7F7F),
    .INIT_75(256'h76787A7C000000070B037F017F7B7E050300007F007F007F007F0000007F7F7F),
    .INIT_76(256'h0101010101007F7F7E7E7E7D7D7D7E7E7E7E7E7F00020405050403017E7D7B78),
    .INIT_77(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000007F7F7F7F7E7E7E7F7F7F0000),
    .INIT_78(256'h7F7F7F7F7F7F00000000007F7F00000000007F7F0000000000000000007F7F7F),
    .INIT_79(256'h7775787A7C00007F080C037F017E7A7F060300007F007F007F007F0000007F7F),
    .INIT_7A(256'h000001010000007F7F7F7F7E7E7E7E7D7D7D7D7E7F01020406050404017E7D7B),
    .INIT_7B(256'h7F0000007F7F7F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7E7E7F7F000000),
    .INIT_7C(256'h7F007F7F7F7F7F0000000000007F7F0000007F00000000000000000000007F7F),
    .INIT_7D(256'h7B757478797B01007F090E047F017D7900070300007F007F007F007F0000007F),
    .INIT_7E(256'h00007F00000000000000007F7F7E7E7D7D7C7C7D7E0001020507050404017E7D),
    .INIT_7F(256'h7F0000000000007F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F0000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7F7F7F7F7F7F7F7F0000000000007F0000000000007F00000000000000000000),
    .INIT_01(256'h7D7A747477787B01007F0A0F047F017C7801070300007F007F007F007F000000),
    .INIT_02(256'h7F7F7F7F0000000001000001007F7E7D7D7C7C7C7D7E0001020607060504017D),
    .INIT_03(256'h7F000000000000007F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F),
    .INIT_04(256'h007F7F7F007F7F7F000000000000007F7F7F00007F7F00000000000000000000),
    .INIT_05(256'h7D7D7A737376777B02007E0B11047F017B7801080300007F007F007F007F007F),
    .INIT_06(256'h7F7F7E7E7F00010101010101017F7F7E7D7C7C7C7C7C7E7F0103060806050501),
    .INIT_07(256'h0000000000000000007F7F7F7F7F7E7E7F7F7F00000000000000007F7F7E7E7E),
    .INIT_08(256'h7F007F7F00007F7F7F7F00000000007F7F7F0000007F7F000000000000000000),
    .INIT_09(256'h007D7D79727376767B02007E0C12047F017B7802080300007F007F007F007F00),
    .INIT_0A(256'h7E7E7E7E7F7F01020202020101017F7E7E7D7C7B7C7C7C7D7F01030708060605),
    .INIT_0B(256'h000000000000000000007F7F7E7E7E7E7E7E7F0000010101010101007F7E7E7E),
    .INIT_0C(256'h007F007F7F00007F7F7F7F00000000007F7F7F0000007F000000000000000000),
    .INIT_0D(256'h06007D7D78717275757B03007E0D12047F007A7802090300007F007F007F007F),
    .INIT_0E(256'h7D7D7D7E7E7F0001020302010101007F7E7E7D7C7B7B7B7C7D7F010307080707),
    .INIT_0F(256'h000000000000000000007F7F7E7E7E7E7E7E7E7F0001010101010100007F7E7D),
    .INIT_10(256'h7F007F007F7F00007F7F7F7F000000007F7F7F7F0000007F000000000000007F),
    .INIT_11(256'h0706007D7C77717274747B03007F0E13047F007A7802090300007F007F007F00),
    .INIT_12(256'h7C7C7D7D7E7F000102030202020100007F7E7D7C7C7B7B7B7B7D7F0104080907),
    .INIT_13(256'h7F000000000000000000007F7F7E7E7E7E7E7E7F7F00010202010101007F7E7D),
    .INIT_14(256'h007F007F007F7F7F007F7F7F7F00000000007F7F000000000000000000000000),
    .INIT_15(256'h080806017D7C76707173747B0200000F13057F7F7A780209037F007F007F007F),
    .INIT_16(256'h7D7C7D7D7E7E7F000102030302020201007F7E7D7C7B7B7B7B7B7C7F02040809),
    .INIT_17(256'h7F7F000000000000000000007F7E7E7E7E7E7E7E7F0000010202010100007F7E),
    .INIT_18(256'h7F007F007F007F7F007F7F7F7F7F000000007F7F7F7F7F00007F7F0000000000),
    .INIT_19(256'h09090806017D7A75707072747B0201020F12057F7F7B78020A037F007F007F00),
    .INIT_1A(256'h7E7D7C7D7D7E7E7F000102030303020201007F7E7D7C7B7B7B7A7B7C7F020508),
    .INIT_1B(256'h7F7F7F000000000000000000007F7E7E7E7E7E7E7F7F00010101010101007F7F),
    .INIT_1C(256'h007F007F007F007F7F7F007F7F7F000000000000007F7F0000007F0000000000),
    .INIT_1D(256'h080A0A0806017D7974706F72757A0103030E13057D7F7C78010A037F007F007F),
    .INIT_1E(256'h7F7E7D7D7D7D7E7E7F000102030303020101017F7D7D7C7B7B7B7A7A7C7F0205),
    .INIT_1F(256'h7F7F7F7F0000000000000100007F7F7E7E7E7E7E7E7F7F000101010101010000),
    .INIT_20(256'h7F007F007F007F007F7F7F7F7F7F7F00000000007F7F7F7F007F7F0000000000),
    .INIT_21(256'h05080B0B0806017C77746F6E7376780206030D13047C007D76020B037F007F00),
    .INIT_22(256'h007F7E7D7D7D7D7D7E7F000102030303020201007F7E7C7C7B7B7A7A7A7C7F03),
    .INIT_23(256'h7F7F7F7F7F7F00000000010100007F7F7F7E7E7E7E7E7E7F0000010101010100),
    .INIT_24(256'h007F007F007F007F007F7F7F7F7F7F7F0000000000007F7F00007F7F00000000),
    .INIT_25(256'h0405090D0B0706017A76746E6E7574760509020D14027B037D74030C027F7F00),
    .INIT_26(256'h00007F7E7D7D7D7D7D7E7F000002030303030201007F7E7D7B7A7B7A797A7C00),
    .INIT_27(256'h7F7F7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F00000101010101),
    .INIT_28(256'h007F007F7F007F007F007F7F7F7F7F7F7F0000000000007F7F7F7F7F7F007F7F),
    .INIT_29(256'h0104060A0D0A0707007775736D707671760A0A000F137E7D077B72060C01007F),
    .INIT_2A(256'h0101007F7E7D7D7D7D7D7E7F7F0002030303030201017F7E7D7B7A7A79797A7C),
    .INIT_2B(256'h7F7F7F7F7F7F7F7F0000000001010100007F7F7E7E7E7E7E7E7F7F0001010202),
    .INIT_2C(256'h7F007F007F007F7F007F007F7F7F7F7F7F0000000000007F007F7F7F007F7F00),
    .INIT_2D(256'h7D0205070C0D0808077D7575726C73756D7A10087E120F7B020975720B0B0000),
    .INIT_2E(256'h020201007F7E7D7D7D7D7D7E7F7F0002020303030202017F7F7D7B7979797979),
    .INIT_2F(256'h7F7F7F7F7F7F7F7F7F0000000101010101007F7F7E7D7D7D7E7E7F7F00010202),
    .INIT_30(256'h007F007F007F007F007F007F7F7F7F7F007F000000000000007F7F7F7F7F0000),
    .INIT_31(256'h7A7E0306090D0C080905797475706E76706B0415017F15097A0A076E760F087F),
    .INIT_32(256'h02020101007F7E7D7D7D7D7D7E7F7F0002020303020202017F7E7D7A79797878),
    .INIT_33(256'h7F7F7F7F7F7F7F7F7F7F0000000101010101007F7F7E7D7D7D7E7E7F00000102),
    .INIT_34(256'h7F007F007F007F007F007F007F7F7F007F7F7F000000000000007F7F7F007F7F),
    .INIT_35(256'h787A0005070B0E0A090A017474756F7175697010127A0316037F0F7E687E1204),
    .INIT_36(256'h0202020100007F7E7D7C7C7D7E7F7F7F0002030303020202017F7E7C79797978),
    .INIT_37(256'h7F7F7F7F7F7F7F7F7F7F7F0000010101010100007F7E7D7D7D7D7E7E7F000102),
    .INIT_38(256'h00007F007F007F7F007F0000007F7F007F7F007F7F0000000000007F7F7F007F),
    .INIT_39(256'h77777B0206080C0D0A0B097B71757570736F667D1908740B147F090F72680A10),
    .INIT_3A(256'h020202010100007F7E7D7C7C7D7E7F7F7F0102030302020202017F7D7B797979),
    .INIT_3B(256'h007F7F7E7F7F7F7F7F7F7F0000010101010101007F7F7E7D7D7D7E7E7F7F0002),
    .INIT_3C(256'h097F007F007F007F007F007F007F7F7F7F7F007F007F00000000007F7F7F7F7F),
    .INIT_3D(256'h7877787D05070A0D0C0A0C04737177747071686C0E187976150D011105657314),
    .INIT_3E(256'h020202020100007F7E7D7C7C7D7E7F7F7F000203030302020302007F7C797879),
    .INIT_3F(256'h00007F7E7F7F7F7F7F7F7F000001010101010100007F7E7D7D7D7E7E7E7F0001),
    .INIT_40(256'h1501007F007F007F7F007F007F007F7F7F7F00007F7F00000000007F7F007F7F),
    .INIT_41(256'h797877790107080B0D0B0C0A7B6F7479726F6C657C1B096D051A050912736107),
    .INIT_42(256'h02020302010000007F7D7C7C7C7D7E7F7F7F010303030202020301007E7B7878),
    .INIT_43(256'h00007F7F7E7F7F7F7F7F7F7F0000010101010100007F7F7E7D7D7D7E7E7F7F00),
    .INIT_44(256'h180A7F007F007F007F007F007F007F7F7F7F00007F7F7F00000000007F7F007F),
    .INIT_45(256'h787977777D0507090D0D0C0D0371707B786E6D676E1217717219110413045F71),
    .INIT_46(256'h01020303020100007F7E7C7C7C7D7E7F7F7F000203030302020302007F7C7977),
    .INIT_47(256'h0000007F7E7F7F7F7F7F7F7F000001010000000000007F7E7D7D7D7E7E7E7F00),
    .INIT_48(256'h101400007F007F007F007F000000007F7F7F00007F7F007F00000000007F7F7F),
    .INIT_49(256'h787877777A0307080C0E0C0D09776E787D6F6C6A67051C7C670E1C060E106960),
    .INIT_4A(256'h01020303020100007F7E7D7B7B7C7E7F7F7F000203030302020202017F7D7A77),
    .INIT_4B(256'h0000007F7E7E7F7F7F7F7F7F000001010000000000007F7E7E7D7D7E7E7E7F00),
    .INIT_4C(256'h021B037F7F00007F007F007F007F007F7F7F00007F7F007F0000007F007F7F7F),
    .INIT_4D(256'h78787777780006070B0F0D0D0C7C6E760073696C66791A076402220C09147658),
    .INIT_4E(256'h0002030303020000007F7D7B7B7C7D7F007F7F020303030302020301007E7A78),
    .INIT_4F(256'h0000007F7E7E7F7F7F7F7F7F7F0001010000000001007F7F7E7D7D7E7E7E7E7F),
    .INIT_50(256'h741D097F007F007F007F007F007F007F7F7F007F7F7F007F0000007F00007F7F),
    .INIT_51(256'h77787777787F05060A0F0E0C0D0170750176686C6771150D6678231206150058),
    .INIT_52(256'h0002030403020100007F7D7B7A7B7D7E7F7F7F010404040302020302007E7B78),
    .INIT_53(256'h0000007F7E7E7F7F7F7F7F7F7F000101000000010100007F7E7D7D7D7E7E7E7F),
    .INIT_54(256'h6B1C0D7F007F007F007F007F007F007F7F7F007F7F7F007F7F00007F00007F7F),
    .INIT_55(256'h77777776777E0505090F0E0B0D0472750178686A686E0F0F687323170514055A),
    .INIT_56(256'h0002030403030100007F7D7B7A7B7C7E7F7F7F010405040403030302007E7A78),
    .INIT_57(256'h0000007F7E7E7E7F7F7F7F7F7F000001010101010100007F7E7D7D7D7D7E7E7F),
    .INIT_58(256'h671B107F007F007F007F007F007F007F7F7F7F00007F7F7F00000000007F7F00),
    .INIT_59(256'h76777676787E0405090F0F0B0D05747702796869686D0B0D697224190413075C),
    .INIT_5A(256'h0002030404030201007F7D7B7A7A7B7D7E7F7F010405050504030403007D7A77),
    .INIT_5B(256'h0000007F7E7E7E7F7F7F7E7E7F000001010101010101007F7E7D7D7D7D7D7E7F),
    .INIT_5C(256'h681A107F007F007F007F007F007F007F7F7F0000007F007F0000000000007F7F),
    .INIT_5D(256'h75767575787F040409100F0B0D05767A02786868686E09096A7626190413065C),
    .INIT_5E(256'h0002030404030201017F7D7B7A7A7B7C7E7E7E010405050504040403007D7976),
    .INIT_5F(256'h000000007E7E7E7F7F7F7E7E7F000001010101010101007F7E7D7C7D7D7D7E7F),
    .INIT_60(256'h6C1C0E7F007F007F007F007F007F007F7F7F007F007F7F7F000000007F7F7F7F),
    .INIT_61(256'h747674747A0004040A100E0B0D03787E0175676768710804697D28160413025A),
    .INIT_62(256'h0002030404030201017F7D7B7A7A7B7C7D7D7E010405060605050503007D7975),
    .INIT_63(256'h0001007F7E7E7E7F7F7E7E7E7F000101010101010101007F7D7C7C7D7D7D7E7F),
    .INIT_64(256'h751D0B7F007F007F007F007F007F007F7F7F007F007F7F00000000007F7F7F7F),
    .INIT_65(256'h747471747C0103050C0F0D0C0C017C017F7266676874077D6A09290F06127B59),
    .INIT_66(256'h0002030404030202017F7D7B7A7A7A7C7D7D7F010405060605060604007D7874),
    .INIT_67(256'h0101007F7E7E7F7F7F7E7E7E7F000101010101020101007E7D7C7C7D7D7D7E7F),
    .INIT_68(256'h021C067F007F007F007F007F007F007F7F7F007F7F7F7F00000000007F7F7F7F),
    .INIT_69(256'h747270767D0103070E0F0D0D0A0100037A6D65676A770475701826090A0E715B),
    .INIT_6A(256'h0102040404030202017F7C7A7A7A7B7C7C7D7F020405060606060603007C7774),
    .INIT_6B(256'h0101007F7E7E7F7F7E7E7E7E7F0001010101010201017F7E7D7D7C7D7D7D7E7F),
    .INIT_6C(256'h0F1702007F007F007F7F007F007F007F7F00007F7F7F7F00000000007F7F7F00),
    .INIT_6D(256'h737171787E0002090F0E0D0C08020401756965686C7B006F7D251B050D066763),
    .INIT_6E(256'h0103040403030302007E7B7A7A7A7B7C7C7E000304050606060605027F7B7675),
    .INIT_6F(256'h0101007F7E7E7F7F7E7E7E7E7F0001010101020201007F7E7D7D7D7D7D7D7E7F),
    .INIT_70(256'h180E7F007F007F007F007F00007F7F7F7F7F007F7F7F00000000007F7F7F007F),
    .INIT_71(256'h7271757B7D7F030B0F0E0D0C0705047C706667696F7E787011280E080D7A6172),
    .INIT_72(256'h02030404030303017F7D7B797A7A7B7C7D7F020405060606060604017E797774),
    .INIT_73(256'h01007F7F7E7F7F7E7E7E7E7F000101010101020101007F7E7D7D7D7D7D7D7E00),
    .INIT_74(256'h18057F007F007F007F007F007F007F7F7F007F7F7F007F00000000007F7F7F00),
    .INIT_75(256'h7275797B7C7F050E0E0D0E0C090701756A666869757D717E231C060D066D6405),
    .INIT_76(256'h02030404030302007E7C7A797A7B7C7C7E000305060606060604017F7C797673),
    .INIT_77(256'h01007F7E7E7F7F7E7E7E7E7F0001010101010101007F7E7D7D7D7D7D7D7E7F01),
    .INIT_78(256'h1000007F007F007F007F00007F007F00007F7F7F7F7F000000007F7F7F7F007F),
    .INIT_79(256'h7678797A7D00080D0C0D100D09057B6F6667676D7B757516240C0A0C78667113),
    .INIT_7A(256'h030404030302017F7C7A79797A7B7C7D7F0205060707060604027F7C7A777474),
    .INIT_7B(256'h007F7E7E7E7F7E7E7E7E7F000101010101010100007F7E7D7D7D7D7D7D7F0001),
    .INIT_7C(256'h057F007F007F007F007F007F007F7F00007F7F7F0000000000007F7F7F000000),
    .INIT_7D(256'h79797A7B7D040B090B11110A0800746B6666687777710A2313080F006D690517),
    .INIT_7E(256'h030403030201007D7B7A79797A7C7D7F0204060708070604017E7D7B77747678),
    .INIT_7F(256'h007F7E7E7E7E7E7E7E7F000101010101010100007F7E7D7D7D7D7D7D7E7F0102),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized4
   (ram_douta,
    ram_doutb,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    addra,
    addrb);
  output [8:0]ram_douta;
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]ram_douta;
  wire [8:0]ram_doutb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hC9EA322AA950BC84CA5950B555BE0E20DFCA6B17E2355980B473DC8AA1FC1C60),
    .INITP_01(256'h74316AFA78DCB111E0C6E11AD54F8788E866DDB4E883A6604C1A8C5AAACF0610),
    .INITP_02(256'h84CD3ACE9CFE928B29945FD6AA33C1C09BBC751D31E2F6F829EA14CD50A78380),
    .INITP_03(256'hE1A34CB212E6606BE15B4AA75AA9E0F0C3669D6709D8012AB81A52F55551E1E0),
    .INITP_04(256'hE1605B1732BC2FBCDA0C97D055547878E0D0A67048ED6E14B23A4FC6AA8CF078),
    .INITP_05(256'hD0E812F0EAE32A3EA442259E2AAABC1F31900DCE06E98171B6DB7DAF954E783E),
    .INITP_06(256'h7C7030985364D3857C950B738AD50C0F98D82E9FD3FA42BAF88D0D1D2AA3BC1E),
    .INITP_07(256'hCDA4069A83F5DB931AD9CC5AE5559F0FCD64148AE3B0C7CA9DF05FF975555E0F),
    .INITP_08(256'h4BC46F9058E78BDBD2CFF5117551870FCD8447905C666A442117DA9E8551E60F),
    .INITP_09(256'h09709BEC474BB36F3E795132E553870749C47FA45A847458CA0DF0FAB5538F0F),
    .INITP_0A(256'h2D7088DB979CCDC28853BFBDE555CF0F0D7088EF8942740B7B27D17B2555C707),
    .INITP_0B(256'h3AE9F6DC822AC68DBD7DF6706AA7CC0F3E7910D82F86C96E9C7E19EB9955CE0F),
    .INITP_0C(256'h5B21FD90CBFA7D0DD7368A09D50FD83F5BA9F197BAB6F2D43461ABFCAAAB8C1F),
    .INITP_0D(256'hA0507922B68CE236555BD524AA8FE0791210679EA4A857C5E2B8DE6F5557903F),
    .INITP_0E(256'h01B9A8CCB15D16D6334D8EF3555FC0F90020C8384CB30A087696FEAF56BFE07C),
    .INITP_0F(256'h1EFC9EAE8D78D697FA921DD1557F01C0037F5F9746993D3C3C28AB58AABF81F8),
    .INIT_00(256'hEB0BFD05010002FCFFFFFAFBFBFE0205040302FFFFFF000100FFFF0000010102),
    .INIT_01(256'h41CC4CBFC4A16DF06BB09BD04DE409409140650AF302C80F315A6F60B63BD01A),
    .INIT_02(256'h842F6D01E19E175F4A75C0349EA00F77E90570E78A9B6606493273EEEA728C47),
    .INIT_03(256'h39D38456DCC086613623EE1606183CB6CF1747204856D18C95DFBBB8F2DE5C16),
    .INIT_04(256'h26DC16F50AFD05FDFD02FEFAFEFAFF0304020401FFFFFE000200FF0100000304),
    .INIT_05(256'hF956438FD9A5DD686383BBA75276998DF65E31215E1270D9FBCB8BB071AF44C1),
    .INIT_06(256'hED5EFEC289268F82BA507276C04CBAE5D920B485D751813E7E465713AE154B2B),
    .INIT_07(256'h247C27E3C43503B9772702A29379797E22B845A0C3122EAF4CFD1DAF6CC76E68),
    .INIT_08(256'hC924DF1BF012F907FCFE0000F9FAFAFE0207040302FEFD01020201FF00030100),
    .INIT_09(256'hAD1B892CE01BA8693127D6191E3146C110AAF10A8B6C6C5ACD38CD8B9A43CF2F),
    .INIT_0A(256'hB78BC3988FFB2CE288B8111BE6329482E27CA6E9B54302E0344F2EE911607FA2),
    .INIT_0B(256'h39339C5C3326864B02A621D95E44FDC3EEF5C55EE11866AB4ED74D49B576C5ED),
    .INIT_0C(256'hF9ED0AEA13F410F807F90001FDF9FAF9FF03060303FFFDFDFF010100FF010101),
    .INIT_0D(256'h893E8FDBC49312D7D2E80D5B212D054B436CEC16488BF74B1DDD595F1902EA10),
    .INIT_0E(256'h6865A3100EADB155455388388EE816C3738F93D7E1E78A3956C36F9F1E06E014),
    .INIT_0F(256'hE02D35AB7184A5F69308771AFC42D66B42A8F3CA41047FBAF7C9488377A667A8),
    .INIT_10(256'h49C716EC05030208FB05FC0102FDF9F8FA0005060502FEFDFE00000101000103),
    .INIT_11(256'h80D0614D118FDAC1A05649943B4B30851ED53234297767B8FE35CEF73595769C),
    .INIT_12(256'hA4137A9611589EF7F37C52F9814B0E2244D2614E37F65AC41C46F11869D978AB),
    .INIT_13(256'hF9BCF31CBFAEF40229A5F66D39172089F6D77FE8AE3D49C1F8542D89A85B5186),
    .INIT_14(256'h9951B926DA16F60B0002FFFC0202FBFBF7FC0107060401FDFBFD000202000103),
    .INIT_15(256'h6D530C523F6605480D0824F895114BF44B1B86AC87B13E087CD0D3101664D488),
    .INIT_16(256'hDCAA078C4F6D0A2E5CE8765DB692197F9E11882A6F0A6B038475668D75D0A8EF),
    .INIT_17(256'h4214A6B3EFCAF94A2123A00B914EF4F173C59142DDB54D7CF2248B7A9E72074E),
    .INIT_18(256'h4DCA2DCC1ADC17F20FFC05FA000200FBFBFAFF03060604FFFDFBFC0103010002),
    .INIT_19(256'h8431EBAE1DE0AA0D7247E40431948EBB81F98C1BED2AA1AFA67ADA35DCC4CA84),
    .INIT_1A(256'h2612EA3588BFA3CBCC3B535B1F7FDC6C40687BE241AC63DE60DD03B10FA38481),
    .INIT_1B(256'h008C438B82D5B9056B321C890AAC71EED04DA77A36ECB76A8BE73AA34C76C407),
    .INIT_1C(256'h01E80FF8F201F10EF80EFC03FA0201FFFAF9F90005080503FDFAFAFD01020101),
    .INIT_1D(256'h2C0F2E11D8D5BF15C711D9405E2C9D2C36D5B932C264E6EFDF7EA79E3182D1C3),
    .INIT_1E(256'hF3273D388CED9305B5A3BBA9FEA3C05756A1E447CE083BCB8A9A7E69291ECE62),
    .INIT_1F(256'h3431E076986CA583038134F05913E5AADEAA30957F6A28B95D57B71B6B46DC38),
    .INIT_20(256'hEE7BA545C716DF0AFB070500FEFC0101FDFBF9FD0205060500FCFAFAFF010201),
    .INIT_21(256'hA880F090C3A37B40F89FD4C9E452CB51FC97405BA8657A8C0429FAEBCE10359C),
    .INIT_22(256'h3B10AB9035130177429AFF75184A87B992605BE64515AAF67DEE34820CA1F1CA),
    .INIT_23(256'hFA1B7C57C28D2F646C1C850BAA332A27C5DCB8238491A853B321DE41DAABDF45),
    .INIT_24(256'h4C8436D923D615E118F511FD04F8000200FAF9F7FE04090A06FFFAF8FC010400),
    .INIT_25(256'hC81F0FF80FA12035D103F9FD79EA8B89878FF630C52BB2BA855C7E5CDFDBD113),
    .INIT_26(256'h6D4FBE2055B430F20A28AD4CB29B1A3B390E573307012B386609A88FB5750488),
    .INIT_27(256'h25913F0BC5D347D547AC6380BC58255668E9EFA7F57DB9BF2C7EBD69F80C889B),
    .INIT_28(256'h5E7E75A148CC13E205FF0309FDFDFA0000FEFBF9FD0104070501FDFBF9FDFF00),
    .INIT_29(256'hD7A50764B5E0AEC38E1CF8462B6A5638FA81DAB3E953A5F2A30F7425E550B6C0),
    .INIT_2A(256'h4DF9CB1FD5B6E2003000B4F00AC2AF70FB64B75930E9D815B413DA45C62B5C4E),
    .INIT_2B(256'h6C92699F87FA95D2AD8E2BA262571D4299AD0CF155AE6FB391BA04576B4BCB87),
    .INIT_2C(256'hC4578F2BDC25D516D919F114FA03F801FF01FEFBF9FF0206070600FDFAFDFEFE),
    .INIT_2D(256'h63D1738B1E37337B57C509B536D4A3DDEB67B008FF68CE8E169623819CAEAA5F),
    .INIT_2E(256'hD57292C79F10045CF015D853BDCED9DBA501E17B236C526E71C0C3796759467D),
    .INIT_2F(256'h6BC2026910CCDC389DCD06BFE8421A2373E8DCFF9CC840196623409757182EFB),
    .INIT_30(256'h147B72AE766CB02ECD15F30A0201F9FAFF01FBFBF9FE0004070501FEFAF7FB01),
    .INIT_31(256'hC05BEEAE22A755B797E0BBFD17F4FDED46E7D7F1E973035F3347049663612CB6),
    .INIT_32(256'h19B0493218A32E74F8B249EBDFA9DEFBF3ED30FB9B286EC992CF04DB93A4A248),
    .INIT_33(256'hF5BDD98C9C65E9ADE38536DF6630360945CE25B5AADDED7363E1C823AD101099),
    .INIT_34(256'hF7DBC154AB3DE40AF7F210FB13FC03F804020300FCFA0106090A0802FEFCFFFF),
    .INIT_35(256'h011363DBEF681DA0D8627B1CFA015B645754D2C9FC1CCAB0DD8F59A4C04D71A4),
    .INIT_36(256'h32A0ECCB1DDE6AE9FA74827EC4D34DB8E0C3AF01A78043656A06BBAD62841D17),
    .INIT_37(256'h1868A6E251F6C4FC5698C22CEF0E511838AB17035AC281A854B4AD006B7156A3),
    .INIT_38(256'hAFC3B5534CC141C529C922E918F807F200FF02FEFDF8FF0106070701FEFAFAFD),
    .INIT_39(256'h990CF244AA05D03D1AF9BEBB859A63C995433D1DFF8276592CA7E365BB6D76E5),
    .INIT_3A(256'h670828804EDC72DD7F821E6215D086D72A12A6DA4E406CAB3F7E8192F5931358),
    .INIT_3B(256'hF4BA3C442F958815C1E59FB88FE26340327CED099947F8C03398A5F77443FC43),
    .INIT_3C(256'h97FCE6A7D1617FA144BD22EA14FA07F5F90005FCFEF9FDFF05070903FDFAF8FB),
    .INIT_3D(256'h17A5E4B5CBA40C1746B054F0357AE8BB02A65A05FEB6776801A3EBE89D74D756),
    .INIT_3E(256'h0654DFE5D0FD146AEB36B0F50EEB457C461C0058AD16AF454871006689EBDFFD),
    .INIT_3F(256'hAAC5919C2A424F201952CC8945BC8483363DA3E38B703BDA2F8C990BB865F84B),
    .INIT_40(256'h15356AB0FF468BA13EC418F10C0301F8FAFFFF0100F9FD0002060702FFFBF8FD),
    .INIT_41(256'h61BB11B1AC4A495CCEF872AF1E49A495CFA714CF29567940EF159289E682CB0E),
    .INIT_42(256'hDBC587132B02AFE40179A92E495ED66B4D97F5BC4070C482CE5367ABC8A9D112),
    .INIT_43(256'h4B9ABDDB28061D2260CA238718AAA2BC40F83F8E3F5A6B022D76A5501CA81F7D),
    .INIT_44(256'h79D3C102F24E81AD37D20BFB060600FCF300030000FBF9FE03060806FFFBFAFC),
    .INIT_45(256'hB9AA444A985A97C734F7A1614B538EC2228CE4B27456B3842AF39D29C5DF90F4),
    .INIT_46(256'hBC8E691B3ED33F68C2365F3E7F44DD8D946367BC044D7B8BE5B421B1573D3C15),
    .INIT_47(256'hEE67BBEF2BE9FF30A43881A620C1C4DB36B3CB07CC308C263477D9C18AFD5F9A),
    .INIT_48(256'hD8FB850BE75679B432D40AFA0409FFFBF4000101FFFBFBFF01050705FFFCF9FB),
    .INIT_49(256'h435E1E767238B8440A0953E39E3B0499BB54510337CF468F39FA942901C2B12A),
    .INIT_4A(256'hBC966B051258B2025595E443CFD09D92BB670705E38AABC671556C387FD91673),
    .INIT_4B(256'hA5379DE229E80348E58AD3E947E0E0DA0D5F4B7A6F0E862B4EA62832F1579AAD),
    .INIT_4C(256'h24B5DEBCE45979B035CE10F50905FFF9F600000100FAFCFF0106070300FCFAFD),
    .INIT_4D(256'h1F8A43391B8702C8BA49D5363AA13B705B4F9B9131ABA07F4C278E268BE1395D),
    .INIT_4E(256'hD8B577C98FA3009DDED0775C4BE8DB7CB059A251AE747EC8A05F61BB8FD74737),
    .INIT_4F(256'h79FD6DC120F821721ECF1D2A7306F3C3BFECD82239DD50147B0187953F97E9E8),
    .INIT_50(256'h3430678DCD6A72B13BC818EF10FE03F4F8FF020000FAFDFE0206070300FCFAFD),
    .INIT_51(256'hDE78C3DBC3485685F07B4CF339B48D4E97AB418D06D95489EEF6AB6FD7D63FE4),
    .INIT_52(256'h22146532CBC55157511853B10945353B7C08F6A761000FCEFC0BD66BEEE2BB02),
    .INIT_53(256'h76DA2C88151959B353F94A61AA31F9815194A3F81FA3FEF6A655F0E45DDE582B),
    .INIT_54(256'hB45D7BFF76A54EC62ECC1DEA15FA04F1FCFD0200FFF9FEFE03060602FFFBFBFE),
    .INIT_55(256'hDC2C1E84358B6A09C9D47BB7D44558D2D3360BC80D52C10DECD8912FE1F475E2),
    .INIT_56(256'hAC7F2552ABD8DE21C09B78470CAE5AC7014C4204B06EF3F1854ED2AD3ACD1693),
    .INIT_57(256'h94DFF9370056ABFF78F3479BF54FCC160484ACF20C62A7C1AF9B43199039B887),
    .INIT_58(256'h8EE293FDE50907F70AE511F412F902F1FEFE0200FFFAFE0005070501FFFCFDFF),
    .INIT_59(256'h84B40564E2CB2D3C034D475931E98A02D74A5D38CEF574D2F7F9604CD5B97ECB),
    .INIT_5A(256'h52DCB022720F93073A54DB001B1B51DB297D8A1501382222343A9EFB4B91CE74),
    .INIT_5B(256'hA4D5BCF40DA9083663B237E23F5785BFEFB5E909F60A2C70A9BB7854C48D3311),
    .INIT_5C(256'hE57721A38753CB25DE09F90605FFF9F7FEFE0101FCFE000106060200FEFBFEFE),
    .INIT_5D(256'h9122947BDEF1913E701C61618AD0FF4F0B8B6C4AC8D584C78C75F127F6258585),
    .INIT_5E(256'h06F9D1D9707084EA974F6C99299DB7A36067AA749A24C1102A4C79062AA14AD1),
    .INIT_5F(256'h977641CE63255C2BFF50362677604F900E173A2FCA6F86209DD3AE70E90ED8B7),
    .INIT_60(256'h8F5D5B46C631D920DB16F112FC03F3FCFC000000FCFF0005060601FFFDFEFFFF),
    .INIT_61(256'h4878E094F6348A0DD18850310CE479FC10925B2AA2FA30D42904FF9E20E9F20C),
    .INIT_62(256'h9E9AAEB9AC1E9C62FCA7E00767C7B2C8380D7446036A61A453B82F9A49551DBB),
    .INIT_63(256'h97EE8A9BCFB79DE76CE13A79D07529986B84793B61A0DAD99C01D1662BC9A38C),
    .INIT_64(256'h1FB86FA937DE17EE01000108FFFBF4FDFEFF00FDFE0002050604FEFDFBFDFFFF),
    .INIT_65(256'h17007784F165CC0EB8E8CBE4FFE6D51443132DDB91FDCE25AD208B1D67D81492),
    .INIT_66(256'hD4D289E72B00527FC805E883D373CAE0B88116F020FE77C86830300957C00B17),
    .INIT_67(256'h8A7D1480FDFAAD8ADDA27BEB1C7A29D5D4CE8F09B2CA49A6B142E56CAFA7825F),
    .INIT_68(256'hBC8F2AD921E615E610F50DFD01F5FCFBFF0000FD000104060400FEFDFDFEFDFF),
    .INIT_69(256'h0979DF15560701DFD5410F0BAA73ECFE80EA63CFA919A75ACECE8969086CBCE1),
    .INIT_6A(256'h97EEC84A9BB18DDBE0E3B9A827A820D3C518E6A4538F1DDF4C00A7C9E4A2F890),
    .INIT_6B(256'h10F90AD137DE25E397F8166B49622B1720EB8490CF03F3A4E479F3D0917F3DEA),
    .INIT_6C(256'h7E5BBA2CDF19ED07FA040201F9F7FDFEFDFFFF000203040503FFFDFCFD0000FF),
    .INIT_6D(256'h0CA47EA71A708C82A469736D0A2E3413E0702C108F5D848FEA9EF3578DB98F19),
    .INIT_6E(256'h12612A6C110B8F76AF684625AB28CBF3FA6589BF2452EA6BD80A58E9B4AA4515),
    .INIT_6F(256'h6B52FF459FBE813F8B9AF3FF5029122D27E033ADE09C02DB30A440AE8A28C0FC),
    .INIT_70(256'h0EE609FB02FEFA05FD06FEFEF8FDFBFEFFFEFF010205050200FFFDFFFEFE0000),
    .INIT_71(256'hF4C4A83EE6FC70B9B0F11502A0EB7518E0BE6DDCAEA90ACF9DF503B6917DFA3B),
    .INIT_72(256'h69A54BC96FC4A01C1E6CA7103C7177DA37DCE7784E53975BCFD6219641CBD18F),
    .INIT_73(256'hF8351160BDB75A3DEE377F2129131B21E66544B96FA7434F9BF7FDA03BC635C8),
    .INIT_74(256'h0AF108F708F609FC06FE00F8FDFCFCFDFEFD010305040301FFFEFEFFFE0000FF),
    .INIT_75(256'hCC12458860E062E066091AB6D135468769A833102BC75457F801423B2CF2EFDF),
    .INIT_76(256'h85C28DFE008E2265937FF7D5DDBF48D336BA72E3FA14D1FE646AB0DC2B493AA9),
    .INIT_77(256'hAD676A98AB8F9207D8BD6CC0F41811C84A6F36175CEEC8E91EBFED4EEF93550E),
    .INIT_78(256'hE80EF10DF50AFC06FF02FAFDFDFDFCFEFE010305050301FFFEFEFFFFFF000000),
    .INIT_79(256'h676EE4D2F3FF56B09DA9B183342EE0AE62CC65E7EEE8252AB95372255D8A1816),
    .INIT_7A(256'hBDB15573A2E476B734E40696A2BF06FB902AEEB73B219E77056928F146F9C457),
    .INIT_7B(256'hA3A7C3D1CAD226D19419456FB2CD95236C6F7DD98A584A61E3E91362C9A6AB58),
    .INIT_7C(256'h17E911F30BFC06FE02FBFDFEFDFCFDFD00030504040200FFFFFF000000000002),
    .INIT_7D(256'h9FFE4E2F5606EFA6CA89F9DC3714530CDFBFC58F2F03B619E85539F57B892FDA),
    .INIT_7E(256'h8647739CC672E535C8F2679B1E5D21B1DDAE56CF7CB4434BA3781D20D14FBCAC),
    .INIT_7F(256'hC3E4FC0B2371F891001E2536432CED50649E24F1D1B29F0321617168224F0B7B),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],ram_doutb[7:0]}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],ram_doutb[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized5
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    addra,
    addrb);
  output [7:0]DOADO;
  output [7:0]DOBDO;
  output [0:0]DOPADOP;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]DOADO;
  wire [7:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h37847A39CCE50144DC19537543FE066039931D599EF084BE6EF1B2BAAAFF01E0),
    .INITP_01(256'h4FD7F1386785C1C8AF59D80AAAF810006FCBF4D789D2019662D433EBD57C1C60),
    .INITP_02(256'hBFAF53C03FB4F0A3575B68A83BE0E0009FC7272FD01E400E323C8D155DF07181),
    .INITP_03(256'h1F4E6EE7F18A8606AC0B26547F0180013FAFA89D85685D3F0B0303283FC1E006),
    .INITP_04(256'h918301840D83557650DB5941BE0000031CC0C621BA0AEC45A6D70CA0FF034001),
    .INITP_05(256'h38F9C4954CA026D21D64C0AAF83880FF067E42F58519B48A8115B2857C08C00F),
    .INITP_06(256'h40E7C915A3757E81AC980AAFE1F001FF60F3CD14A86E9D2AC45D855770F000FF),
    .INITP_07(256'hF06FD982B48DFF8A287C207500FC00FEC06FCBF4475B6CB202101419C0E0007E),
    .INITP_08(256'h1DF01F712C62B27404F80056000E00FCF8639C41AC68B4BF6A0800000000007C),
    .INITP_09(256'h00F0C7CA92FD8BAC4DE000008007F00707FFC11B115679E685B02010000FC004),
    .INITP_0A(256'h9F2F2C124340D4DE1D802C01B803F8079E666C2A7DC221F15A4010003003E001),
    .INITP_0B(256'hCF33964EB76B1389DE000C003000FC01DF27ACC6CCA62E019C001C007803FC01),
    .INITP_0C(256'hF00F18F282C81238C8081F78061A7FC0C01813194CCDC3739F300F7030027F00),
    .INITP_0D(256'hF0E7987C0232F950442B113C070800F8FFC0FF0380CA353A9EA41BFC0D3803F0),
    .INITP_0E(256'h3033151B4DA7A8CC0DDE049F01FC00FE7067E8E68F5714F5FC0988BF03FC00FE),
    .INITP_0F(256'h98090649646EAB11D2F041020078001F301B0B747BC5B9E237390207C07C007F),
    .INIT_00(256'hE511F30AFE05FF00FEFDFEFCFCFDFDFF02040404020000FFFFFFFF0000000102),
    .INIT_01(256'hCA96A8FFBA1351E0EDB9C4C8527401475ED12AEAC1AE32A1221AA795015BCD1E),
    .INIT_02(256'hF33B3A333D5492C3F339423CCB42DE1E89773D3DEF016640756751A2C70E686C),
    .INIT_03(256'hCDF71541AB4CE1351EE8E504EB7FEB3DA43802E0CBE1667FA99772356BFA2A1B),
    .INIT_04(256'h08F805020102FFFFFDFFFDFDFDFEFF020304030100FFFF0000FFFF0001020203),
    .INIT_05(256'h3445D381EBA2357F812839FF34FAE87A13B3FD9F02D909EF3856DE738CD019EB),
    .INIT_06(256'hE3E29A9A26D1E615513222941227BCA65B584FBDDE6F57F8BBB14C28D253226A),
    .INIT_07(256'hB8D62ABE7C1664551CFEFABC3CA0E85810EECCC9F57385E112E8759E3C47F894),
    .INIT_08(256'hFFFF05FF04FD00FC00FEFDFCFDFF0204040201FFFFFF000000FFFF0101020202),
    .INIT_09(256'h0705570523C36D2CF48C241C7DA21C289B6DBA545ECD038DAF6CD4B3E70BF6FF),
    .INIT_0A(256'hA767227C519E039F742483D6DEB5D95D8CCDF0D5614D3F4AD62FE29EF3C13CB1),
    .INIT_0B(256'hA000A96E146D68595F4DFE5E7A8AEEA49BB1BBCD3248E07268D603A49F3EA7AC),
    .INIT_0C(256'hFD07FE05FE00FD01FFFEFCFCFE020405030100FE000102000001010202020100),
    .INIT_0D(256'h24DC8DBF4E278941CEB559B2D99689E295AA112850A4E8DB9615D309FC02F904),
    .INIT_0E(256'h5593DAE133721D343FEA087E205D3715A167F671256704E3F4A986C81D5FBC92),
    .INIT_0F(256'hDE6F33F0728C777B9067C0BBA0D5613F4F5A6FE2FE8E51A33344EA07C5575410),
    .INIT_10(256'h06FF03FEFEFD00FEFDFCFCFE0103040301FEFFFF010100FFFF000102010000FF),
    .INIT_11(256'h2CEF12E867353BA19E2C767BDCCC39139D4D50EB9DA3B4A82BF02DF306F704FD),
    .INIT_12(256'hD4864AAFDD4546A7E61E4FE22BF40E300758B752AC52296339F58E5C6885A6B3),
    .INIT_13(256'h3305D34F6A84B4C8A00706EF31B44900D9F1809C0FC53AF93F29705031701410),
    .INIT_14(256'h0102FFFEFF00FFFEFDFCFE0003040301FFFFFF00010100000102020201010101),
    .INIT_15(256'h36006F55618713260AF4F859F128C56C3A7973B387D6E2120C48F603FC000003),
    .INIT_16(256'h67BC59F74A4F89BF4402F76933314309550726489CBAFC994A6F5F47DAEEF192),
    .INIT_17(256'hCC9823515F86B9C2679B7D88DE682705F5311E79FF591F8DCC99E60D894629CD),
    .INIT_18(256'h0001FDFEFFFFFDFDFDFE0002020201FFFEFFFF01000000000101020000FFFF00),
    .INIT_19(256'hACD2150EE5348398E689E6BC0ABF2DFC838E20C5E470D8285B03FA02FB040002),
    .INIT_1A(256'hC62037CA36F000C1C355ACE1AAA521D4D9DE3787AC7CAF79709F74D7B55F489A),
    .INIT_1B(256'h3CC81731557B857E2B3B0F249A625D5B7B0E033F620167E71DCD5D4E5F8C5AC0),
    .INIT_1C(256'h00FDFFFFFFFFFEFE00010203020100FFFE0001000101000203030302000100FF),
    .INIT_1D(256'h1BB83B28F0FCD7223370151612BBAF551C069FA547923C6912F505F905FE0301),
    .INIT_1E(256'hB18E79EDB057212DC5818B155CB536E2C4BDA4BD32126A4A84DE9B2D650B5756),
    .INIT_1F(256'h5B91BA055E93821B5579C328C3AED206750FBC89288BDB13E6AF431CBC9A1E4D),
    .INIT_20(256'hFEFFFFFEFEFDFDFE000203030100FFFF00FF00000000010202020100000000FF),
    .INIT_21(256'h8511FE07BAB5890FC3C471081F70E1E05B30125A563F791EF307F80500030100),
    .INIT_22(256'h21E70031C8B8914AFAE3799696CFC24B7A0101D8B4B6864803C5D7F77E37267C),
    .INIT_23(256'h063CA3267863F4429718B55E2E3F7AEA5FDC62AED40C33EE9D57AFEC5E3B9B21),
    .INIT_24(256'hFF00FFFEFEFDFE0001020202000000010100000000010102010101000100FFFD),
    .INIT_25(256'hFB8722B367F934EF8717C65D4728AE33A51C9633318A2AF407FB0302020200FF),
    .INIT_26(256'h2F73A8F7533AF4220C7CAF6CC3F2F6001B88B9873F1F1F20EBE19489F8FCD591),
    .INIT_27(256'hEF51C807F1AB247F19FFF9E8D0D1159936B3CCA3A1A953CD59BB2F0059351044),
    .INIT_28(256'h00FFFEFDFDFD000102010000FF000000FFFF00000000000000000000FFFFFDFD),
    .INIT_29(256'h0455BBC55FB805370B6D71483D48743EC2DB33179832F904FE01030002FE00FD),
    .INIT_2A(256'h9D0F7EE9B1B18A5A8DE3B63DF50E50E6460DE8D2B2D4764F0B3DA6ADB107B00A),
    .INIT_2B(256'h265C81763BC53DF0FD3B64604F7ADF62E202CFACA44193D6FB5B368B6FAD8C0A),
    .INIT_2C(256'hFFFFFEFEFE0000000100FFFFFF000100FF00010101010100FFFFFFFFFFFDFDFD),
    .INIT_2D(256'hAC20D5679636B031285E754292FA1D16135CF4AA39010002FE05FE04FF00FE00),
    .INIT_2E(256'hDE9C475567EA2A5868F0E18024F7039D402E055A9900426C41AC7EB210AC3664),
    .INIT_2F(256'h452BF2B057EEABC31D759BA2DE47B5153B0BCDB46CC7F5052FB29F2E4F7B97DB),
    .INIT_30(256'h00FFFFFE00000000FFFFFFFE000100000000010201010100FFFFFFFFFEFDFDFE),
    .INIT_31(256'hE4070494A2F37F1926B350808B6F3E1AABC9B73D0AFC06FC05FE03FF01FEFFFF),
    .INIT_32(256'h9AB93AB6C27C6361DB0E247E14C40792C9FE4B6CBB32E3D0B98AE245B66797D8),
    .INIT_33(256'h4EE75ED77D6891E331669CFA80F34F816B2DF399F2376D9AE56E731B1121A23F),
    .INIT_34(256'hFFFFFF00000001FFFFFFFFFF0000000001010101010000FFFFFEFEFDFDFEFEFF),
    .INIT_35(256'h765C936402C65AD8EF7628062C5DDD239FBB4514F909FC06FE03FF01FEFFFFFF),
    .INIT_36(256'h6DAA18FA4ECA1443A4A5C684090221CF7F415C673C70A1B0B320C4D601EBAAC3),
    .INIT_37(256'h2E8CE3582453ABEC0B39AB4CE15EB8C08A59FF548DCC0D64DC97C444002882E2),
    .INIT_38(256'hFFFF000202020100FEFFFF0000000002020101010000000000FFFEFDFEFEFF01),
    .INIT_39(256'h8A6B852EF4E49817A596574BA449AE8CB24D1EFA0AFF0601020000FFFF0000FF),
    .INIT_3A(256'h4DB9A9D93F47FED2C9ED46AA8F01537545C3A4C951E1FA0B4B4877E3DCAE9301),
    .INIT_3B(256'hE246C477657A9FC2DE21B26A1FA1CDC5B067CB124F8EF47C2C336CA53B2E0CF5),
    .INIT_3C(256'h0000010101000000FFFFFFFFFFFF00010102010202010100FEFEFDFDFDFFFF01),
    .INIT_3D(256'hE4D29C36AA5E28E4C365C84363249CA15122FE060203020101FFFFFF00FF00FF),
    .INIT_3E(256'h2A3D4AFF067C5B30BA0B99C97F8DE32DC722AE2DD60B0E0A64E40F0D2D3D1689),
    .INIT_3F(256'hBC683000C98E809DD22BB9680F85A7A790398DD536A535F9FC0E255089B91506),
    .INIT_40(256'h00010101010100010000000000000000010102020201010100FFFEFEFFFF0001),
    .INIT_41(256'hD809B6DF4D1D39DC1A664D5672C48E5B23040405020502030001000100000000),
    .INIT_42(256'hAF736A53202F20DE170521E8064CF288054F65E96E7EE4007209EB47BF47BB5B),
    .INIT_43(256'hF3E1C48012BA94A5F862CB38A7FF44682DB540CF6519E2D3F80BF6D98B43861E),
    .INIT_44(256'h000000010000010001010000FFFFFF000000010001010100FFFFFEFEFEFF0001),
    .INIT_45(256'h82D278C40192EB930EB2358C0C7663230B0005010302030101FF00FF00FFFF00),
    .INIT_46(256'h2291311E3EFC296885A2D90C3F729D27EF43FB7E49B6F5C552B75F8DD9ADCA14),
    .INIT_47(256'h413513D57A27FF073D85C0E40A51A1B47A3913F9DBC5CFF502DB942FBD6629FE),
    .INIT_48(256'h000000010000000102010100FFFFFEFFFFFF0000010101000000000000FF0000),
    .INIT_49(256'h1B3775492E07C6A9792461606C66270D0206FF0401030202000100FF00000000),
    .INIT_4A(256'hAC98F0ACCF634FD243C9FBC202D78458B548DE7A1874B5941320F398221966EB),
    .INIT_4B(256'h493C312610EAC09C888691907F8095AFC8EB0B2E5998E701DA8E29B439A3DE26),
    .INIT_4C(256'hFF000000000101020101010100FFFFFEFEFFFFFF000001010101010000FFFFFF),
    .INIT_4D(256'h57CFDEEACA100D764304B3686131110407020100010201020101000000000100),
    .INIT_4E(256'h90E0CE68AEECB20762E7E35CCF4A9BD4806D61EAC2D52E1A88B9D65C2D0144B1),
    .INIT_4F(256'h0B1A4997C5BB8136E99C622BE59B8DC22AA50162D759B7C48E54FE579BCAC49B),
    .INIT_50(256'h0000FFFF00010102020202010100FFFEFDFEFF000000010202020202010100FF),
    .INIT_51(256'h0537EA3CF4E7B0906CF28A5333140807070200FF010101020202010000010100),
    .INIT_52(256'hF7D5398C18A8A01053A0A21CDFA0803C186647FBCE85F3F1E1170A5D0E21FEE5),
    .INIT_53(256'hC3016E02594E1BCD62DC3EAD47FEDA199E33E29941C612375A47C1F4FEEAA044),
    .INIT_54(256'hFF00FFFFFF000101010202000000FFFDFCFDFEFEFF0001010203020201FFFFFF),
    .INIT_55(256'h84E1ABEE260295DAEBA84C3A1706060A0603FD00FFFF010101010100000000FF),
    .INIT_56(256'hBFA5995F03C03FCCA4B32B7AA7B0546AE622D562B9C1ED4CC272211C04F70ED0),
    .INIT_57(256'h93098B1A89AE8B46C303367CEFA298B520CEA59565E0208CF1F1738E50F19613),
    .INIT_58(256'h00FFFFFFFF000101010202010100FFFEFEFEFEFDFDFF000103030303030100FF),
    .INIT_59(256'h4441EE322759B22BD52E2E1E10070809060201FFFFFD00010001010101010000),
    .INIT_5A(256'h0DCCC1749CDB1B80B2EB62E742B480D301B1BC39309B1738442D3C12FBA286CE),
    .INIT_5B(256'h7FFB80026CB5C071D82569B414A98AA7E7755E4A16B12BA71034E208AC17974B),
    .INIT_5C(256'h0000FFFF000101010101010101010100FFFEFEFEFFFF000102030303020201FF),
    .INIT_5D(256'hBD4A7EDBD9D1EFC97419040B0A0E090805020201FDFE01000001010101010101),
    .INIT_5E(256'hC46860773B5C2A9B847A88D6AECFF3382CED24A13480CE9EFB9F82F8ACCE4D2E),
    .INIT_5F(256'h63D351CD2C5D6A45D44AC3268B22E3D1F854FFD89C44EB73D315D612098EE2B1),
    .INIT_60(256'h0000FFFF00000000000001000000FF0000FFFFFFFEFEFFFF0001010202020100),
    .INIT_61(256'h69E2451CC812EC295239FFFB030A0F0804010200FEFEFEFF00FFFFFF00010201),
    .INIT_62(256'h5C8ADCBD45ECE3CE6093FD0B017C6350FE83B80445627518FE6233EEE5276E19),
    .INIT_63(256'h5FAC0C6BABCAD1C3A3690FA038E3A66B3F64CB5F1CBB3AD0568556D5090BC469),
    .INIT_64(256'h0100000000FFFF00000000FFFF00FF0000FFFFFFFFFFFFFEFFFF000101010100),
    .INIT_65(256'hCF86A439C56A424AE1DF6D05F605090C060602FFFFFFFEFF00FFFFFFFF000101),
    .INIT_66(256'h6ACDBAB17ACD9E99F69681C7A37241EF88B1D5EEB0782489228B7F5EA1422330),
    .INIT_67(256'h7C9CB7E10829322729484A10E9C7924CFCBDCE2B8D0476E357A59740D845908B),
    .INIT_68(256'h01010000FFFF00FF0000FFFFFF000000000000000100FFFFFEFFFFFF00010101),
    .INIT_69(256'h41BF35E2D23618055260D3E108F500040A0802FFFF00FEFEFFFFFFFEFFFF0001),
    .INIT_6A(256'h10AC7E876D1650E7288A1A0BD58B00A498FB367F86AD538FCE6DBEDABEBFDA54),
    .INIT_6B(256'h918C866E6975818BADE73076827C7442F3973B0F30558FE72B5F877F5848F67A),
    .INIT_6C(256'h0203030101FFFFFF00000000FF0000000101000001010100FFFFFEFFFF000101),
    .INIT_6D(256'h84D3589CD2D8C5770BA692C1990AF4FD0C0C08FF000000FE0000FFFFFFFF0000),
    .INIT_6E(256'h8FC2A84A0F1890CFB589E45DDB5E1A59646797C5A04EB7A10B1B26083045438B),
    .INIT_6F(256'hC5987336EBC5D6FF3884E96EDF080E240097127D01D7D6D7FC1E2758BFEB094E),
    .INIT_70(256'h000101010100FFFFFFFEFEFEFEFF00000101010202020100FFFDFDFCFDFEFF00),
    .INIT_71(256'h325004B8ED5696EC031F237F79891EFAFE110605FC000000FF00FEFFFFFEFFFF),
    .INIT_72(256'hCE63A56BD88620B32E91AD371476A6972734DDC2EE7709AB0F5B5DDA7DA50358),
    .INIT_73(256'h21D06909B46A4D79CB279A24BC42839ECBA403457CBB5016CBC7EB149F56E6C6),
    .INIT_74(256'h01000102010101FFFEFFFEFEFFFF00010202030303020000FFFEFDFCFDFDFF00),
    .INIT_75(256'h7B84B2E3D4D16E858EC000B743DEB75A0001130105FB0000FF0000FFFEFFFFFF),
    .INIT_76(256'h59A2202BEA090A0D017134378066BA37D6A20EC80D4AF91C39F639163E25D705),
    .INIT_77(256'h92178F0CAD69291153C541CC61FC95F81F4A092D446A627FF486A71D76369901),
    .INIT_78(256'hFFFF00010202010000FFFEFEFFFF0000000101010101000000FFFFFEFDFDFDFE),
    .INIT_79(256'hAD1B0549C0DCE3ECB175A4A04003090DB30302120003FE020101010000FFFEFF),
    .INIT_7A(256'h94FC247A46B471C1CE1825CF432A8E9EA21F8025012AA2301A2E2B9752B4E306),
    .INIT_7B(256'hEF7EEA55D98244120552CE59FBA53FD8507481354B2D16BC69BD99F89A59BAC1),
    .INIT_7C(256'h010001010103020100FFFFFFFE0000010102030304030202000000FFFDFDFDFD),
    .INIT_7D(256'h9107F03F4798881BBCFD9A9BFCBCD71B75270703100001FE010200030000FF00),
    .INIT_7E(256'h04F5392F3BAFC5D34BF34C687ED4276CD67E45B3BD7BD5D1BA4476EFE1C98316),
    .INIT_7F(256'h0FDD6AD241C36C3D190950D56E2EEB7D006C96A44F36CC6DED9BFEF3A4D519CA),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ,
    clka,
    clkb,
    ena_array,
    enb_array,
    addra,
    addrb);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ;
  input clka;
  input clkb;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [9:0]addra;
  input [9:0]addrb;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ;
  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_35 ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]ena_array;
  wire [0:0]enb_array;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000010002000100020002000100000000FFFFFFFFFFFEFFFCFFFCFFFC),
    .INIT_01(256'h00000000FFFF0000000000000001000100000000FFFFFFFEFFFFFFFFFFFF0001),
    .INIT_02(256'h062707ED01A700040005000CFFFFFFFEFFFE00000002FFFF0002FFFF0000FFFE),
    .INIT_03(256'hF055F232EF0DF01CFB81FF3A00520D0912720BC3077D02EDFD86FE1FFE27FDB7),
    .INIT_04(256'hF6F3F904FB58FD1AFFFC0319064B0AAA0D450BAA0AC6096D0310FD89F982F2F7),
    .INIT_05(256'h00CA02F804DA05E806950645052503D00198FEDCFCB5FA8FF7F8F74FF7F2F742),
    .INIT_06(256'h01AB01F7026502B902A9020A00C3FF3FFDD2FC68FB41FABBFACFFBE6FDA3FF24),
    .INIT_07(256'h010900EF00C40061FFD2FF41FEC1FE62FE37FE27FE20FE5DFEDFFF8200530128),
    .INIT_08(256'h00000001000100010001000100010001000000010001FFFF00000000FFFFFFFE),
    .INIT_09(256'hFFFF00000000FFFFFFFEFFFF000000010001000100010000FFFFFFFFFFFF0000),
    .INIT_0A(256'hFCA0063C0975022C0002000600090000FFFC00020000000400000003FFFF0001),
    .INIT_0B(256'hF337EF29F0D0ED50ED31F99EFE11FDDF0C7A14EC0E0909380463FD4EFD13FD8F),
    .INIT_0C(256'hF82FF7A7F8FBFA80FC2CFFBE031606400B140DFC0C340B540AF204AFFE7CFA80),
    .INIT_0D(256'hFFEC01480370055705ED06100563040E02EE00EDFE5AFCAFFAECF80DF738F871),
    .INIT_0E(256'h011A01C1022B02750273023501A00061FEF9FDA4FC35FB23FB06FB52FC6FFE70),
    .INIT_0F(256'h00E600D800CD00C3006DFFE2FF4FFEBCFE5EFE44FE44FE33FE6AFEFEFF9D0054),
    .INIT_10(256'h000000000001000100010001000100000000000100000000000000000000FFFF),
    .INIT_11(256'h0001FFFEFFFF0000FFFFFFFDFFFEFFFF00000001000200010001FFFFFFFF0000),
    .INIT_12(256'hFCE9FB8106610B1B02B3FFFD000A0005FFFEFFFA0004FFFD0005FFFF0003FFFF),
    .INIT_13(256'hFB72F3D4EE0DEF73EB8AE9F9F77CFCBAFB4E0BE41788108E0B3C05DDFCE7FBE8),
    .INIT_14(256'hF8D3F83BF72EF7FDF9FEFC50FF68023205C30AFF0E8C0D1B0C490CEB0682FF36),
    .INIT_15(256'hFE99000F016F037F050104FF04F9048F03AE02F20120FED7FD54FB63F86DF7C5),
    .INIT_16(256'h0041010801BF0237025B020601C8018F0069FED6FD9AFC5EFB61FB91FC13FCE8),
    .INIT_17(256'h00C700CA00C600C700CA0081FFECFF4DFEC4FE6BFE53FE50FE43FE7CFF04FF97),
    .INIT_18(256'hFFFF0001000100000000FFFF00000001FFFF000100020000FFFF00010000FFFF),
    .INIT_19(256'hFFFE0001FFFDFFFEFFFFFFFEFFFDFFFEFFFE000000030003000000010001FFFF),
    .INIT_1A(256'hFAB4FC2FFA5306CA0CCF031EFFFB000A00010000FFF90004FFFC0006FFFD0004),
    .INIT_1B(256'h002EFD01F47AECDAEE29E964E658F530FB51F8C50B851A5D13440D5F073EFC54),
    .INIT_1C(256'hF788F84AF7CFF686F79FFA30FBC0FDDF0138056B0AE80F6D0E2E0D8A0EE507EE),
    .INIT_1D(256'hFD17FE6AFF9E00F902E404140417048D04B0041B038101E1FFAFFE25FC33F8F1),
    .INIT_1E(256'hFF7E001000DF019B02290271021301AA01850088FEFCFDD1FCB2FBBDFBDEFC5E),
    .INIT_1F(256'h00DE00E800DC00C600C700C50073FFE5FF59FED7FE74FE57FE52FE3AFE79FF0A),
    .INIT_20(256'hFFFFFFFF0001000000000000FFFF00000001FFFF00000002FFFF000000020001),
    .INIT_21(256'h0005FFFD0003FFFEFFFEFFFFFFFEFFFBFFFCFFFE000000030005000200010001),
    .INIT_22(256'hFB62F97DFB59F93B07C40E72034DFFF8000500030001FFF80008FFFD0006FFFE),
    .INIT_23(256'h09A30192FEAEF4C0EB73EC9EE6B2E26EF334FA07F6550BDC1D7615EE0F840857),
    .INIT_24(256'hF8A0F6BDF810F7B1F5D5F729F9C8FA55FC9500F305010AE9107C0F2A0EBD10E8),
    .INIT_25(256'hFBFBFCB4FE14FEF5FFFC021503D204530504052D04A80465031500BAFECEFC98),
    .INIT_26(256'hFEC6FF400002010301C6023102860268020B01AE00A6FF51FE24FCC9FBA4FBA0),
    .INIT_27(256'h00CC01170120010200C800AA00AE0068FFDEFF61FEDCFE6BFE46FE44FE2CFE54),
    .INIT_28(256'hFFFF00000000FFFF000000000000000000000000000200010000000200030002),
    .INIT_29(256'hFFFF0005FFFD0003FFFD0000FFFFFFFDFFFCFFFCFFFE00020002000300040002),
    .INIT_2A(256'h08C8F9D7F87EFA5CF86409BE0FCC02FEFFFE00000006FFFCFFFC0006FFFB0008),
    .INIT_2B(256'h135A0B5302FE0012F456E99CEAF0E32FDE68F242F8C0F4300D7420DB1842117C),
    .INIT_2C(256'hFC7BF7FCF65CF809F6DCF4B7F6B8F8E3F914FC5000BD046F0B25116E1007106E),
    .INIT_2D(256'hFAD8FB51FBF4FD78FE90FF9101F20455051805C805E3057F05B604570123FED0),
    .INIT_2E(256'hFE08FEACFF58002C01390212029802F402CB0286023500F2FF56FDF5FC37FABB),
    .INIT_2F(256'h00800121014E0132010600C500A700B10067FFD1FF49FEC1FE42FE15FE09FDD9),
    .INIT_30(256'h00010000FFFEFFFE0000000000000000FFFE00000000FFFF0000000100000001),
    .INIT_31(256'h0005FFFE0005FFFC0003FFFDFFFEFFFFFFFCFFFAFFFCFFFD0001000400040002),
    .INIT_32(256'h134408B9F81FF7A5F92EF7BB0C6110D502640011FFEE0012FFF4FFFF0002FFFD),
    .INIT_33(256'h12B9165D0CDB03F20138F336E732E914DF10DA8CF251F7B3F20E0FCC247B1A65),
    .INIT_34(256'hFEE8FC57F719F586F790F64DF3F6F5B8F7BDF8A0FC2FFFFF03A50B6A12B51154),
    .INIT_35(256'hF9C6F9E8FA46FB3DFD56FE7FFF8A027B051305ED07110729069506B804D50115),
    .INIT_36(256'hFDA2FDFBFEB8FF66005F01AE02C1037303C6034402D5029D00FEFEADFCF7FB33),
    .INIT_37(256'h002600CD015201610136010F00E800D200C00058FFBAFF1DFE5DFDC6FDAAFDB4),
    .INIT_38(256'h00040001FFFF0000FFFFFFFE00000000FFFF0000FFFF00000002000000000002),
    .INIT_39(256'h0001000300010004FFFE0003FFFC00010000FFFBFFFCFFFCFFFD000200030004),
    .INIT_3A(256'h1BFD14C6082FF610F726F796F75E1039113201720038FFD30024FFE3000CFFF7),
    .INIT_3B(256'h130315CA19730D5904B5024AF0CBE471E766D9FAD71AF444F65FEF82139B284E),
    .INIT_3C(256'h0141FF0BFB5BF54FF4BAF7D5F605F2B6F488F72FF832FB70FF1F02FB0C3D14AA),
    .INIT_3D(256'hFA23F898F8E5F958FAE3FD6FFE68FFA003470655076708C3088E077B071F04D6),
    .INIT_3E(256'hFD70FD6AFDEEFED6FFAE00FA029603B80458047C03A702FB02400026FDF1FC48),
    .INIT_3F(256'hFFA50047010801920186014B01320114010200E9004FFF69FE9AFDCCFD43FD4B),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_0 ),
        .DOBDO(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_1 ),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_35 }),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7F007F000000007F7F7F7F7F7F7F00000000007F7F7F0000007F7F0000000000),
    .INIT_01(256'h0B0A0C0D060201767172696A7C79760C150E0B03797B7A7C0A0800007F007F00),
    .INIT_02(256'h7D7C7B7C7C7D7E7F000203040504040302007F7C797A7C7A787A7B7B7D7F0107),
    .INIT_03(256'h7F7F000000000000000000007F7F7E7E7E7E7E7F7F0000010202020101007F7E),
    .INIT_04(256'h007F007F007F007F7F007F7F7F7F7F00000000007F7F7F0000007F0000000000),
    .INIT_05(256'h080C0B0E0D050200747071666C7E767610160F0B02797B787D0D067F007F007F),
    .INIT_06(256'h7D7D7B7B7B7C7D7E7F0003040506050403027F7E7B787A7C79787A7B7B7D7F02),
    .INIT_07(256'h7F7F000000010100000000007F7F7E7E7E7E7E7E7F000001020202020101007F),
    .INIT_08(256'h7F007F007F007F007F7F00007F7F7F7F00000000007F7F000000007F00000000),
    .INIT_09(256'h030A0D0C0F0D04037F72706F646F7E72781417100B00787A76010F047F007F00),
    .INIT_0A(256'h7E7D7C7B7A7B7C7D7E7F0104050606050404017F7E7A777A7C78777A7B7B7D7F),
    .INIT_0B(256'h7F7F7F000001010101000000007F7E7E7D7D7E7E7E7F00000102020202010100),
    .INIT_0C(256'h7F7F007F007F007F007F00007F7F7F7F7F000000007F7F7F7F0000007F000000),
    .INIT_0D(256'h7F040B0D0D110C03037C70716D62727D6E7C1718110B7E777875070F02007F00),
    .INIT_0E(256'h007E7D7C7A7A7B7C7D7E7F0104050707050504017F7D78767B7B77777B7B7B7D),
    .INIT_0F(256'h7F7F7F7F000001010101000000007F7E7E7D7D7E7E7F7F000001020202020101),
    .INIT_10(256'h007F007F000000007F007F00007F7F7F7F00000000007F7F7F00000000000000),
    .INIT_11(256'h7E00050C0D0F11090303797071686276796D031A1911097C7674770D0D00007F),
    .INIT_12(256'h01007E7D7C7A7A7A7B7D7E7F0205060807050504027F7B75767B7976787B7B7C),
    .INIT_13(256'h7E7F7F7F7F000001010100000000007F7E7D7D7D7E7E7F7F0001020202020201),
    .INIT_14(256'h7F007F007F007F0000007F7F00007F7F7F7F00000000007F7F7F000000000000),
    .INIT_15(256'h7D7F01060B0E111008040277716E6365787470091C1910067A74717D12097F00),
    .INIT_16(256'h0101007E7D7B7A7A7A7B7D7E7F0205070808060504027F7A73767B7976797B7B),
    .INIT_17(256'h7E7F7F7F7F7F0001010101010000007F7F7E7D7D7D7E7E7F7F00010202020202),
    .INIT_18(256'h007F007F007F007F007F007F0000007F7F7F7F000000007F7F7F7F0000000000),
    .INIT_19(256'h7C7E7F02060A0F130F070400767068606A7772760F1E190E037870710612057F),
    .INIT_1A(256'h020201007E7D7B79797A7C7D7E000306080908060503017E7973757A7977797C),
    .INIT_1B(256'h7E7E7F7F7F7F7F0001010101010000007F7F7E7D7D7D7E7E7F7F000102020202),
    .INIT_1C(256'h007F007F7F007F007F007F007F00007F7F7F7F00000000007F7F7F7F00000000),
    .INIT_1D(256'h7C7D7E0104060A11130D07037D756B62626E77747C131F180A01746D770E0F01),
    .INIT_1E(256'h02020201007E7C7B79797A7C7D7E000407080808060402007E787375797A7779),
    .INIT_1F(256'h7E7E7E7F7F7F7F7F0001010101010000007F7F7E7D7D7E7E7E7F7F0001020203),
    .INIT_20(256'h7F007F007F007F007F0000007F7F00007F7F7F7F00000000007F7F7F7F000000),
    .INIT_21(256'h797C7D7F0205070C12130C05007B7065606673787601172114077D6F6D00130A),
    .INIT_22(256'h0302020201007E7C7A79797B7C7D7F010507080807050201007D787476787978),
    .INIT_23(256'h7E7E7E7F7F7F7F7F7F0001010101010100007F7F7E7D7D7E7E7E7E7F00010203),
    .INIT_24(256'h047F007F007F007F007F007F007F0000007F7F7F7F000000007F7F7F7F000000),
    .INIT_25(256'h78797C7E0104060A0F13110A027D776A60636C767979061D200E04776B720B13),
    .INIT_26(256'h0303020202017F7D7B7A797A7B7C7E00030607080706040201007B7776767778),
    .INIT_27(256'h7F7E7E7F7F7F7F7E7F7F0001010101010100007F7E7E7D7D7E7E7E7E7F000102),
    .INIT_28(256'h0C00007F007F007F007F00007F7F7F00007F7F7F7F00000000007F7F7F7F7F00),
    .INIT_29(256'h7679797C010305090E11100D067F7A7164606771797A7C0D231B0800706A7C13),
    .INIT_2A(256'h030303030201007F7C7A797A7B7C7D7E000406070706050403017E7A78787674),
    .INIT_2B(256'h007F7E7E7F7F7F7E7E7F000001010101010101007F7E7E7D7D7D7E7E7E7F0002),
    .INIT_2C(256'h14047F007F007F007F007F007F007F007F007F7F7F7F00000000007F7F7F7F7F),
    .INIT_2D(256'h7276797B7F0307090D11100B09027B776B60636E777C7B7F18251104796A6F0B),
    .INIT_2E(256'h02030303020201007D7B797A7B7C7C7D7F020406060605050503007D79787774),
    .INIT_2F(256'h007F7F7E7F7F7F7F7E7E7F000001010101010100007F7E7E7D7D7D7D7E7F0001),
    .INIT_30(256'h160B7F007F007F007F007F0000007F7F7F007F7F7F7F00000000007F7F7F7F00),
    .INIT_31(256'h7171777B7D02080A0B10110A06047E797263606A747C7E7A08241D080070697D),
    .INIT_32(256'h02030403030201007E7C7A797A7C7C7D7E7F0305060605050505027F7B787776),
    .INIT_33(256'h00007F7E7E7F7F7F7E7E7F7F0001010101010101007F7E7E7D7D7D7D7D7E7F00),
    .INIT_34(256'h101201007F007F007F7F007F007F007F000000007F7F0000000000007F7F7F7F),
    .INIT_35(256'h7470737A7E01070B0B0E110C0403017B76695F66727C7F7B7C18250F04786871),
    .INIT_36(256'h02030403030201007F7D7B7A7A7B7D7D7D7E010406060505050604017D787776),
    .INIT_37(256'h01007F7E7E7E7F7F7F7E7E7F000101010101010101007F7E7D7D7D7D7D7E7F00),
    .INIT_38(256'h0816047F007F007F007F007F007F007F007F007F7F7F7F00000000007F7F7F7F),
    .INIT_39(256'h757271787F02050A0C0C0F0E0500017D786E6162707B007E770A2618067E6C69),
    .INIT_3A(256'h01030404030201007F7E7C7A7A7B7D7D7D7E000306060505050505027D797676),
    .INIT_3B(256'h0000007F7E7E7F7F7F7E7E7F000001010101010101007F7E7D7D7D7D7D7E7E00),
    .INIT_3C(256'h7F17087F007F007F007F007F007F007F7F00007F7F7F7F7F000000007F7F7F7F),
    .INIT_3D(256'h767472767E0304090C0C0F0F067E7F7D797264606E7B0101777F221F09027066),
    .INIT_3E(256'h01030404030201007F7E7C7A7A7A7D7D7D7E000205070505050505027E797675),
    .INIT_3F(256'h0000007F7E7E7F7F7F7F7E7F000001010101010101007F7E7D7D7D7D7D7E7E00),
    .INIT_40(256'h79170C7F007F007F007F007F0000007F7F7F7F00007F7F00000000007F7F7F7F),
    .INIT_41(256'h767674767D0304070C0D0F0F077D7D7C7975675E6D7C010377791C230C047465),
    .INIT_42(256'h0102040403020100007E7C7B7A7A7C7E7E7E7F0205070505050404027E797776),
    .INIT_43(256'h0000007F7E7E7F7F7F7F7F7F000001010100010101007F7E7D7D7D7D7E7E7F00),
    .INIT_44(256'h76150D7F007F007F007F007F0000007F7F000000007F7F7F000000007F7F7F7F),
    .INIT_45(256'h767776767C0203070C0D0F0F067D7C7A7977685E6D7C0204797517240F067764),
    .INIT_46(256'h01020404030201007F7E7C7B7A7A7C7E7E7F000205070504040303017E7A7776),
    .INIT_47(256'h0000007F7E7E7E7F7F7F7F7F000001010100000100007F7E7D7D7D7D7E7E7F00),
    .INIT_48(256'h75150D7F007F007F007F007F00007F7F7F0000007F7F7F7F000000007F7F7F7F),
    .INIT_49(256'h777877777B0103080D0E0F0E057D7C787878695F6E7D03067973142310077765),
    .INIT_4A(256'h01020404030200007F7E7C7B7A7A7D7F7F7F000205060504040202017E7A7877),
    .INIT_4B(256'h0000007F7E7E7F7F7F7F7F7F000001010100000000007F7E7D7D7D7E7E7E7F00),
    .INIT_4C(256'h78150B7F007F007F007F007F00007F7F7F000000007F7F7F00000000007F7F7F),
    .INIT_4D(256'h787977777B0004090D0D0E0D047D7B7678786960707E04077974142110077665),
    .INIT_4E(256'h010204040301007F7F7D7C7B7A7B7D7F7F00000205060403030101017E7A7877),
    .INIT_4F(256'h0000007F7E7E7F7F007F7F7F000101010000000000007F7E7D7D7D7E7E7E7F00),
    .INIT_50(256'h7E16087F007F007F007F007F007F007F7F7F0000007F7F7F00000000007F7F7F),
    .INIT_51(256'h787977777B01050A0D0D0E0C037C797477776862737F06087775161E0E067365),
    .INIT_52(256'h010304040201007F7F7D7C7B7B7C7E000000000205050403020101017E7B7877),
    .INIT_53(256'h0000007F7E7E7F7F007F7F7F000101010000000000007F7E7D7D7D7E7E7E7F00),
    .INIT_54(256'h0514047F007F007F007F007F007F007F7F7F00007F7F7F7F000000007F7F7F7F),
    .INIT_55(256'h787A78787C02070C0D0C0E0A017C77727776666576000808747A191A0C036F68),
    .INIT_56(256'h0103040302007F7F7E7D7C7B7B7C7F000000010304040302010001017F7B7877),
    .INIT_57(256'h00007F7F7E7E7F7F007F7F7F000101010000000000007F7E7D7D7E7E7E7F7F00),
    .INIT_58(256'h0D10017F7F00007F007F007F007F007F7F7F00007F7F7F00000000007F7F7F7F),
    .INIT_59(256'h797A78787D03090D0D0C0D087F7A74727873656A79020C0572011B150A7F6A6F),
    .INIT_5A(256'h0203030301007F7F7E7D7C7C7C7D7F000000010304040302010001017E7A7777),
    .INIT_5B(256'h00007F7E7E7E7F00007F7F7F000101000000000000007F7E7D7D7E7E7E7F0001),
    .INIT_5C(256'h12097F007F007F007F007F00007F7F7F7F7F00007F7F0000000000007F7F7F7F),
    .INIT_5D(256'h7A7A77797F050B0D0C0C0C057D787172786E65707C050E00740B190F0878697B),
    .INIT_5E(256'h0203030201007F7F7E7D7C7C7C7E7F000000010304030202000102017D797777),
    .INIT_5F(256'h00007F7E7E7F7F007F7F7F000001010000000000007F7E7E7D7D7E7E7E7F0001),
    .INIT_60(256'h10037F007F007F007F007F007F007F7F7F0000007F7F00000000007F7F7F7F7F),
    .INIT_61(256'h7B79777B02080D0D0B0C0A027C756F74766A69767E0B0D797B13130B036F6E08),
    .INIT_62(256'h0203020100007F7F7D7D7C7C7D7E7F0000000103040302010001027F7C787779),
    .INIT_63(256'h007F7F7E7E7F7F7F7F7F7F000001010000000000007F7E7D7D7E7E7E7F7F0001),
    .INIT_64(256'h097F007F007F007F000000007F7F7F7F7F7F007F7F00000000007F7F7F7F7F7F),
    .INIT_65(256'h7A78797E050B0D0B0B0C067E79706F77716970790310067807140D097A6C7B0F),
    .INIT_66(256'h0202020100007F7E7D7D7C7C7D7F7F0000000203030202000102017E7A77787A),
    .INIT_67(256'h007F7F7E7E7F7F7F7F7F7F0001010100000000007F7E7E7D7D7E7E7E7F000102),
    .INIT_68(256'h027F007F007F007F007F007F007F7F7F7F00007F0000000000007F7F7F7F7F7F),
    .INIT_69(256'h79787B02090E0C0A0B0A027C746E73756C6C757C0B0F7E7F0F0D09037172080D),
    .INIT_6A(256'h02020101007F7F7E7D7D7C7D7E7F0000000103030302010001017F7C7977797A),
    .INIT_6B(256'h007F7F7E7F7F7F7F7F7F000001010101010000007F7E7D7D7D7E7E7E7F000102),
    .INIT_6C(256'h7F007F007F007F007F0000007F7F7F7F7F7F7F0000000000007F7F7F7F00007F),
    .INIT_6D(256'h797A7F050D0D0A0A0B057F786F7075706C72780411077E090D08067970000E06),
    .INIT_6E(256'h02020100007F7E7E7D7D7D7E7E7F0000000203030302000101007D7A78787A7A),
    .INIT_6F(256'h7F7F7E7F7F7F7F7F7F7F0000010101010100007F7E7E7E7D7E7E7E7F00010102),
    .INIT_70(256'h007F007F007F7F007F007F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F0000),
    .INIT_71(256'h7A7D020A0E0A090B07017C726E73726E71757D0D0D01060C06067F727A0B0800),
    .INIT_72(256'h020101007F7E7E7E7D7D7D7E7F0000000203030302010001007E7C79787A7A79),
    .INIT_73(256'h7F7F7F7F7F7F7F7F7F000001010101010000007F7E7E7E7E7E7E7E7F00010202),
    .INIT_74(256'h007F007F007F007F007F007F7F7F7F7F7F7F0000000000007F7F7F7F7F00007F),
    .INIT_75(256'h7D01070D0C090A08037E766E71736F717579081006050B0603027677080A017F),
    .INIT_76(256'h0101007F7F7E7E7D7D7D7E7E7F00010103030302010000007E7C7A787A7A797A),
    .INIT_77(256'h7F7F7F7F7F7F7F7F7F0000000001010000007F7F7E7E7E7E7E7E7F0000010202),
    .INIT_78(256'h7F007F007F007F007F007F7F7F7F7F7F7F0000000000007F7F7F7F7F7F000000),
    .INIT_79(256'h00050B0C0909090400796F707370717677020E0A060B0601027A77040A030000),
    .INIT_7A(256'h0100007F7E7D7D7D7D7E7F7F00010202030302010000007E7D7B79797A797A7D),
    .INIT_7B(256'h7F7F7F7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F000001010101),
    .INIT_7C(256'h007F007F007F007F007F7F7F7F7F7F7F000000000000007F7F7F000000000000),
    .INIT_7D(256'h03090C0A090904017B726F72717176787E0B0C080B0700007C7802090400007F),
    .INIT_7E(256'h00007F7E7D7D7D7D7E7E7F000102030302020200007F7E7D7B7A7A7A7A7A7C7F),
    .INIT_7F(256'h7F7F7F7F7F7F7F0000000000000000007F7F7F7E7E7E7E7F7F00000101010101),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    addra,
    addrb);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [11:0]addra;
  input [11:0]addrb;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7F007F007F007F007F7F7F7F7F7F7F7F000000000000007F7F7F7F0000000000),
    .INIT_01(256'h080B0A090805017D746F71717176797C070C0A0B08007E7D7A01080400007F00),
    .INIT_02(256'h7F7F7E7D7D7D7D7E7E7F000102030303020201007F7E7D7C7A7A7A7A7A7C7F03),
    .INIT_03(256'h7F7F7F7F7F0000000000000000007F7F7F7F7F7E7E7E7F7F0000010101010100),
    .INIT_04(256'h007F000000007F7F7F7F7F7F7F7F7F0000000000007F7F00007F7F0000000000),
    .INIT_05(256'h0A0A090805017E777171727175797C040B0B0C08017D7C7B01070400007F007F),
    .INIT_06(256'h7E7D7D7D7D7D7E7F7F000102030303020201007F7E7D7C7A7A7A7B7B7C7F0307),
    .INIT_07(256'h7F7F7F7F0000000000000000007F7F7F7F7E7E7E7E7F7F00010101010101007F),
    .INIT_08(256'h7F7F007F007F007F007F7F7F7F7F00000000007F7F7F0000007F7F0000000000),
    .INIT_09(256'h0A090806027E787370717375797C03090C0D08017D7B7C01060400007F007F7F),
    .INIT_0A(256'h7D7D7D7D7D7E7F7F000102020303020201007F7E7D7C7B7A7A7B7B7C7F020609),
    .INIT_0B(256'h7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F00010101020101007F7E),
    .INIT_0C(256'h7F007F007F007F007F7F7F7F7F0000000000007F000000000000000000000000),
    .INIT_0D(256'h090805027E797471717376787C02070B0D08027D7A7C0206040100007F007F00),
    .INIT_0E(256'h7D7C7C7D7E7E7F000102030303020201007F7E7D7C7B7B7A7A7B7D7F02060809),
    .INIT_0F(256'h7F7F0000000000000000007F7F7E7E7E7E7E7E7E7F0001010202010100007F7E),
    .INIT_10(256'h007F007F7F7F007F7F7F7F7F00000000007F7F7F0000007F7F0000000000007F),
    .INIT_11(256'h0805027E7A7672717477787C01050B0E08027E7A7B0206030100007F007F007F),
    .INIT_12(256'h7C7C7D7D7E7F00010203030202010101007E7D7C7B7B7B7B7C7D7F0205070809),
    .INIT_13(256'h7F000000000000000000007F7F7E7E7E7E7E7E7F0000010102020101007F7E7D),
    .INIT_14(256'h00007F7F7F007F7F7F7F7F00000000007F7F7F00000000000000000000000000),
    .INIT_15(256'h05027F7A7773717478787C01040A0D08027E7A7B0206030100007F007F000000),
    .INIT_16(256'h7D7D7D7D7E7F000102030202020101007E7D7C7B7B7B7B7C7D7F010507080807),
    .INIT_17(256'h7F0000000000000000007F7F7E7E7E7E7E7E7F7F0001010101010101007F7E7D),
    .INIT_18(256'h00007F7F7F7F7F7F7F7F00000000007F7F7F7F000000000000000000007F7F00),
    .INIT_19(256'h027F7B7874727478797C0104090D08017F7B7B020603000000007F007F000000),
    .INIT_1A(256'h7D7E7E7E7F7F0101020202020101007E7D7C7C7B7B7B7C7D7F01040607080704),
    .INIT_1B(256'h000000000000000000007F7F7E7E7E7E7E7F7F0000010101010101007F7E7E7D),
    .INIT_1C(256'h007F7F7F7F7F7F7F000000000000007F7F00000000000000000000000000007F),
    .INIT_1D(256'h7F7B78767274797A7C0104080C08017F7C7B010603000000007F007F007F0000),
    .INIT_1E(256'h7E7E7E7E7F0001010102020201007E7D7C7C7C7C7C7C7D7F0104060708070402),
    .INIT_1F(256'h0000000000000000007F7F7F7E7E7E7F7F7F7F0000000001000000007F7E7E7E),
    .INIT_20(256'h7F7F7F7F7F7F7F7F0000000000007F7F007F000000000000000000000000007F),
    .INIT_21(256'h7B79767475797A7C0003070B08017F7C7B010603000000007F007F0000000000),
    .INIT_22(256'h7F7F7F7F7F00000101010101007F7D7D7C7C7C7C7C7D7F01040506070704027F),
    .INIT_23(256'h00000000000000007F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F),
    .INIT_24(256'h7F007F7F7F7F7F00000000000000000000000000000000000000000000007F7F),
    .INIT_25(256'h797775757A7B7C0003060A0701007D7B000503000000007F007F00000000007F),
    .INIT_26(256'h0000000000000000000000007F7E7D7D7D7C7C7C7E7F01030505060604017F7C),
    .INIT_27(256'h7F0000000000007F7F7F7F7F7F7F7F7F000000000000007F7F7F7F7F7F7F0000),
    .INIT_28(256'h007F7F7F7F7F0000000000007F0000007F7F000000000000000000007F7F7F7F),
    .INIT_29(256'h7876767A7C7C000306090701007E7C7F0403000000007F007F000000007F007F),
    .INIT_2A(256'h000101010100007F7F7F7F7E7D7E7E7D7D7D7C7D7F0003050506060401007C7A),
    .INIT_2B(256'h00000000007F7F7F7F7F7F7F7F7F7F000000000000007F7F7E7E7E7E7F7F0000),
    .INIT_2C(256'h7F7F7F7F7F00000000007F7F7F0000007F000000000000007F7F7F7F7F7F7F7F),
    .INIT_2D(256'h77777A7C7C7F0305080601007F7C7F0403000000000000007F007F007F007F00),
    .INIT_2E(256'h010102020100007F7E7E7D7D7D7D7E7E7E7E7E7F0002040505050401007D7A79),
    .INIT_2F(256'h00007F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7E7E7E7E7F7F0000),
    .INIT_30(256'h007F7F7F000000007F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F),
    .INIT_31(256'h777A7D7D7F0205070601007F7D7E030300000000007F007F007F007F007F7F7F),
    .INIT_32(256'h010202020101007F7E7D7C7C7C7C7D7E7E7F000001030404050401007D7B7978),
    .INIT_33(256'h007F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7E7E7E7E7E7F7F0001),
    .INIT_34(256'h7F7F7F000000007F7F7F7F7F00000000000000000000007F7F7F7F7F7F7F7F7F),
    .INIT_35(256'h7A7D7D7F020406050100007E7E020301000000007F007F007F007F007F7F7F7F),
    .INIT_36(256'h010202020201007F7E7C7B7B7C7C7D7D7F000102030303040302007E7C7A7978),
    .INIT_37(256'h007F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7E7E7E7E7E7F7F0000),
    .INIT_38(256'h7F7F0000000000007F7F7F00000000000000000000000000007F7F7F7F7F7F00),
    .INIT_39(256'h7D7E7F020405040200007F7E010301000000007F007F00000000007F7F00007F),
    .INIT_3A(256'h010102020201007F7E7C7C7B7B7C7C7D7F0002040403030301007E7C7B7A797B),
    .INIT_3B(256'h7F7F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0000),
    .INIT_3C(256'h00000000000000007F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F00),
    .INIT_3D(256'h7E7F010404040200007F7E000201000000007F0000000000007F7F7F007F007F),
    .INIT_3E(256'h00010101020101007E7E7D7C7B7B7C7D7E000204040403017F7E7D7C7B7B7B7D),
    .INIT_3F(256'h7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7E7E7F7F7F7F7F7F00),
    .INIT_40(256'h000000000000000000000000000000000000000000000000007F7F7F7F7F0000),
    .INIT_41(256'h7F01030403020000007F00020100000000000000000000000000000000000000),
    .INIT_42(256'h7F00000101010100007F7E7D7C7C7C7D7E000102040403017E7D7B7B7B7C7D7E),
    .INIT_43(256'h7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_44(256'h0000000000000000000000007F7F7F0000000000000000007F7F7F7F7F7F0000),
    .INIT_45(256'h01030403020000007F7F0101000000000000000000000000007F007F007F7F00),
    .INIT_46(256'h7F7F7F000000010101007F7F7E7D7C7D7D7F7F00020302017F7C7B7B7C7D7F00),
    .INIT_47(256'h0000007F7F7F7F7F7F7F7F7F000000000000007F7F7F7F7F007F7F7F7F7F7F7E),
    .INIT_48(256'h0000000000000000000000007F7F7F7F7F7F00000000000000000000007F0000),
    .INIT_49(256'h030403020100007F7F0101000000000000007F00000000000000007F00000000),
    .INIT_4A(256'h7E7E7E7E7F00010102010100007E7D7D7D7D7D7E7F000101007E7C7C7D7E7F01),
    .INIT_4B(256'h00000000007F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7E7E),
    .INIT_4C(256'h7F0000000000000000000000007F7F7F7F7F7F7F0000000000000000007F7F7F),
    .INIT_4D(256'h040302010000007F000100000000000000000000000000000000000000000000),
    .INIT_4E(256'h7D7D7D7D7E7F00020202020201007F7D7C7C7C7C7C7D7E0001017F7E7D7E0002),
    .INIT_4F(256'h00000000000000007F7F7F7F7F7F7F7F7F7F000000000000000000007F7F7E7E),
    .INIT_50(256'h00007F7F000000000000000000007F7F7F7F7F0000000000000000000000007F),
    .INIT_51(256'h0302020100007F0001000000000000000000007F000000000000000000000000),
    .INIT_52(256'h7D7C7C7C7D7E0001020304040302007F7D7B7A7A7A7B7C7D000303017F7E0002),
    .INIT_53(256'h7F00000000000000007F7F7F7F7E7E7F7F7F7F0000000101010100007F7F7E7E),
    .INIT_54(256'h7F007F7F7F0000000000000000007F7F7F7F7F7F7F00000000000000007F7F7F),
    .INIT_55(256'h0201010101000000000000000000000000007F007F7F0000000000000000007F),
    .INIT_56(256'h7D7C7C7C7D7E7F0002030505040302007D7B797879797A7C7E020605017E0002),
    .INIT_57(256'h7F0000000000000000007F7F7E7E7E7E7F7F7F000000010101010100007F7E7E),
    .INIT_58(256'h007F7F7F7F0000000000000000007F7F7F7F7F7F7F7F0000000000000000007F),
    .INIT_59(256'h010100000101010100000000000000000000007F7F7F00000000000000000000),
    .INIT_5A(256'h7D7C7C7C7C7D7F0001030405050302017F7C79787879797A7D01050704010101),
    .INIT_5B(256'h7F7F00000000000000007F7F7F7E7E7E7E7F7F000000010101010101007F7E7E),
    .INIT_5C(256'h00007F7F0000000000000000000000007F7F7F7F7F7F0000000000000000007F),
    .INIT_5D(256'h0100007F7F0102010000000000000000000000007F7F00000000000000000000),
    .INIT_5E(256'h7D7D7C7C7D7D7E7F0102030404040201007D7B79797979797A7F030404040302),
    .INIT_5F(256'h7F7F00000000000000007F7F7F7F7E7E7E7F7F7F0000000101010101007F7E7E),
    .INIT_60(256'h00007F7F000000000000000000007F00007F7F7F7F7F7F7F0000000000000000),
    .INIT_61(256'h0201007F7F00010201007F7F00000000000000007F7F7F7F007F7F7F00000000),
    .INIT_62(256'h7E7D7D7D7D7D7E7F00010203030303017F7E7D7C7B7A797A7B7C7F0102040504),
    .INIT_63(256'h7F7F0000000000000000007F7F7F7F7F7F7F7F7F000000000101010000007F7E),
    .INIT_64(256'h00000000007F7F000000007F7F007F00007F7F7F7F7F7F7F7F7F000000000000),
    .INIT_65(256'h040201007F000001020100007F0000000000007F7F7F7F7F007F7F7F7F000000),
    .INIT_66(256'h7E7E7E7E7E7E7E7F7F00010101020201007F7F7E7D7C7B7B7C7C7B7D00020406),
    .INIT_67(256'h7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F0000000000000000007F7F),
    .INIT_68(256'h000000007F7F007F00007F7F7F0000000000000000007F7F7F7F7F7F00000000),
    .INIT_69(256'h05050301007F7F0000020100007F00000000007F7F007F7F7F7F7F7F7F7F0000),
    .INIT_6A(256'h7F7F7F7F7F7F7F7F7F7F00007F00000000000000007E7E7D7C7B7A7A7C000103),
    .INIT_6B(256'h7F7F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F0000000000007F7F),
    .INIT_6C(256'h00000000007F7F7F000000007F00000000000000000000007F7F7F7F7F000000),
    .INIT_6D(256'h0204060402007F7F0000010200007F7F0000007F0000007F00007F7F7F7F0000),
    .INIT_6E(256'h0000000000007F7F7F7F7E7E7E7E7E7F7F0001010102017F7E7B7A7A7B7C7F01),
    .INIT_6F(256'h7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F7F0000),
    .INIT_70(256'h0000000000007F7F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F00),
    .INIT_71(256'h000104060402017F7F0000010201007F7F0000007F0000007F007F7F7F7F7F7F),
    .INIT_72(256'h000101010000007F7F7E7E7D7D7C7C7D7F000102030304027F7D7B797A7A7B7D),
    .INIT_73(256'h007F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7F7E7E7E7F7F7F7F00),
    .INIT_74(256'h000000000000007F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F00),
    .INIT_75(256'h7C000103060503017F7E007F0002010000000000007F00007F00007F7F7F7F7F),
    .INIT_76(256'h01010202010101007F7E7D7D7C7B7B7C7D7F000204050404027F7E7C79797A7A),
    .INIT_77(256'h00007F7F7F7F7F7F7F7F7F7F0000000001010100007F7F7E7E7E7E7E7E7F7F00),
    .INIT_78(256'h7F7F000000000000007F7F7F7F7F00000000000000000000007F7F7F7F7F7F7F),
    .INIT_79(256'h797B7F000206060302007E7F7F0003020000000000007F0000000000007F7F7F),
    .INIT_7A(256'h01010202020201007F7E7D7C7C7B7B7B7C7E7F01030505040403007E7C79787A),
    .INIT_7B(256'h00007F7F7F7F7F7F7F7F7F7F7F0000000101010100007F7E7E7D7D7D7E7E7F00),
    .INIT_7C(256'h0000000000000000007F7F7F7F00000000000000000000000000007F7F7F7F7F),
    .INIT_7D(256'h7978797E000106080402007E7F7F7F03030000000000007F0000000000007F00),
    .INIT_7E(256'h0101020303020201007E7D7C7B7B7B7B7B7D7E0001030405050504007E7C7978),
    .INIT_7F(256'h0000007F7F7F7F7F7F7F7F7F7F0000000101010101007F7F7E7D7D7D7D7E7F7F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_60 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 }),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_top
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_top__parameterized0
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr__parameterized0 \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "4" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.572712 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) (* C_HAS_MUX_OUTPUT_REGS_B = "1" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "rom_hrtf_left.mem" *) 
(* C_INIT_FILE_NAME = "rom_hrtf_left.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "4" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "9216" *) (* C_READ_DEPTH_B = "9216" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "9216" *) 
(* C_WRITE_DEPTH_B = "9216" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "4" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.572712 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) (* C_HAS_MUX_OUTPUT_REGS_B = "1" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "rom_hrtf_right.mem" *) 
(* C_INIT_FILE_NAME = "rom_hrtf_right.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "4" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "9216" *) (* C_READ_DEPTH_B = "9216" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "9216" *) 
(* C_WRITE_DEPTH_B = "9216" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth__parameterized0 inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth__parameterized0
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb);
  output [15:0]douta;
  output [15:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]douta;
  wire [15:0]doutb;

  design_1_spatial_audio_top_0_0_blk_mem_gen_top__parameterized0 \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .douta(douta),
        .doutb(doutb));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
