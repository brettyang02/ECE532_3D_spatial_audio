// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Feb  7 16:28:12 2026
// Host        : Brett_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ECE532/ECE532_3D_spatial_audio/Vivado_WorkDir/spatial_audio.srcs/sources_1/ip/rom_hrtf_left/rom_hrtf_left_sim_netlist.v
// Design      : rom_hrtf_left
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_hrtf_left,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module rom_hrtf_left
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
  (* C_INIT_FILE = "rom_hrtf_left.mem" *) 
  (* C_INIT_FILE_NAME = "rom_hrtf_left.mif" *) 
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
  rom_hrtf_left_blk_mem_gen_v8_4_2 U0
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
module rom_hrtf_left_bindec
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
module rom_hrtf_left_blk_mem_gen_generic_cstr
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

  rom_hrtf_left_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:10]),
        .ena_array(ena_array));
  rom_hrtf_left_blk_mem_gen_mux \has_mux_a.A 
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
  rom_hrtf_left_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_ena_n_0),
        .addra(addra[11:0]),
        .clka(clka),
        .ram_douta(ram_douta));
  rom_hrtf_left_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ram_ena_inferred__0/i__n_0 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka));
  rom_hrtf_left_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .addra(addra[9:0]),
        .clka(clka),
        .ena_array(ena_array));
  rom_hrtf_left_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[11:0]),
        .clka(clka));
  rom_hrtf_left_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ram_ena_inferred__0/i__n_0 ),
        .addra(addra[11:0]),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module rom_hrtf_left_blk_mem_gen_mux
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
module rom_hrtf_left_blk_mem_gen_prim_width
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

  rom_hrtf_left_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_left_blk_mem_gen_prim_width__parameterized0
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

  rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_left_blk_mem_gen_prim_width__parameterized1
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

  rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_left_blk_mem_gen_prim_width__parameterized2
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

  rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rom_hrtf_left_blk_mem_gen_prim_width__parameterized3
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

  rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rom_hrtf_left_blk_mem_gen_prim_wrapper_init
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
module rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized0
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
module rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized1
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
module rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized2
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
module rom_hrtf_left_blk_mem_gen_prim_wrapper_init__parameterized3
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
module rom_hrtf_left_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  rom_hrtf_left_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "rom_hrtf_left.mem" *) 
(* C_INIT_FILE_NAME = "rom_hrtf_left.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
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
module rom_hrtf_left_blk_mem_gen_v8_4_2
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
  rom_hrtf_left_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module rom_hrtf_left_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;

  rom_hrtf_left_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
