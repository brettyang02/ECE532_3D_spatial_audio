-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Mar 17 14:29:03 2026
-- Host        : Brett_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/ECE532/ECE532_3D_spatial_audio/Vivado_WorkDir/spatial_audio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/design_1_spatial_audio_top_0_0_stub.vhdl
-- Design      : design_1_spatial_audio_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_spatial_audio_top_0_0 is
  Port ( 
    clk_audio : in STD_LOGIC;
    locked : in STD_LOGIC;
    tx_mclk : out STD_LOGIC;
    tx_lrck : out STD_LOGIC;
    tx_sclk : out STD_LOGIC;
    tx_data : out STD_LOGIC;
    rx_mclk : out STD_LOGIC;
    rx_lrck : out STD_LOGIC;
    rx_sclk : out STD_LOGIC;
    rx_data : in STD_LOGIC;
    target_angle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    target_elevation : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_spatial_audio_top_0_0;

architecture stub of design_1_spatial_audio_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_audio,locked,tx_mclk,tx_lrck,tx_sclk,tx_data,rx_mclk,rx_lrck,rx_sclk,rx_data,target_angle[7:0],target_elevation[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spatial_audio_top,Vivado 2018.3";
begin
end;
