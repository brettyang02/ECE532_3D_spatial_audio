// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan 29 15:16:02 2026
// Host        : Brett_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ECE532/532_spatial_test/spacial_test_proj/spacial_test_proj.srcs/sources_1/ip/rom_hrtf_right/rom_hrtf_right_sim_netlist.v
// Design      : rom_hrtf_right
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_hrtf_right,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module rom_hrtf_right
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.286356 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
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
  (* C_MEM_TYPE = "3" *) 
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
  rom_hrtf_right_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
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

(* ORIG_REF_NAME = "bindec" *) 
module rom_hrtf_right_bindec
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

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module rom_hrtf_right_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [8:8]ena_array;
  wire [8:0]ram_douta;
  wire \ram_ena_inferred__0/i__n_0 ;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;

  rom_hrtf_right_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:10]),
        .ena_array(ena_array));
  rom_hrtf_right_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[13:10]),
        .clka(clka),
        .douta(douta),
        .\douta[15] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\douta[15]_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\douta[15]_1 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .ram_douta(ram_douta));
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
  rom_hrtf_right_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_ena_n_0),
        .addra(addra[11:0]),
        .clka(clka),
        .ram_douta(ram_douta));
  rom_hrtf_right_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ram_ena_inferred__0/i__n_0 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka));
  rom_hrtf_right_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .addra(addra[9:0]),
        .clka(clka),
        .ena_array(ena_array));
  rom_hrtf_right_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[11:0]),
        .clka(clka));
  rom_hrtf_right_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ram_ena_inferred__0/i__n_0 ),
        .addra(addra[11:0]),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module rom_hrtf_right_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    ram_douta,
    DOADO,
    \douta[15] ,
    DOPADOP,
    \douta[15]_0 ,
    \douta[15]_1 );
  output [15:0]douta;
  input [3:0]addra;
  input clka;
  input [8:0]ram_douta;
  input [7:0]DOADO;
  input [15:0]\douta[15] ;
  input [0:0]DOPADOP;
  input [6:0]\douta[15]_0 ;
  input [6:0]\douta[15]_1 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [15:0]\douta[15] ;
  wire [6:0]\douta[15]_0 ;
  wire [6:0]\douta[15]_1 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire [8:0]ram_douta;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[0]),
        .I3(DOADO[0]),
        .I4(\douta[15] [0]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\douta[15]_0 [1]),
        .I3(\douta[15]_1 [1]),
        .I4(\douta[15] [10]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\douta[15]_0 [2]),
        .I3(\douta[15]_1 [2]),
        .I4(\douta[15] [11]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\douta[15]_0 [3]),
        .I3(\douta[15]_1 [3]),
        .I4(\douta[15] [12]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\douta[15]_0 [4]),
        .I3(\douta[15]_1 [4]),
        .I4(\douta[15] [13]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\douta[15]_0 [5]),
        .I3(\douta[15]_1 [5]),
        .I4(\douta[15] [14]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\douta[15]_0 [6]),
        .I3(\douta[15]_1 [6]),
        .I4(\douta[15] [15]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[15]));
  LUT4 #(
    .INIT(16'h0004)) 
    \douta[15]_INST_0_i_1 
       (.I0(sel_pipe_d1[2]),
        .I1(sel_pipe_d1[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[1]),
        .I3(DOADO[1]),
        .I4(\douta[15] [1]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[2]),
        .I3(DOADO[2]),
        .I4(\douta[15] [2]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[3]),
        .I3(DOADO[3]),
        .I4(\douta[15] [3]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[4]),
        .I3(DOADO[4]),
        .I4(\douta[15] [4]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[5]),
        .I3(DOADO[5]),
        .I4(\douta[15] [5]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[6]),
        .I3(DOADO[6]),
        .I4(\douta[15] [6]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[7]),
        .I3(DOADO[7]),
        .I4(\douta[15] [7]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(ram_douta[8]),
        .I3(DOPADOP),
        .I4(\douta[15] [8]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hFFFF541054105410)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[3]),
        .I1(sel_pipe_d1[2]),
        .I2(\douta[15]_0 [0]),
        .I3(\douta[15]_1 [0]),
        .I4(\douta[15] [9]),
        .I5(\douta[15]_INST_0_i_1_n_0 ),
        .O(douta[9]));
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

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_right_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]ram_douta;

  rom_hrtf_right_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_right_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;

  rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_right_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ena_array,
    addra);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input [0:0]ena_array;
  input [9:0]addra;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [9:0]addra;
  wire clka;
  wire [0:0]ena_array;

  rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_right_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;

  rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_right_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;

  rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rom_hrtf_right_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]ram_douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ena_array,
    addra);
  output [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [9:0]addra;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire [9:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rom_hrtf_right_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
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
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module rom_hrtf_right_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  rom_hrtf_right_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "4" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.286356 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "rom_hrtf_right.mem" *) 
(* C_INIT_FILE_NAME = "rom_hrtf_right.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "9216" *) (* C_READ_DEPTH_B = "9216" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "9216" *) 
(* C_WRITE_DEPTH_B = "9216" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module rom_hrtf_right_blk_mem_gen_v8_4_2
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
  wire clka;
  wire [15:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
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
  rom_hrtf_right_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module rom_hrtf_right_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  rom_hrtf_right_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
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
