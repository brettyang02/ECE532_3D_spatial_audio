-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 26 01:24:08 2026
-- Host        : Brett_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/ECE532/ECE532_3D_spatial_audio/Vivado_WorkDir/spatial_audio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/design_1_spatial_audio_top_0_0_sim_netlist.vhdl
-- Design      : design_1_spatial_audio_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_dsp_fir_folded is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \write_ptr_reg[0]_0\ : out STD_LOGIC;
    \audio_out_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    pipe_audio_s1 : in STD_LOGIC;
    accumulator_reg_0 : in STD_LOGIC;
    accumulator_reg_1 : in STD_LOGIC;
    clk_audio : in STD_LOGIC;
    rst_audio : in STD_LOGIC;
    RSTP : in STD_LOGIC;
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \read_ptr_reg[0]_0\ : in STD_LOGIC;
    new_sample : in STD_LOGIC;
    read_ptr_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    accumulator_reg_2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    accumulator_reg_3 : in STD_LOGIC;
    accumulator_reg_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_dsp_fir_folded : entity is "dsp_fir_folded";
end design_1_spatial_audio_top_0_0_dsp_fir_folded;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_dsp_fir_folded is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal accumulator_reg_n_100 : STD_LOGIC;
  signal accumulator_reg_n_101 : STD_LOGIC;
  signal accumulator_reg_n_102 : STD_LOGIC;
  signal accumulator_reg_n_103 : STD_LOGIC;
  signal accumulator_reg_n_104 : STD_LOGIC;
  signal accumulator_reg_n_105 : STD_LOGIC;
  signal accumulator_reg_n_58 : STD_LOGIC;
  signal accumulator_reg_n_59 : STD_LOGIC;
  signal accumulator_reg_n_60 : STD_LOGIC;
  signal accumulator_reg_n_61 : STD_LOGIC;
  signal accumulator_reg_n_62 : STD_LOGIC;
  signal accumulator_reg_n_63 : STD_LOGIC;
  signal accumulator_reg_n_64 : STD_LOGIC;
  signal accumulator_reg_n_65 : STD_LOGIC;
  signal accumulator_reg_n_66 : STD_LOGIC;
  signal accumulator_reg_n_67 : STD_LOGIC;
  signal accumulator_reg_n_68 : STD_LOGIC;
  signal accumulator_reg_n_69 : STD_LOGIC;
  signal accumulator_reg_n_70 : STD_LOGIC;
  signal accumulator_reg_n_71 : STD_LOGIC;
  signal accumulator_reg_n_72 : STD_LOGIC;
  signal accumulator_reg_n_73 : STD_LOGIC;
  signal accumulator_reg_n_74 : STD_LOGIC;
  signal accumulator_reg_n_75 : STD_LOGIC;
  signal accumulator_reg_n_76 : STD_LOGIC;
  signal accumulator_reg_n_77 : STD_LOGIC;
  signal accumulator_reg_n_78 : STD_LOGIC;
  signal accumulator_reg_n_79 : STD_LOGIC;
  signal accumulator_reg_n_80 : STD_LOGIC;
  signal accumulator_reg_n_81 : STD_LOGIC;
  signal accumulator_reg_n_82 : STD_LOGIC;
  signal accumulator_reg_n_83 : STD_LOGIC;
  signal accumulator_reg_n_84 : STD_LOGIC;
  signal accumulator_reg_n_85 : STD_LOGIC;
  signal accumulator_reg_n_86 : STD_LOGIC;
  signal accumulator_reg_n_87 : STD_LOGIC;
  signal accumulator_reg_n_88 : STD_LOGIC;
  signal accumulator_reg_n_89 : STD_LOGIC;
  signal accumulator_reg_n_90 : STD_LOGIC;
  signal accumulator_reg_n_91 : STD_LOGIC;
  signal accumulator_reg_n_92 : STD_LOGIC;
  signal accumulator_reg_n_93 : STD_LOGIC;
  signal accumulator_reg_n_94 : STD_LOGIC;
  signal accumulator_reg_n_95 : STD_LOGIC;
  signal accumulator_reg_n_96 : STD_LOGIC;
  signal accumulator_reg_n_97 : STD_LOGIC;
  signal accumulator_reg_n_98 : STD_LOGIC;
  signal accumulator_reg_n_99 : STD_LOGIC;
  signal audio_history_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_15_17_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_15_17_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_15_17_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_18_20_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_18_20_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_18_20_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_21_23_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_21_23_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_21_23_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_15_17_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_15_17_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_15_17_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_18_20_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_18_20_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_18_20_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_21_23_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_21_23_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_21_23_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal pipe_audio_s10 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal read_ptr : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \read_ptr[0]_i_2_n_0\ : STD_LOGIC;
  signal \read_ptr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \read_ptr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \read_ptr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \read_ptr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \read_ptr[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \read_ptr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \read_ptr[6]_i_1__0_n_0\ : STD_LOGIC;
  signal read_ptr_reg_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \write_ptr[6]_i_2_n_0\ : STD_LOGIC;
  signal NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_accumulator_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_accumulator_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_accumulator_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_0_2 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of audio_history_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of audio_history_reg_0_63_0_2 : label is 63;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of audio_history_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of audio_history_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_12_14 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_12_14 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_12_14 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_12_14 : label is 12;
  attribute ram_slice_end of audio_history_reg_0_63_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_15_17 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_15_17 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_15_17 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_15_17 : label is 15;
  attribute ram_slice_end of audio_history_reg_0_63_15_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_18_20 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_18_20 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_18_20 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_18_20 : label is 18;
  attribute ram_slice_end of audio_history_reg_0_63_18_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_21_23 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_21_23 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_21_23 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_21_23 : label is 21;
  attribute ram_slice_end of audio_history_reg_0_63_21_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_3_5 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_3_5 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of audio_history_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_6_8 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_6_8 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_6_8 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_6_8 : label is 6;
  attribute ram_slice_end of audio_history_reg_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_9_11 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_9_11 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_9_11 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_9_11 : label is 9;
  attribute ram_slice_end of audio_history_reg_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_0_2 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_0_2 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_0_2 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_0_2 : label is 0;
  attribute ram_slice_end of audio_history_reg_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_12_14 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_12_14 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_12_14 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_12_14 : label is 12;
  attribute ram_slice_end of audio_history_reg_64_127_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_15_17 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_15_17 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_15_17 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_15_17 : label is 15;
  attribute ram_slice_end of audio_history_reg_64_127_15_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_18_20 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_18_20 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_18_20 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_18_20 : label is 18;
  attribute ram_slice_end of audio_history_reg_64_127_18_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_21_23 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_21_23 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_21_23 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_21_23 : label is 21;
  attribute ram_slice_end of audio_history_reg_64_127_21_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_3_5 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_3_5 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_3_5 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_3_5 : label is 3;
  attribute ram_slice_end of audio_history_reg_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_6_8 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_6_8 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_6_8 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_6_8 : label is 6;
  attribute ram_slice_end of audio_history_reg_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_9_11 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_9_11 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_9_11 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_9_11 : label is 9;
  attribute ram_slice_end of audio_history_reg_64_127_9_11 : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_ptr[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_ptr[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_ptr[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_ptr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_ptr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_ptr[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_ptr[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_ptr[6]_i_2\ : label is "soft_lutpair10";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
accumulator_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => pipe_audio_s10(23),
      A(28) => pipe_audio_s10(23),
      A(27) => pipe_audio_s10(23),
      A(26) => pipe_audio_s10(23),
      A(25) => pipe_audio_s10(23),
      A(24) => pipe_audio_s10(23),
      A(23 downto 0) => pipe_audio_s10(23 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_accumulator_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => douta(15),
      B(16) => douta(15),
      B(15 downto 0) => douta(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_accumulator_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_accumulator_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => pipe_audio_s1,
      CEA2 => accumulator_reg_0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => accumulator_reg_1,
      CLK => clk_audio,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0100101",
      OVERFLOW => NLW_accumulator_reg_OVERFLOW_UNCONNECTED,
      P(47) => accumulator_reg_n_58,
      P(46) => accumulator_reg_n_59,
      P(45) => accumulator_reg_n_60,
      P(44) => accumulator_reg_n_61,
      P(43) => accumulator_reg_n_62,
      P(42) => accumulator_reg_n_63,
      P(41) => accumulator_reg_n_64,
      P(40) => accumulator_reg_n_65,
      P(39) => accumulator_reg_n_66,
      P(38) => accumulator_reg_n_67,
      P(37) => accumulator_reg_n_68,
      P(36) => accumulator_reg_n_69,
      P(35) => accumulator_reg_n_70,
      P(34) => accumulator_reg_n_71,
      P(33) => accumulator_reg_n_72,
      P(32) => accumulator_reg_n_73,
      P(31) => accumulator_reg_n_74,
      P(30) => accumulator_reg_n_75,
      P(29) => accumulator_reg_n_76,
      P(28) => accumulator_reg_n_77,
      P(27) => accumulator_reg_n_78,
      P(26) => accumulator_reg_n_79,
      P(25) => accumulator_reg_n_80,
      P(24) => accumulator_reg_n_81,
      P(23) => accumulator_reg_n_82,
      P(22) => accumulator_reg_n_83,
      P(21) => accumulator_reg_n_84,
      P(20) => accumulator_reg_n_85,
      P(19) => accumulator_reg_n_86,
      P(18) => accumulator_reg_n_87,
      P(17) => accumulator_reg_n_88,
      P(16) => accumulator_reg_n_89,
      P(15) => accumulator_reg_n_90,
      P(14) => accumulator_reg_n_91,
      P(13) => accumulator_reg_n_92,
      P(12) => accumulator_reg_n_93,
      P(11) => accumulator_reg_n_94,
      P(10) => accumulator_reg_n_95,
      P(9) => accumulator_reg_n_96,
      P(8) => accumulator_reg_n_97,
      P(7) => accumulator_reg_n_98,
      P(6) => accumulator_reg_n_99,
      P(5) => accumulator_reg_n_100,
      P(4) => accumulator_reg_n_101,
      P(3) => accumulator_reg_n_102,
      P(2) => accumulator_reg_n_103,
      P(1) => accumulator_reg_n_104,
      P(0) => accumulator_reg_n_105,
      PATTERNBDETECT => NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_accumulator_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => rst_audio,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTP,
      UNDERFLOW => NLW_accumulator_reg_UNDERFLOW_UNCONNECTED
    );
accumulator_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_15_17_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_15_17_n_2,
      O => pipe_audio_s10(17)
    );
accumulator_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_15_17_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_15_17_n_1,
      O => pipe_audio_s10(16)
    );
accumulator_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_15_17_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_15_17_n_0,
      O => pipe_audio_s10(15)
    );
accumulator_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_12_14_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_12_14_n_2,
      O => pipe_audio_s10(14)
    );
accumulator_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_12_14_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_12_14_n_1,
      O => pipe_audio_s10(13)
    );
accumulator_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_12_14_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_12_14_n_0,
      O => pipe_audio_s10(12)
    );
accumulator_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_9_11_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_9_11_n_2,
      O => pipe_audio_s10(11)
    );
accumulator_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_9_11_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_9_11_n_1,
      O => pipe_audio_s10(10)
    );
accumulator_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_9_11_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_9_11_n_0,
      O => pipe_audio_s10(9)
    );
accumulator_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_6_8_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_6_8_n_2,
      O => pipe_audio_s10(8)
    );
accumulator_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_6_8_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_6_8_n_1,
      O => pipe_audio_s10(7)
    );
accumulator_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_6_8_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_6_8_n_0,
      O => pipe_audio_s10(6)
    );
accumulator_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_3_5_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_3_5_n_2,
      O => pipe_audio_s10(5)
    );
accumulator_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_3_5_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_3_5_n_1,
      O => pipe_audio_s10(4)
    );
accumulator_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_3_5_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_3_5_n_0,
      O => pipe_audio_s10(3)
    );
accumulator_reg_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_0_2_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_0_2_n_2,
      O => pipe_audio_s10(2)
    );
accumulator_reg_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_0_2_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_0_2_n_1,
      O => pipe_audio_s10(1)
    );
accumulator_reg_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_0_2_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_0_2_n_0,
      O => pipe_audio_s10(0)
    );
accumulator_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_21_23_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_21_23_n_2,
      O => pipe_audio_s10(23)
    );
accumulator_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_21_23_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_21_23_n_1,
      O => pipe_audio_s10(22)
    );
accumulator_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_21_23_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_21_23_n_0,
      O => pipe_audio_s10(21)
    );
accumulator_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_18_20_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_18_20_n_2,
      O => pipe_audio_s10(20)
    );
accumulator_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_18_20_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_18_20_n_1,
      O => pipe_audio_s10(19)
    );
accumulator_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_18_20_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_18_20_n_0,
      O => pipe_audio_s10(18)
    );
audio_history_reg_0_63_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(0),
      DIB => accumulator_reg_2(1),
      DIC => accumulator_reg_2(2),
      DID => '0',
      DOA => audio_history_reg_0_63_0_2_n_0,
      DOB => audio_history_reg_0_63_0_2_n_1,
      DOC => audio_history_reg_0_63_0_2_n_2,
      DOD => NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_0_63_12_14: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(12),
      DIB => accumulator_reg_2(13),
      DIC => accumulator_reg_2(14),
      DID => '0',
      DOA => audio_history_reg_0_63_12_14_n_0,
      DOB => audio_history_reg_0_63_12_14_n_1,
      DOC => audio_history_reg_0_63_12_14_n_2,
      DOD => NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_0_63_15_17: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(15),
      DIB => accumulator_reg_2(16),
      DIC => accumulator_reg_2(17),
      DID => '0',
      DOA => audio_history_reg_0_63_15_17_n_0,
      DOB => audio_history_reg_0_63_15_17_n_1,
      DOC => audio_history_reg_0_63_15_17_n_2,
      DOD => NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_0_63_18_20: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(18),
      DIB => accumulator_reg_2(19),
      DIC => accumulator_reg_2(20),
      DID => '0',
      DOA => audio_history_reg_0_63_18_20_n_0,
      DOB => audio_history_reg_0_63_18_20_n_1,
      DOC => audio_history_reg_0_63_18_20_n_2,
      DOD => NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_0_63_21_23: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(21),
      DIB => accumulator_reg_2(22),
      DIC => accumulator_reg_2(23),
      DID => '0',
      DOA => audio_history_reg_0_63_21_23_n_0,
      DOB => audio_history_reg_0_63_21_23_n_1,
      DOC => audio_history_reg_0_63_21_23_n_2,
      DOD => NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_0_63_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(3),
      DIB => accumulator_reg_2(4),
      DIC => accumulator_reg_2(5),
      DID => '0',
      DOA => audio_history_reg_0_63_3_5_n_0,
      DOB => audio_history_reg_0_63_3_5_n_1,
      DOC => audio_history_reg_0_63_3_5_n_2,
      DOD => NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_0_63_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(6),
      DIB => accumulator_reg_2(7),
      DIC => accumulator_reg_2(8),
      DID => '0',
      DOA => audio_history_reg_0_63_6_8_n_0,
      DOB => audio_history_reg_0_63_6_8_n_1,
      DOC => audio_history_reg_0_63_6_8_n_2,
      DOD => NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_0_63_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(9),
      DIB => accumulator_reg_2(10),
      DIC => accumulator_reg_2(11),
      DID => '0',
      DOA => audio_history_reg_0_63_9_11_n_0,
      DOB => audio_history_reg_0_63_9_11_n_1,
      DOC => audio_history_reg_0_63_9_11_n_2,
      DOD => NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(0),
      DIB => accumulator_reg_2(1),
      DIC => accumulator_reg_2(2),
      DID => '0',
      DOA => audio_history_reg_64_127_0_2_n_0,
      DOB => audio_history_reg_64_127_0_2_n_1,
      DOC => audio_history_reg_64_127_0_2_n_2,
      DOD => NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
audio_history_reg_64_127_12_14: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(12),
      DIB => accumulator_reg_2(13),
      DIC => accumulator_reg_2(14),
      DID => '0',
      DOA => audio_history_reg_64_127_12_14_n_0,
      DOB => audio_history_reg_64_127_12_14_n_1,
      DOC => audio_history_reg_64_127_12_14_n_2,
      DOD => NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
audio_history_reg_64_127_15_17: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(15),
      DIB => accumulator_reg_2(16),
      DIC => accumulator_reg_2(17),
      DID => '0',
      DOA => audio_history_reg_64_127_15_17_n_0,
      DOB => audio_history_reg_64_127_15_17_n_1,
      DOC => audio_history_reg_64_127_15_17_n_2,
      DOD => NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
audio_history_reg_64_127_18_20: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(18),
      DIB => accumulator_reg_2(19),
      DIC => accumulator_reg_2(20),
      DID => '0',
      DOA => audio_history_reg_64_127_18_20_n_0,
      DOB => audio_history_reg_64_127_18_20_n_1,
      DOC => audio_history_reg_64_127_18_20_n_2,
      DOD => NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
audio_history_reg_64_127_21_23: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(21),
      DIB => accumulator_reg_2(22),
      DIC => accumulator_reg_2(23),
      DID => '0',
      DOA => audio_history_reg_64_127_21_23_n_0,
      DOB => audio_history_reg_64_127_21_23_n_1,
      DOC => audio_history_reg_64_127_21_23_n_2,
      DOD => NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
audio_history_reg_64_127_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(3),
      DIB => accumulator_reg_2(4),
      DIC => accumulator_reg_2(5),
      DID => '0',
      DOA => audio_history_reg_64_127_3_5_n_0,
      DOB => audio_history_reg_64_127_3_5_n_1,
      DOC => audio_history_reg_64_127_3_5_n_2,
      DOD => NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
audio_history_reg_64_127_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(6),
      DIB => accumulator_reg_2(7),
      DIC => accumulator_reg_2(8),
      DID => '0',
      DOA => audio_history_reg_64_127_6_8_n_0,
      DOB => audio_history_reg_64_127_6_8_n_1,
      DOC => audio_history_reg_64_127_6_8_n_2,
      DOD => NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
audio_history_reg_64_127_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRB(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRC(5 downto 0) => read_ptr_reg_0(5 downto 0),
      ADDRD(5 downto 0) => \^q\(5 downto 0),
      DIA => accumulator_reg_2(9),
      DIB => accumulator_reg_2(10),
      DIC => accumulator_reg_2(11),
      DID => '0',
      DOA => audio_history_reg_64_127_9_11_n_0,
      DOB => audio_history_reg_64_127_9_11_n_1,
      DOC => audio_history_reg_64_127_9_11_n_2,
      DOD => NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_4
    );
\audio_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_91,
      Q => \audio_out_reg[23]_0\(0),
      R => rst_audio
    );
\audio_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_81,
      Q => \audio_out_reg[23]_0\(10),
      R => rst_audio
    );
\audio_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_80,
      Q => \audio_out_reg[23]_0\(11),
      R => rst_audio
    );
\audio_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_79,
      Q => \audio_out_reg[23]_0\(12),
      R => rst_audio
    );
\audio_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_78,
      Q => \audio_out_reg[23]_0\(13),
      R => rst_audio
    );
\audio_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_77,
      Q => \audio_out_reg[23]_0\(14),
      R => rst_audio
    );
\audio_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_76,
      Q => \audio_out_reg[23]_0\(15),
      R => rst_audio
    );
\audio_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_75,
      Q => \audio_out_reg[23]_0\(16),
      R => rst_audio
    );
\audio_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_74,
      Q => \audio_out_reg[23]_0\(17),
      R => rst_audio
    );
\audio_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_73,
      Q => \audio_out_reg[23]_0\(18),
      R => rst_audio
    );
\audio_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_72,
      Q => \audio_out_reg[23]_0\(19),
      R => rst_audio
    );
\audio_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_90,
      Q => \audio_out_reg[23]_0\(1),
      R => rst_audio
    );
\audio_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_71,
      Q => \audio_out_reg[23]_0\(20),
      R => rst_audio
    );
\audio_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_70,
      Q => \audio_out_reg[23]_0\(21),
      R => rst_audio
    );
\audio_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_69,
      Q => \audio_out_reg[23]_0\(22),
      R => rst_audio
    );
\audio_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_68,
      Q => \audio_out_reg[23]_0\(23),
      R => rst_audio
    );
\audio_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_89,
      Q => \audio_out_reg[23]_0\(2),
      R => rst_audio
    );
\audio_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_88,
      Q => \audio_out_reg[23]_0\(3),
      R => rst_audio
    );
\audio_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_87,
      Q => \audio_out_reg[23]_0\(4),
      R => rst_audio
    );
\audio_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_86,
      Q => \audio_out_reg[23]_0\(5),
      R => rst_audio
    );
\audio_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_85,
      Q => \audio_out_reg[23]_0\(6),
      R => rst_audio
    );
\audio_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_84,
      Q => \audio_out_reg[23]_0\(7),
      R => rst_audio
    );
\audio_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_83,
      Q => \audio_out_reg[23]_0\(8),
      R => rst_audio
    );
\audio_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_82,
      Q => \audio_out_reg[23]_0\(9),
      R => rst_audio
    );
\read_ptr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^q\(0),
      I1 => new_sample,
      I2 => read_ptr_reg(0),
      O => \write_ptr_reg[0]_0\
    );
\read_ptr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^q\(0),
      I1 => new_sample,
      I2 => read_ptr_reg_0(0),
      O => \read_ptr[0]_i_2_n_0\
    );
\read_ptr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \^q\(1),
      I1 => new_sample,
      I2 => read_ptr_reg_0(0),
      I3 => read_ptr_reg_0(1),
      O => \read_ptr[1]_i_1__0_n_0\
    );
\read_ptr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => \^q\(2),
      I1 => new_sample,
      I2 => read_ptr_reg_0(1),
      I3 => read_ptr_reg_0(0),
      I4 => read_ptr_reg_0(2),
      O => \read_ptr[2]_i_1__0_n_0\
    );
\read_ptr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => \^q\(3),
      I1 => new_sample,
      I2 => read_ptr_reg_0(2),
      I3 => read_ptr_reg_0(0),
      I4 => read_ptr_reg_0(1),
      I5 => read_ptr_reg_0(3),
      O => \read_ptr[3]_i_1__0_n_0\
    );
\read_ptr[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \^q\(4),
      I1 => new_sample,
      I2 => \read_ptr[4]_i_2__0_n_0\,
      I3 => read_ptr_reg_0(4),
      O => \read_ptr[4]_i_1__0_n_0\
    );
\read_ptr[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_ptr_reg_0(2),
      I1 => read_ptr_reg_0(0),
      I2 => read_ptr_reg_0(1),
      I3 => read_ptr_reg_0(3),
      O => \read_ptr[4]_i_2__0_n_0\
    );
\read_ptr[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => \^q\(5),
      I1 => new_sample,
      I2 => read_ptr_reg_0(4),
      I3 => \read_ptr[4]_i_2__0_n_0\,
      I4 => read_ptr_reg_0(5),
      O => \read_ptr[5]_i_1__0_n_0\
    );
\read_ptr[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => \^q\(6),
      I1 => new_sample,
      I2 => \read_ptr[4]_i_2__0_n_0\,
      I3 => read_ptr_reg_0(4),
      I4 => read_ptr_reg_0(5),
      I5 => read_ptr(6),
      O => \read_ptr[6]_i_1__0_n_0\
    );
\read_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[0]_0\,
      D => \read_ptr[0]_i_2_n_0\,
      Q => read_ptr_reg_0(0),
      R => rst_audio
    );
\read_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[0]_0\,
      D => \read_ptr[1]_i_1__0_n_0\,
      Q => read_ptr_reg_0(1),
      R => rst_audio
    );
\read_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[0]_0\,
      D => \read_ptr[2]_i_1__0_n_0\,
      Q => read_ptr_reg_0(2),
      R => rst_audio
    );
\read_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[0]_0\,
      D => \read_ptr[3]_i_1__0_n_0\,
      Q => read_ptr_reg_0(3),
      R => rst_audio
    );
\read_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[0]_0\,
      D => \read_ptr[4]_i_1__0_n_0\,
      Q => read_ptr_reg_0(4),
      R => rst_audio
    );
\read_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[0]_0\,
      D => \read_ptr[5]_i_1__0_n_0\,
      Q => read_ptr_reg_0(5),
      R => rst_audio
    );
\read_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[0]_0\,
      D => \read_ptr[6]_i_1__0_n_0\,
      Q => read_ptr(6),
      R => rst_audio
    );
\write_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__2\(0)
    );
\write_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__2\(1)
    );
\write_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \p_0_in__2\(2)
    );
\write_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \p_0_in__2\(3)
    );
\write_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \p_0_in__2\(4)
    );
\write_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \p_0_in__2\(5)
    );
\write_ptr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \write_ptr[6]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(6),
      O => \p_0_in__2\(6)
    );
\write_ptr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \write_ptr[6]_i_2_n_0\
    );
\write_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => \p_0_in__2\(0),
      Q => \^q\(0),
      R => rst_audio
    );
\write_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => \p_0_in__2\(1),
      Q => \^q\(1),
      R => rst_audio
    );
\write_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => \p_0_in__2\(2),
      Q => \^q\(2),
      R => rst_audio
    );
\write_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => \p_0_in__2\(3),
      Q => \^q\(3),
      R => rst_audio
    );
\write_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => \p_0_in__2\(4),
      Q => \^q\(4),
      R => rst_audio
    );
\write_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => \p_0_in__2\(5),
      Q => \^q\(5),
      R => rst_audio
    );
\write_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => \p_0_in__2\(6),
      Q => \^q\(6),
      R => rst_audio
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_dsp_fir_folded_0 is
  port (
    pipe_valid_s2_reg_0 : out STD_LOGIC;
    \read_ptr_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \audio_out_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    pipe_audio_s1 : in STD_LOGIC;
    accumulator_reg_0 : in STD_LOGIC;
    clk_audio : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    RSTP : in STD_LOGIC;
    douta : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \read_ptr_reg[5]_0\ : in STD_LOGIC;
    \read_ptr_reg[0]_1\ : in STD_LOGIC;
    pipe_valid_s1_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    new_sample : in STD_LOGIC;
    locked : in STD_LOGIC;
    accumulator_reg_1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    accumulator_reg_2 : in STD_LOGIC;
    accumulator_reg_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_dsp_fir_folded_0 : entity is "dsp_fir_folded";
end design_1_spatial_audio_top_0_0_dsp_fir_folded_0;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_dsp_fir_folded_0 is
  signal \accumulator_reg_i_10__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_11__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_12__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_13__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_14__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_15__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_16__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_17__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_18__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_19__0_n_0\ : STD_LOGIC;
  signal accumulator_reg_i_1_n_0 : STD_LOGIC;
  signal \accumulator_reg_i_20__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_21__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_22__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_23__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_24__0_n_0\ : STD_LOGIC;
  signal accumulator_reg_i_2_n_0 : STD_LOGIC;
  signal accumulator_reg_i_3_n_0 : STD_LOGIC;
  signal \accumulator_reg_i_4__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_5__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_6__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_7__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_8__0_n_0\ : STD_LOGIC;
  signal \accumulator_reg_i_9__0_n_0\ : STD_LOGIC;
  signal accumulator_reg_n_100 : STD_LOGIC;
  signal accumulator_reg_n_101 : STD_LOGIC;
  signal accumulator_reg_n_102 : STD_LOGIC;
  signal accumulator_reg_n_103 : STD_LOGIC;
  signal accumulator_reg_n_104 : STD_LOGIC;
  signal accumulator_reg_n_105 : STD_LOGIC;
  signal accumulator_reg_n_58 : STD_LOGIC;
  signal accumulator_reg_n_59 : STD_LOGIC;
  signal accumulator_reg_n_60 : STD_LOGIC;
  signal accumulator_reg_n_61 : STD_LOGIC;
  signal accumulator_reg_n_62 : STD_LOGIC;
  signal accumulator_reg_n_63 : STD_LOGIC;
  signal accumulator_reg_n_64 : STD_LOGIC;
  signal accumulator_reg_n_65 : STD_LOGIC;
  signal accumulator_reg_n_66 : STD_LOGIC;
  signal accumulator_reg_n_67 : STD_LOGIC;
  signal accumulator_reg_n_68 : STD_LOGIC;
  signal accumulator_reg_n_69 : STD_LOGIC;
  signal accumulator_reg_n_70 : STD_LOGIC;
  signal accumulator_reg_n_71 : STD_LOGIC;
  signal accumulator_reg_n_72 : STD_LOGIC;
  signal accumulator_reg_n_73 : STD_LOGIC;
  signal accumulator_reg_n_74 : STD_LOGIC;
  signal accumulator_reg_n_75 : STD_LOGIC;
  signal accumulator_reg_n_76 : STD_LOGIC;
  signal accumulator_reg_n_77 : STD_LOGIC;
  signal accumulator_reg_n_78 : STD_LOGIC;
  signal accumulator_reg_n_79 : STD_LOGIC;
  signal accumulator_reg_n_80 : STD_LOGIC;
  signal accumulator_reg_n_81 : STD_LOGIC;
  signal accumulator_reg_n_82 : STD_LOGIC;
  signal accumulator_reg_n_83 : STD_LOGIC;
  signal accumulator_reg_n_84 : STD_LOGIC;
  signal accumulator_reg_n_85 : STD_LOGIC;
  signal accumulator_reg_n_86 : STD_LOGIC;
  signal accumulator_reg_n_87 : STD_LOGIC;
  signal accumulator_reg_n_88 : STD_LOGIC;
  signal accumulator_reg_n_89 : STD_LOGIC;
  signal accumulator_reg_n_90 : STD_LOGIC;
  signal accumulator_reg_n_91 : STD_LOGIC;
  signal accumulator_reg_n_92 : STD_LOGIC;
  signal accumulator_reg_n_93 : STD_LOGIC;
  signal accumulator_reg_n_94 : STD_LOGIC;
  signal accumulator_reg_n_95 : STD_LOGIC;
  signal accumulator_reg_n_96 : STD_LOGIC;
  signal accumulator_reg_n_97 : STD_LOGIC;
  signal accumulator_reg_n_98 : STD_LOGIC;
  signal accumulator_reg_n_99 : STD_LOGIC;
  signal audio_history_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_15_17_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_15_17_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_15_17_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_18_20_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_18_20_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_18_20_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_21_23_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_21_23_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_21_23_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal audio_history_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal audio_history_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal audio_history_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_15_17_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_15_17_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_15_17_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_18_20_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_18_20_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_18_20_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_21_23_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_21_23_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_21_23_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal audio_history_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal audio_history_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal audio_history_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal pipe_valid_s1_reg_n_0 : STD_LOGIC;
  signal pipe_valid_s2_i_1_n_0 : STD_LOGIC;
  signal \^pipe_valid_s2_reg_0\ : STD_LOGIC;
  signal read_ptr : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \read_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_ptr[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_ptr[4]_i_2_n_0\ : STD_LOGIC;
  signal \read_ptr[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_ptr[6]_i_1_n_0\ : STD_LOGIC;
  signal read_ptr_reg : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^read_ptr_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_accumulator_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_accumulator_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_accumulator_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_accumulator_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_0_2 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of audio_history_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of audio_history_reg_0_63_0_2 : label is 63;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of audio_history_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of audio_history_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_12_14 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_12_14 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_12_14 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_12_14 : label is 12;
  attribute ram_slice_end of audio_history_reg_0_63_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_15_17 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_15_17 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_15_17 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_15_17 : label is 15;
  attribute ram_slice_end of audio_history_reg_0_63_15_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_18_20 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_18_20 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_18_20 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_18_20 : label is 18;
  attribute ram_slice_end of audio_history_reg_0_63_18_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_21_23 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_21_23 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_21_23 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_21_23 : label is 21;
  attribute ram_slice_end of audio_history_reg_0_63_21_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_3_5 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_3_5 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of audio_history_reg_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_6_8 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_6_8 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_6_8 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_6_8 : label is 6;
  attribute ram_slice_end of audio_history_reg_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_0_63_9_11 : label is "";
  attribute ram_addr_begin of audio_history_reg_0_63_9_11 : label is 0;
  attribute ram_addr_end of audio_history_reg_0_63_9_11 : label is 63;
  attribute ram_slice_begin of audio_history_reg_0_63_9_11 : label is 9;
  attribute ram_slice_end of audio_history_reg_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_0_2 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_0_2 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_0_2 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_0_2 : label is 0;
  attribute ram_slice_end of audio_history_reg_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_12_14 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_12_14 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_12_14 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_12_14 : label is 12;
  attribute ram_slice_end of audio_history_reg_64_127_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_15_17 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_15_17 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_15_17 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_15_17 : label is 15;
  attribute ram_slice_end of audio_history_reg_64_127_15_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_18_20 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_18_20 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_18_20 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_18_20 : label is 18;
  attribute ram_slice_end of audio_history_reg_64_127_18_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_21_23 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_21_23 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_21_23 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_21_23 : label is 21;
  attribute ram_slice_end of audio_history_reg_64_127_21_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_3_5 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_3_5 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_3_5 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_3_5 : label is 3;
  attribute ram_slice_end of audio_history_reg_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_6_8 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_6_8 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_6_8 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_6_8 : label is 6;
  attribute ram_slice_end of audio_history_reg_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of audio_history_reg_64_127_9_11 : label is "";
  attribute ram_addr_begin of audio_history_reg_64_127_9_11 : label is 64;
  attribute ram_addr_end of audio_history_reg_64_127_9_11 : label is 127;
  attribute ram_slice_begin of audio_history_reg_64_127_9_11 : label is 9;
  attribute ram_slice_end of audio_history_reg_64_127_9_11 : label is 11;
begin
  pipe_valid_s2_reg_0 <= \^pipe_valid_s2_reg_0\;
  \read_ptr_reg[0]_0\(0) <= \^read_ptr_reg[0]_0\(0);
accumulator_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => accumulator_reg_i_1_n_0,
      A(28) => accumulator_reg_i_1_n_0,
      A(27) => accumulator_reg_i_1_n_0,
      A(26) => accumulator_reg_i_1_n_0,
      A(25) => accumulator_reg_i_1_n_0,
      A(24) => accumulator_reg_i_1_n_0,
      A(23) => accumulator_reg_i_1_n_0,
      A(22) => accumulator_reg_i_2_n_0,
      A(21) => accumulator_reg_i_3_n_0,
      A(20) => \accumulator_reg_i_4__0_n_0\,
      A(19) => \accumulator_reg_i_5__0_n_0\,
      A(18) => \accumulator_reg_i_6__0_n_0\,
      A(17) => \accumulator_reg_i_7__0_n_0\,
      A(16) => \accumulator_reg_i_8__0_n_0\,
      A(15) => \accumulator_reg_i_9__0_n_0\,
      A(14) => \accumulator_reg_i_10__0_n_0\,
      A(13) => \accumulator_reg_i_11__0_n_0\,
      A(12) => \accumulator_reg_i_12__0_n_0\,
      A(11) => \accumulator_reg_i_13__0_n_0\,
      A(10) => \accumulator_reg_i_14__0_n_0\,
      A(9) => \accumulator_reg_i_15__0_n_0\,
      A(8) => \accumulator_reg_i_16__0_n_0\,
      A(7) => \accumulator_reg_i_17__0_n_0\,
      A(6) => \accumulator_reg_i_18__0_n_0\,
      A(5) => \accumulator_reg_i_19__0_n_0\,
      A(4) => \accumulator_reg_i_20__0_n_0\,
      A(3) => \accumulator_reg_i_21__0_n_0\,
      A(2) => \accumulator_reg_i_22__0_n_0\,
      A(1) => \accumulator_reg_i_23__0_n_0\,
      A(0) => \accumulator_reg_i_24__0_n_0\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_accumulator_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => douta(15),
      B(16) => douta(15),
      B(15 downto 0) => douta(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_accumulator_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_accumulator_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_accumulator_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => pipe_audio_s1,
      CEA2 => accumulator_reg_0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^pipe_valid_s2_reg_0\,
      CLK => clk_audio,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_accumulator_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0100101",
      OVERFLOW => NLW_accumulator_reg_OVERFLOW_UNCONNECTED,
      P(47) => accumulator_reg_n_58,
      P(46) => accumulator_reg_n_59,
      P(45) => accumulator_reg_n_60,
      P(44) => accumulator_reg_n_61,
      P(43) => accumulator_reg_n_62,
      P(42) => accumulator_reg_n_63,
      P(41) => accumulator_reg_n_64,
      P(40) => accumulator_reg_n_65,
      P(39) => accumulator_reg_n_66,
      P(38) => accumulator_reg_n_67,
      P(37) => accumulator_reg_n_68,
      P(36) => accumulator_reg_n_69,
      P(35) => accumulator_reg_n_70,
      P(34) => accumulator_reg_n_71,
      P(33) => accumulator_reg_n_72,
      P(32) => accumulator_reg_n_73,
      P(31) => accumulator_reg_n_74,
      P(30) => accumulator_reg_n_75,
      P(29) => accumulator_reg_n_76,
      P(28) => accumulator_reg_n_77,
      P(27) => accumulator_reg_n_78,
      P(26) => accumulator_reg_n_79,
      P(25) => accumulator_reg_n_80,
      P(24) => accumulator_reg_n_81,
      P(23) => accumulator_reg_n_82,
      P(22) => accumulator_reg_n_83,
      P(21) => accumulator_reg_n_84,
      P(20) => accumulator_reg_n_85,
      P(19) => accumulator_reg_n_86,
      P(18) => accumulator_reg_n_87,
      P(17) => accumulator_reg_n_88,
      P(16) => accumulator_reg_n_89,
      P(15) => accumulator_reg_n_90,
      P(14) => accumulator_reg_n_91,
      P(13) => accumulator_reg_n_92,
      P(12) => accumulator_reg_n_93,
      P(11) => accumulator_reg_n_94,
      P(10) => accumulator_reg_n_95,
      P(9) => accumulator_reg_n_96,
      P(8) => accumulator_reg_n_97,
      P(7) => accumulator_reg_n_98,
      P(6) => accumulator_reg_n_99,
      P(5) => accumulator_reg_n_100,
      P(4) => accumulator_reg_n_101,
      P(3) => accumulator_reg_n_102,
      P(2) => accumulator_reg_n_103,
      P(1) => accumulator_reg_n_104,
      P(0) => accumulator_reg_n_105,
      PATTERNBDETECT => NLW_accumulator_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_accumulator_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_accumulator_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => SR(0),
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTP,
      UNDERFLOW => NLW_accumulator_reg_UNDERFLOW_UNCONNECTED
    );
accumulator_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_21_23_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_21_23_n_2,
      O => accumulator_reg_i_1_n_0
    );
\accumulator_reg_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_12_14_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_12_14_n_2,
      O => \accumulator_reg_i_10__0_n_0\
    );
\accumulator_reg_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_12_14_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_12_14_n_1,
      O => \accumulator_reg_i_11__0_n_0\
    );
\accumulator_reg_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_12_14_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_12_14_n_0,
      O => \accumulator_reg_i_12__0_n_0\
    );
\accumulator_reg_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_9_11_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_9_11_n_2,
      O => \accumulator_reg_i_13__0_n_0\
    );
\accumulator_reg_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_9_11_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_9_11_n_1,
      O => \accumulator_reg_i_14__0_n_0\
    );
\accumulator_reg_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_9_11_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_9_11_n_0,
      O => \accumulator_reg_i_15__0_n_0\
    );
\accumulator_reg_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_6_8_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_6_8_n_2,
      O => \accumulator_reg_i_16__0_n_0\
    );
\accumulator_reg_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_6_8_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_6_8_n_1,
      O => \accumulator_reg_i_17__0_n_0\
    );
\accumulator_reg_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_6_8_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_6_8_n_0,
      O => \accumulator_reg_i_18__0_n_0\
    );
\accumulator_reg_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_3_5_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_3_5_n_2,
      O => \accumulator_reg_i_19__0_n_0\
    );
accumulator_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_21_23_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_21_23_n_1,
      O => accumulator_reg_i_2_n_0
    );
\accumulator_reg_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_3_5_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_3_5_n_1,
      O => \accumulator_reg_i_20__0_n_0\
    );
\accumulator_reg_i_21__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_3_5_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_3_5_n_0,
      O => \accumulator_reg_i_21__0_n_0\
    );
\accumulator_reg_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_0_2_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_0_2_n_2,
      O => \accumulator_reg_i_22__0_n_0\
    );
\accumulator_reg_i_23__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_0_2_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_0_2_n_1,
      O => \accumulator_reg_i_23__0_n_0\
    );
\accumulator_reg_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_0_2_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_0_2_n_0,
      O => \accumulator_reg_i_24__0_n_0\
    );
accumulator_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_21_23_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_21_23_n_0,
      O => accumulator_reg_i_3_n_0
    );
\accumulator_reg_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_18_20_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_18_20_n_2,
      O => \accumulator_reg_i_4__0_n_0\
    );
\accumulator_reg_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_18_20_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_18_20_n_1,
      O => \accumulator_reg_i_5__0_n_0\
    );
\accumulator_reg_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_18_20_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_18_20_n_0,
      O => \accumulator_reg_i_6__0_n_0\
    );
\accumulator_reg_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_15_17_n_2,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_15_17_n_2,
      O => \accumulator_reg_i_7__0_n_0\
    );
\accumulator_reg_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_15_17_n_1,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_15_17_n_1,
      O => \accumulator_reg_i_8__0_n_0\
    );
\accumulator_reg_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => audio_history_reg_64_127_15_17_n_0,
      I1 => read_ptr(6),
      I2 => audio_history_reg_0_63_15_17_n_0,
      O => \accumulator_reg_i_9__0_n_0\
    );
audio_history_reg_0_63_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(0),
      DIB => accumulator_reg_1(1),
      DIC => accumulator_reg_1(2),
      DID => '0',
      DOA => audio_history_reg_0_63_0_2_n_0,
      DOB => audio_history_reg_0_63_0_2_n_1,
      DOC => audio_history_reg_0_63_0_2_n_2,
      DOD => NLW_audio_history_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_0_63_12_14: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(12),
      DIB => accumulator_reg_1(13),
      DIC => accumulator_reg_1(14),
      DID => '0',
      DOA => audio_history_reg_0_63_12_14_n_0,
      DOB => audio_history_reg_0_63_12_14_n_1,
      DOC => audio_history_reg_0_63_12_14_n_2,
      DOD => NLW_audio_history_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_0_63_15_17: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(15),
      DIB => accumulator_reg_1(16),
      DIC => accumulator_reg_1(17),
      DID => '0',
      DOA => audio_history_reg_0_63_15_17_n_0,
      DOB => audio_history_reg_0_63_15_17_n_1,
      DOC => audio_history_reg_0_63_15_17_n_2,
      DOD => NLW_audio_history_reg_0_63_15_17_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_0_63_18_20: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(18),
      DIB => accumulator_reg_1(19),
      DIC => accumulator_reg_1(20),
      DID => '0',
      DOA => audio_history_reg_0_63_18_20_n_0,
      DOB => audio_history_reg_0_63_18_20_n_1,
      DOC => audio_history_reg_0_63_18_20_n_2,
      DOD => NLW_audio_history_reg_0_63_18_20_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_0_63_21_23: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(21),
      DIB => accumulator_reg_1(22),
      DIC => accumulator_reg_1(23),
      DID => '0',
      DOA => audio_history_reg_0_63_21_23_n_0,
      DOB => audio_history_reg_0_63_21_23_n_1,
      DOC => audio_history_reg_0_63_21_23_n_2,
      DOD => NLW_audio_history_reg_0_63_21_23_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_0_63_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(3),
      DIB => accumulator_reg_1(4),
      DIC => accumulator_reg_1(5),
      DID => '0',
      DOA => audio_history_reg_0_63_3_5_n_0,
      DOB => audio_history_reg_0_63_3_5_n_1,
      DOC => audio_history_reg_0_63_3_5_n_2,
      DOD => NLW_audio_history_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_0_63_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(6),
      DIB => accumulator_reg_1(7),
      DIC => accumulator_reg_1(8),
      DID => '0',
      DOA => audio_history_reg_0_63_6_8_n_0,
      DOB => audio_history_reg_0_63_6_8_n_1,
      DOC => audio_history_reg_0_63_6_8_n_2,
      DOD => NLW_audio_history_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_0_63_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(9),
      DIB => accumulator_reg_1(10),
      DIC => accumulator_reg_1(11),
      DID => '0',
      DOA => audio_history_reg_0_63_9_11_n_0,
      DOB => audio_history_reg_0_63_9_11_n_1,
      DOC => audio_history_reg_0_63_9_11_n_2,
      DOD => NLW_audio_history_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_2
    );
audio_history_reg_64_127_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(0),
      DIB => accumulator_reg_1(1),
      DIC => accumulator_reg_1(2),
      DID => '0',
      DOA => audio_history_reg_64_127_0_2_n_0,
      DOB => audio_history_reg_64_127_0_2_n_1,
      DOC => audio_history_reg_64_127_0_2_n_2,
      DOD => NLW_audio_history_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_12_14: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(12),
      DIB => accumulator_reg_1(13),
      DIC => accumulator_reg_1(14),
      DID => '0',
      DOA => audio_history_reg_64_127_12_14_n_0,
      DOB => audio_history_reg_64_127_12_14_n_1,
      DOC => audio_history_reg_64_127_12_14_n_2,
      DOD => NLW_audio_history_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_15_17: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(15),
      DIB => accumulator_reg_1(16),
      DIC => accumulator_reg_1(17),
      DID => '0',
      DOA => audio_history_reg_64_127_15_17_n_0,
      DOB => audio_history_reg_64_127_15_17_n_1,
      DOC => audio_history_reg_64_127_15_17_n_2,
      DOD => NLW_audio_history_reg_64_127_15_17_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_18_20: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(18),
      DIB => accumulator_reg_1(19),
      DIC => accumulator_reg_1(20),
      DID => '0',
      DOA => audio_history_reg_64_127_18_20_n_0,
      DOB => audio_history_reg_64_127_18_20_n_1,
      DOC => audio_history_reg_64_127_18_20_n_2,
      DOD => NLW_audio_history_reg_64_127_18_20_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_21_23: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(21),
      DIB => accumulator_reg_1(22),
      DIC => accumulator_reg_1(23),
      DID => '0',
      DOA => audio_history_reg_64_127_21_23_n_0,
      DOB => audio_history_reg_64_127_21_23_n_1,
      DOC => audio_history_reg_64_127_21_23_n_2,
      DOD => NLW_audio_history_reg_64_127_21_23_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(3),
      DIB => accumulator_reg_1(4),
      DIC => accumulator_reg_1(5),
      DID => '0',
      DOA => audio_history_reg_64_127_3_5_n_0,
      DOB => audio_history_reg_64_127_3_5_n_1,
      DOC => audio_history_reg_64_127_3_5_n_2,
      DOD => NLW_audio_history_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(6),
      DIB => accumulator_reg_1(7),
      DIC => accumulator_reg_1(8),
      DID => '0',
      DOA => audio_history_reg_64_127_6_8_n_0,
      DOB => audio_history_reg_64_127_6_8_n_1,
      DOC => audio_history_reg_64_127_6_8_n_2,
      DOD => NLW_audio_history_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
audio_history_reg_64_127_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRA(0) => \^read_ptr_reg[0]_0\(0),
      ADDRB(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRB(0) => \^read_ptr_reg[0]_0\(0),
      ADDRC(5 downto 1) => read_ptr_reg(5 downto 1),
      ADDRC(0) => \^read_ptr_reg[0]_0\(0),
      ADDRD(5 downto 0) => Q(5 downto 0),
      DIA => accumulator_reg_1(9),
      DIB => accumulator_reg_1(10),
      DIC => accumulator_reg_1(11),
      DID => '0',
      DOA => audio_history_reg_64_127_9_11_n_0,
      DOB => audio_history_reg_64_127_9_11_n_1,
      DOC => audio_history_reg_64_127_9_11_n_2,
      DOD => NLW_audio_history_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk_audio,
      WE => accumulator_reg_3
    );
\audio_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_91,
      Q => \audio_out_reg[23]_0\(0),
      R => SR(0)
    );
\audio_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_81,
      Q => \audio_out_reg[23]_0\(10),
      R => SR(0)
    );
\audio_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_80,
      Q => \audio_out_reg[23]_0\(11),
      R => SR(0)
    );
\audio_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_79,
      Q => \audio_out_reg[23]_0\(12),
      R => SR(0)
    );
\audio_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_78,
      Q => \audio_out_reg[23]_0\(13),
      R => SR(0)
    );
\audio_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_77,
      Q => \audio_out_reg[23]_0\(14),
      R => SR(0)
    );
\audio_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_76,
      Q => \audio_out_reg[23]_0\(15),
      R => SR(0)
    );
\audio_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_75,
      Q => \audio_out_reg[23]_0\(16),
      R => SR(0)
    );
\audio_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_74,
      Q => \audio_out_reg[23]_0\(17),
      R => SR(0)
    );
\audio_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_73,
      Q => \audio_out_reg[23]_0\(18),
      R => SR(0)
    );
\audio_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_72,
      Q => \audio_out_reg[23]_0\(19),
      R => SR(0)
    );
\audio_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_90,
      Q => \audio_out_reg[23]_0\(1),
      R => SR(0)
    );
\audio_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_71,
      Q => \audio_out_reg[23]_0\(20),
      R => SR(0)
    );
\audio_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_70,
      Q => \audio_out_reg[23]_0\(21),
      R => SR(0)
    );
\audio_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_69,
      Q => \audio_out_reg[23]_0\(22),
      R => SR(0)
    );
\audio_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_68,
      Q => \audio_out_reg[23]_0\(23),
      R => SR(0)
    );
\audio_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_89,
      Q => \audio_out_reg[23]_0\(2),
      R => SR(0)
    );
\audio_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_88,
      Q => \audio_out_reg[23]_0\(3),
      R => SR(0)
    );
\audio_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_87,
      Q => \audio_out_reg[23]_0\(4),
      R => SR(0)
    );
\audio_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_86,
      Q => \audio_out_reg[23]_0\(5),
      R => SR(0)
    );
\audio_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_85,
      Q => \audio_out_reg[23]_0\(6),
      R => SR(0)
    );
\audio_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_84,
      Q => \audio_out_reg[23]_0\(7),
      R => SR(0)
    );
\audio_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_83,
      Q => \audio_out_reg[23]_0\(8),
      R => SR(0)
    );
\audio_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => new_sample,
      D => accumulator_reg_n_82,
      Q => \audio_out_reg[23]_0\(9),
      R => SR(0)
    );
pipe_valid_s1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => pipe_valid_s1_reg_0,
      Q => pipe_valid_s1_reg_n_0,
      R => '0'
    );
pipe_valid_s2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pipe_valid_s1_reg_n_0,
      I1 => locked,
      I2 => new_sample,
      O => pipe_valid_s2_i_1_n_0
    );
pipe_valid_s2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => pipe_valid_s2_i_1_n_0,
      Q => \^pipe_valid_s2_reg_0\,
      R => '0'
    );
\read_ptr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Q(1),
      I1 => new_sample,
      I2 => \^read_ptr_reg[0]_0\(0),
      I3 => read_ptr_reg(1),
      O => \read_ptr[1]_i_1_n_0\
    );
\read_ptr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => Q(2),
      I1 => new_sample,
      I2 => read_ptr_reg(1),
      I3 => \^read_ptr_reg[0]_0\(0),
      I4 => read_ptr_reg(2),
      O => \read_ptr[2]_i_1_n_0\
    );
\read_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => Q(3),
      I1 => new_sample,
      I2 => read_ptr_reg(2),
      I3 => \^read_ptr_reg[0]_0\(0),
      I4 => read_ptr_reg(1),
      I5 => read_ptr_reg(3),
      O => \read_ptr[3]_i_1_n_0\
    );
\read_ptr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Q(4),
      I1 => new_sample,
      I2 => \read_ptr[4]_i_2_n_0\,
      I3 => read_ptr_reg(4),
      O => \read_ptr[4]_i_1_n_0\
    );
\read_ptr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_ptr_reg(2),
      I1 => \^read_ptr_reg[0]_0\(0),
      I2 => read_ptr_reg(1),
      I3 => read_ptr_reg(3),
      O => \read_ptr[4]_i_2_n_0\
    );
\read_ptr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => Q(5),
      I1 => new_sample,
      I2 => read_ptr_reg(4),
      I3 => \read_ptr[4]_i_2_n_0\,
      I4 => read_ptr_reg(5),
      O => \read_ptr[5]_i_1_n_0\
    );
\read_ptr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => Q(6),
      I1 => new_sample,
      I2 => \read_ptr[4]_i_2_n_0\,
      I3 => read_ptr_reg(4),
      I4 => read_ptr_reg(5),
      I5 => read_ptr(6),
      O => \read_ptr[6]_i_1_n_0\
    );
\read_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[5]_0\,
      D => \read_ptr_reg[0]_1\,
      Q => \^read_ptr_reg[0]_0\(0),
      R => SR(0)
    );
\read_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[5]_0\,
      D => \read_ptr[1]_i_1_n_0\,
      Q => read_ptr_reg(1),
      R => SR(0)
    );
\read_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[5]_0\,
      D => \read_ptr[2]_i_1_n_0\,
      Q => read_ptr_reg(2),
      R => SR(0)
    );
\read_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[5]_0\,
      D => \read_ptr[3]_i_1_n_0\,
      Q => read_ptr_reg(3),
      R => SR(0)
    );
\read_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[5]_0\,
      D => \read_ptr[4]_i_1_n_0\,
      Q => read_ptr_reg(4),
      R => SR(0)
    );
\read_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[5]_0\,
      D => \read_ptr[5]_i_1_n_0\,
      Q => read_ptr_reg(5),
      R => SR(0)
    );
\read_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_audio,
      CE => \read_ptr_reg[5]_0\,
      D => \read_ptr[6]_i_1_n_0\,
      Q => read_ptr(6),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_hrtf_address_generator is
  port (
    pipe_audio_s1 : out STD_LOGIC;
    conv_en_reg_0 : out STD_LOGIC;
    conv_en_reg_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    rst_audio : in STD_LOGIC;
    clk_audio : in STD_LOGIC;
    new_sample : in STD_LOGIC;
    locked : in STD_LOGIC;
    target_angle : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_hrtf_address_generator : entity is "hrtf_address_generator";
end design_1_spatial_audio_top_0_0_hrtf_address_generator;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_hrtf_address_generator is
  signal \bram_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[10]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[6]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[13]_i_2_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[13]_i_2_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[13]_i_2_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[13]_i_2_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[13]_i_2_n_7\ : STD_LOGIC;
  signal conv_en : STD_LOGIC;
  signal conv_en_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \tap_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \tap_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \tap_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \tap_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \tap_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \tap_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \tap_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \tap_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bram_addr_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_bram_addr_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bram_addr_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_addr[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_addr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_addr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_addr[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bram_addr[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bram_addr[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_addr[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_addr[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of pipe_valid_s1_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_ptr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tap_count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tap_count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tap_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tap_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tap_count[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tap_count[7]_i_2\ : label is "soft_lutpair4";
begin
\accumulator_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => conv_en,
      I1 => new_sample,
      O => pipe_audio_s1
    );
\bram_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \tap_count_reg__0\(0),
      I1 => state_reg_n_0,
      I2 => new_sample,
      O => \bram_addr[0]_i_1_n_0\
    );
\bram_addr[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => new_sample,
      I1 => state_reg_n_0,
      I2 => \tap_count_reg__0\(7),
      I3 => target_angle(0),
      O => \bram_addr[10]_i_2_n_0\
    );
\bram_addr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => new_sample,
      O => \bram_addr[13]_i_1_n_0\
    );
\bram_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \tap_count_reg__0\(1),
      I1 => state_reg_n_0,
      I2 => new_sample,
      O => \bram_addr[1]_i_1_n_0\
    );
\bram_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \tap_count_reg__0\(2),
      I1 => state_reg_n_0,
      I2 => new_sample,
      O => \bram_addr[2]_i_1_n_0\
    );
\bram_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \tap_count_reg__0\(3),
      I1 => state_reg_n_0,
      I2 => new_sample,
      O => \bram_addr[3]_i_1_n_0\
    );
\bram_addr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \tap_count_reg__0\(4),
      I1 => state_reg_n_0,
      I2 => new_sample,
      O => \bram_addr[4]_i_1_n_0\
    );
\bram_addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \tap_count_reg__0\(5),
      I1 => state_reg_n_0,
      I2 => new_sample,
      O => \bram_addr[5]_i_1_n_0\
    );
\bram_addr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => new_sample,
      I2 => locked,
      O => \bram_addr[6]_i_1_n_0\
    );
\bram_addr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \tap_count_reg__0\(6),
      I1 => state_reg_n_0,
      I2 => new_sample,
      O => \bram_addr[6]_i_2_n_0\
    );
\bram_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => new_sample,
      I1 => state_reg_n_0,
      I2 => \tap_count_reg__0\(7),
      I3 => target_angle(0),
      O => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[0]_i_1_n_0\,
      Q => Q(0),
      R => \bram_addr[6]_i_1_n_0\
    );
\bram_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr_reg[10]_i_1_n_4\,
      Q => Q(10),
      R => rst_audio
    );
\bram_addr_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_addr_reg[10]_i_1_n_0\,
      CO(2) => \bram_addr_reg[10]_i_1_n_1\,
      CO(1) => \bram_addr_reg[10]_i_1_n_2\,
      CO(0) => \bram_addr_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => target_angle(0),
      O(3) => \bram_addr_reg[10]_i_1_n_4\,
      O(2) => \bram_addr_reg[10]_i_1_n_5\,
      O(1) => \bram_addr_reg[10]_i_1_n_6\,
      O(0) => \NLW_bram_addr_reg[10]_i_1_O_UNCONNECTED\(0),
      S(3 downto 1) => target_angle(3 downto 1),
      S(0) => \bram_addr[10]_i_2_n_0\
    );
\bram_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr_reg[13]_i_2_n_7\,
      Q => Q(11),
      R => rst_audio
    );
\bram_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr_reg[13]_i_2_n_6\,
      Q => Q(12),
      R => rst_audio
    );
\bram_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr_reg[13]_i_2_n_5\,
      Q => Q(13),
      R => rst_audio
    );
\bram_addr_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_addr_reg[10]_i_1_n_0\,
      CO(3 downto 2) => \NLW_bram_addr_reg[13]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bram_addr_reg[13]_i_2_n_2\,
      CO(0) => \bram_addr_reg[13]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bram_addr_reg[13]_i_2_O_UNCONNECTED\(3),
      O(2) => \bram_addr_reg[13]_i_2_n_5\,
      O(1) => \bram_addr_reg[13]_i_2_n_6\,
      O(0) => \bram_addr_reg[13]_i_2_n_7\,
      S(3) => '0',
      S(2 downto 0) => target_angle(6 downto 4)
    );
\bram_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[1]_i_1_n_0\,
      Q => Q(1),
      R => \bram_addr[6]_i_1_n_0\
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[2]_i_1_n_0\,
      Q => Q(2),
      R => \bram_addr[6]_i_1_n_0\
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[3]_i_1_n_0\,
      Q => Q(3),
      R => \bram_addr[6]_i_1_n_0\
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[4]_i_1_n_0\,
      Q => Q(4),
      R => \bram_addr[6]_i_1_n_0\
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[5]_i_1_n_0\,
      Q => Q(5),
      R => \bram_addr[6]_i_1_n_0\
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[6]_i_2_n_0\,
      Q => Q(6),
      R => \bram_addr[6]_i_1_n_0\
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr[7]_i_1_n_0\,
      Q => Q(7),
      R => rst_audio
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr_reg[10]_i_1_n_6\,
      Q => Q(8),
      R => rst_audio
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \bram_addr[13]_i_1_n_0\,
      D => \bram_addr_reg[10]_i_1_n_5\,
      Q => Q(9),
      R => rst_audio
    );
conv_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDFF00FF0000"
    )
        port map (
      I0 => \tap_count_reg__0\(6),
      I1 => state_i_2_n_0,
      I2 => \tap_count_reg__0\(7),
      I3 => state_reg_n_0,
      I4 => new_sample,
      I5 => conv_en,
      O => conv_en_i_1_n_0
    );
conv_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => conv_en_i_1_n_0,
      Q => conv_en,
      R => rst_audio
    );
pipe_valid_s1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => conv_en,
      I1 => locked,
      I2 => new_sample,
      O => conv_en_reg_1
    );
\read_ptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => conv_en,
      I1 => new_sample,
      O => conv_en_reg_0
    );
state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFD00"
    )
        port map (
      I0 => \tap_count_reg__0\(6),
      I1 => state_i_2_n_0,
      I2 => \tap_count_reg__0\(7),
      I3 => state_reg_n_0,
      I4 => new_sample,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \tap_count_reg__0\(4),
      I1 => \tap_count_reg__0\(2),
      I2 => \tap_count_reg__0\(0),
      I3 => \tap_count_reg__0\(1),
      I4 => \tap_count_reg__0\(3),
      I5 => \tap_count_reg__0\(5),
      O => state_i_2_n_0
    );
state_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => state_i_1_n_0,
      Q => state_reg_n_0,
      R => rst_audio
    );
\tap_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tap_count_reg__0\(0),
      O => p_0_in(0)
    );
\tap_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tap_count_reg__0\(0),
      I1 => \tap_count_reg__0\(1),
      O => p_0_in(1)
    );
\tap_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \tap_count_reg__0\(1),
      I1 => \tap_count_reg__0\(0),
      I2 => \tap_count_reg__0\(2),
      O => \tap_count[2]_i_1_n_0\
    );
\tap_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \tap_count_reg__0\(2),
      I1 => \tap_count_reg__0\(0),
      I2 => \tap_count_reg__0\(1),
      I3 => \tap_count_reg__0\(3),
      O => \tap_count[3]_i_1_n_0\
    );
\tap_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \tap_count_reg__0\(3),
      I1 => \tap_count_reg__0\(1),
      I2 => \tap_count_reg__0\(0),
      I3 => \tap_count_reg__0\(2),
      I4 => \tap_count_reg__0\(4),
      O => \tap_count[4]_i_1_n_0\
    );
\tap_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \tap_count_reg__0\(4),
      I1 => \tap_count_reg__0\(2),
      I2 => \tap_count_reg__0\(0),
      I3 => \tap_count_reg__0\(1),
      I4 => \tap_count_reg__0\(3),
      I5 => \tap_count_reg__0\(5),
      O => \tap_count[5]_i_1_n_0\
    );
\tap_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state_i_2_n_0,
      I1 => \tap_count_reg__0\(6),
      O => \tap_count[6]_i_1_n_0\
    );
\tap_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => \tap_count_reg__0\(7),
      I1 => state_i_2_n_0,
      I2 => \tap_count_reg__0\(6),
      I3 => state_reg_n_0,
      O => \tap_count[7]_i_1_n_0\
    );
\tap_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \tap_count_reg__0\(6),
      I1 => state_i_2_n_0,
      I2 => \tap_count_reg__0\(7),
      O => \tap_count[7]_i_2_n_0\
    );
\tap_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \tap_count_reg__0\(0),
      R => \bram_addr[6]_i_1_n_0\
    );
\tap_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \tap_count_reg__0\(1),
      R => \bram_addr[6]_i_1_n_0\
    );
\tap_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => \tap_count[2]_i_1_n_0\,
      Q => \tap_count_reg__0\(2),
      R => \bram_addr[6]_i_1_n_0\
    );
\tap_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => \tap_count[3]_i_1_n_0\,
      Q => \tap_count_reg__0\(3),
      R => \bram_addr[6]_i_1_n_0\
    );
\tap_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => \tap_count[4]_i_1_n_0\,
      Q => \tap_count_reg__0\(4),
      R => \bram_addr[6]_i_1_n_0\
    );
\tap_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => \tap_count[5]_i_1_n_0\,
      Q => \tap_count_reg__0\(5),
      R => \bram_addr[6]_i_1_n_0\
    );
\tap_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => \tap_count[6]_i_1_n_0\,
      Q => \tap_count_reg__0\(6),
      R => \bram_addr[6]_i_1_n_0\
    );
\tap_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tap_count[7]_i_1_n_0\,
      D => \tap_count[7]_i_2_n_0\,
      Q => \tap_count_reg__0\(7),
      R => \bram_addr[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_i2s_controller is
  port (
    sclk_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    new_sample : out STD_LOGIC;
    rx_lrck : out STD_LOGIC;
    tx_data : out STD_LOGIC;
    locked_0 : out STD_LOGIC;
    new_sample_pulse_reg_0 : out STD_LOGIC;
    RSTP : out STD_LOGIC;
    locked_1 : out STD_LOGIC;
    \l_data_rx_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \r_data_rx_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clk_audio : in STD_LOGIC;
    rx_data : in STD_LOGIC;
    locked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_shift_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \tx_shift_reg[23]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_i2s_controller : entity is "i2s_controller";
end design_1_spatial_audio_top_0_0_i2s_controller;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_i2s_controller is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal div_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \div_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \div_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \div_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \l_data_rx[23]_i_1_n_0\ : STD_LOGIC;
  signal lrck_i_1_n_0 : STD_LOGIC;
  signal lrck_i_2_n_0 : STD_LOGIC;
  signal lrck_i_3_n_0 : STD_LOGIC;
  signal lrck_i_4_n_0 : STD_LOGIC;
  signal \^new_sample\ : STD_LOGIC;
  signal new_sample_pulse_i_1_n_0 : STD_LOGIC;
  signal new_sample_pulse_i_2_n_0 : STD_LOGIC;
  signal new_sample_pulse_i_3_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \^rx_lrck\ : STD_LOGIC;
  signal rx_shift : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rx_shift[23]_i_2_n_0\ : STD_LOGIC;
  signal rx_shift_0 : STD_LOGIC;
  signal sclk_fall : STD_LOGIC;
  signal \^sclk_reg_0\ : STD_LOGIC;
  signal sd_rx_pipe : STD_LOGIC;
  signal sd_rx_sync : STD_LOGIC;
  signal sd_tx_i_1_n_0 : STD_LOGIC;
  signal \^tx_data\ : STD_LOGIC;
  signal \tx_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[16]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[17]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[18]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[19]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[20]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[21]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[22]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[23]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift[23]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift[23]_i_4_n_0\ : STD_LOGIC;
  signal \tx_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift[9]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_shift_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \div_cnt[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \div_cnt[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \div_cnt[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of lrck_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of lrck_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of new_sample_pulse_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of new_sample_pulse_i_3 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rx_shift[23]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of sclk_i_2 : label is "soft_lutpair13";
begin
  SR(0) <= \^sr\(0);
  new_sample <= \^new_sample\;
  rx_lrck <= \^rx_lrck\;
  sclk_reg_0 <= \^sclk_reg_0\;
  tx_data <= \^tx_data\;
\accumulator_reg_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^new_sample\,
      O => new_sample_pulse_reg_0
    );
\accumulator_reg_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^new_sample\,
      I1 => locked,
      O => RSTP
    );
audio_history_reg_0_63_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => locked,
      I1 => \^new_sample\,
      I2 => Q(0),
      O => locked_0
    );
audio_history_reg_64_127_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => locked,
      I1 => \^new_sample\,
      I2 => Q(0),
      O => locked_1
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_cnt_reg__0\(0),
      I1 => \bit_cnt_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bit_cnt_reg__0\(1),
      I1 => \bit_cnt_reg__0\(0),
      I2 => \bit_cnt_reg__0\(2),
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \bit_cnt_reg__0\(2),
      I1 => \bit_cnt_reg__0\(0),
      I2 => \bit_cnt_reg__0\(1),
      I3 => \bit_cnt_reg__0\(3),
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \bit_cnt_reg__0\(1),
      I1 => \bit_cnt_reg__0\(0),
      I2 => \bit_cnt_reg__0\(2),
      I3 => \bit_cnt_reg__0\(3),
      I4 => \bit_cnt_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\bit_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^sclk_reg_0\,
      I1 => div_cnt(2),
      I2 => div_cnt(1),
      I3 => div_cnt(0),
      O => sclk_fall
    );
\bit_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \bit_cnt_reg__0\(3),
      I1 => \bit_cnt_reg__0\(4),
      I2 => \bit_cnt_reg__0\(1),
      I3 => \bit_cnt_reg__0\(0),
      I4 => \bit_cnt_reg__0\(2),
      I5 => \bit_cnt_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => sclk_fall,
      D => \p_0_in__1\(0),
      Q => \bit_cnt_reg__0\(0),
      R => \^sr\(0)
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => sclk_fall,
      D => \p_0_in__1\(1),
      Q => \bit_cnt_reg__0\(1),
      R => \^sr\(0)
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => sclk_fall,
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg__0\(2),
      R => \^sr\(0)
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => sclk_fall,
      D => \bit_cnt[3]_i_1_n_0\,
      Q => \bit_cnt_reg__0\(3),
      R => \^sr\(0)
    );
\bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => sclk_fall,
      D => \p_0_in__1\(4),
      Q => \bit_cnt_reg__0\(4),
      R => \^sr\(0)
    );
\bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => sclk_fall,
      D => \p_0_in__1\(5),
      Q => \bit_cnt_reg__0\(5),
      R => \^sr\(0)
    );
\div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => div_cnt(0),
      O => \div_cnt[0]_i_1_n_0\
    );
\div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => div_cnt(0),
      I1 => div_cnt(1),
      O => \div_cnt[1]_i_1_n_0\
    );
\div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => div_cnt(1),
      I1 => div_cnt(0),
      I2 => div_cnt(2),
      O => \div_cnt[2]_i_1_n_0\
    );
\div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => \div_cnt[0]_i_1_n_0\,
      Q => div_cnt(0),
      R => \^sr\(0)
    );
\div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => \div_cnt[1]_i_1_n_0\,
      Q => div_cnt(1),
      R => \^sr\(0)
    );
\div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => \div_cnt[2]_i_1_n_0\,
      Q => div_cnt(2),
      R => \^sr\(0)
    );
\l_data_rx[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \bit_cnt_reg__0\(5),
      I1 => \^sclk_reg_0\,
      I2 => \bit_cnt_reg__0\(0),
      I3 => new_sample_pulse_i_2_n_0,
      I4 => new_sample_pulse_i_3_n_0,
      O => \l_data_rx[23]_i_1_n_0\
    );
\l_data_rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(0),
      Q => \l_data_rx_reg[23]_0\(0),
      R => \^sr\(0)
    );
\l_data_rx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(10),
      Q => \l_data_rx_reg[23]_0\(10),
      R => \^sr\(0)
    );
\l_data_rx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(11),
      Q => \l_data_rx_reg[23]_0\(11),
      R => \^sr\(0)
    );
\l_data_rx_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(12),
      Q => \l_data_rx_reg[23]_0\(12),
      R => \^sr\(0)
    );
\l_data_rx_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(13),
      Q => \l_data_rx_reg[23]_0\(13),
      R => \^sr\(0)
    );
\l_data_rx_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(14),
      Q => \l_data_rx_reg[23]_0\(14),
      R => \^sr\(0)
    );
\l_data_rx_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(15),
      Q => \l_data_rx_reg[23]_0\(15),
      R => \^sr\(0)
    );
\l_data_rx_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(16),
      Q => \l_data_rx_reg[23]_0\(16),
      R => \^sr\(0)
    );
\l_data_rx_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(17),
      Q => \l_data_rx_reg[23]_0\(17),
      R => \^sr\(0)
    );
\l_data_rx_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(18),
      Q => \l_data_rx_reg[23]_0\(18),
      R => \^sr\(0)
    );
\l_data_rx_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(19),
      Q => \l_data_rx_reg[23]_0\(19),
      R => \^sr\(0)
    );
\l_data_rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(1),
      Q => \l_data_rx_reg[23]_0\(1),
      R => \^sr\(0)
    );
\l_data_rx_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(20),
      Q => \l_data_rx_reg[23]_0\(20),
      R => \^sr\(0)
    );
\l_data_rx_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(21),
      Q => \l_data_rx_reg[23]_0\(21),
      R => \^sr\(0)
    );
\l_data_rx_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(22),
      Q => \l_data_rx_reg[23]_0\(22),
      R => \^sr\(0)
    );
\l_data_rx_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(23),
      Q => \l_data_rx_reg[23]_0\(23),
      R => \^sr\(0)
    );
\l_data_rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(2),
      Q => \l_data_rx_reg[23]_0\(2),
      R => \^sr\(0)
    );
\l_data_rx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(3),
      Q => \l_data_rx_reg[23]_0\(3),
      R => \^sr\(0)
    );
\l_data_rx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(4),
      Q => \l_data_rx_reg[23]_0\(4),
      R => \^sr\(0)
    );
\l_data_rx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(5),
      Q => \l_data_rx_reg[23]_0\(5),
      R => \^sr\(0)
    );
\l_data_rx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(6),
      Q => \l_data_rx_reg[23]_0\(6),
      R => \^sr\(0)
    );
\l_data_rx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(7),
      Q => \l_data_rx_reg[23]_0\(7),
      R => \^sr\(0)
    );
\l_data_rx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(8),
      Q => \l_data_rx_reg[23]_0\(8),
      R => \^sr\(0)
    );
\l_data_rx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \l_data_rx[23]_i_1_n_0\,
      D => rx_shift(9),
      Q => \l_data_rx_reg[23]_0\(9),
      R => \^sr\(0)
    );
lrck_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888880A"
    )
        port map (
      I0 => locked,
      I1 => \^rx_lrck\,
      I2 => \bit_cnt_reg__0\(5),
      I3 => lrck_i_2_n_0,
      I4 => lrck_i_3_n_0,
      I5 => lrck_i_4_n_0,
      O => lrck_i_1_n_0
    );
lrck_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \bit_cnt_reg__0\(1),
      I1 => \bit_cnt_reg__0\(0),
      I2 => \bit_cnt_reg__0\(2),
      O => lrck_i_2_n_0
    );
lrck_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_cnt_reg__0\(3),
      I1 => \bit_cnt_reg__0\(4),
      O => lrck_i_3_n_0
    );
lrck_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => div_cnt(0),
      I1 => div_cnt(1),
      I2 => div_cnt(2),
      I3 => \^sclk_reg_0\,
      O => lrck_i_4_n_0
    );
lrck_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => lrck_i_1_n_0,
      Q => \^rx_lrck\,
      R => '0'
    );
new_sample_pulse_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^sclk_reg_0\,
      I1 => \bit_cnt_reg__0\(5),
      I2 => \bit_cnt_reg__0\(0),
      I3 => new_sample_pulse_i_2_n_0,
      I4 => new_sample_pulse_i_3_n_0,
      O => new_sample_pulse_i_1_n_0
    );
new_sample_pulse_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \bit_cnt_reg__0\(2),
      I1 => \bit_cnt_reg__0\(1),
      I2 => \bit_cnt_reg__0\(4),
      I3 => \bit_cnt_reg__0\(3),
      O => new_sample_pulse_i_2_n_0
    );
new_sample_pulse_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => div_cnt(2),
      I1 => div_cnt(1),
      I2 => div_cnt(0),
      O => new_sample_pulse_i_3_n_0
    );
new_sample_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => new_sample_pulse_i_1_n_0,
      Q => \^new_sample\,
      R => \^sr\(0)
    );
\r_data_rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(0),
      Q => \r_data_rx_reg[23]_0\(0),
      R => \^sr\(0)
    );
\r_data_rx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(10),
      Q => \r_data_rx_reg[23]_0\(10),
      R => \^sr\(0)
    );
\r_data_rx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(11),
      Q => \r_data_rx_reg[23]_0\(11),
      R => \^sr\(0)
    );
\r_data_rx_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(12),
      Q => \r_data_rx_reg[23]_0\(12),
      R => \^sr\(0)
    );
\r_data_rx_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(13),
      Q => \r_data_rx_reg[23]_0\(13),
      R => \^sr\(0)
    );
\r_data_rx_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(14),
      Q => \r_data_rx_reg[23]_0\(14),
      R => \^sr\(0)
    );
\r_data_rx_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(15),
      Q => \r_data_rx_reg[23]_0\(15),
      R => \^sr\(0)
    );
\r_data_rx_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(16),
      Q => \r_data_rx_reg[23]_0\(16),
      R => \^sr\(0)
    );
\r_data_rx_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(17),
      Q => \r_data_rx_reg[23]_0\(17),
      R => \^sr\(0)
    );
\r_data_rx_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(18),
      Q => \r_data_rx_reg[23]_0\(18),
      R => \^sr\(0)
    );
\r_data_rx_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(19),
      Q => \r_data_rx_reg[23]_0\(19),
      R => \^sr\(0)
    );
\r_data_rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(1),
      Q => \r_data_rx_reg[23]_0\(1),
      R => \^sr\(0)
    );
\r_data_rx_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(20),
      Q => \r_data_rx_reg[23]_0\(20),
      R => \^sr\(0)
    );
\r_data_rx_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(21),
      Q => \r_data_rx_reg[23]_0\(21),
      R => \^sr\(0)
    );
\r_data_rx_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(22),
      Q => \r_data_rx_reg[23]_0\(22),
      R => \^sr\(0)
    );
\r_data_rx_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(23),
      Q => \r_data_rx_reg[23]_0\(23),
      R => \^sr\(0)
    );
\r_data_rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(2),
      Q => \r_data_rx_reg[23]_0\(2),
      R => \^sr\(0)
    );
\r_data_rx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(3),
      Q => \r_data_rx_reg[23]_0\(3),
      R => \^sr\(0)
    );
\r_data_rx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(4),
      Q => \r_data_rx_reg[23]_0\(4),
      R => \^sr\(0)
    );
\r_data_rx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(5),
      Q => \r_data_rx_reg[23]_0\(5),
      R => \^sr\(0)
    );
\r_data_rx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(6),
      Q => \r_data_rx_reg[23]_0\(6),
      R => \^sr\(0)
    );
\r_data_rx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(7),
      Q => \r_data_rx_reg[23]_0\(7),
      R => \^sr\(0)
    );
\r_data_rx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(8),
      Q => \r_data_rx_reg[23]_0\(8),
      R => \^sr\(0)
    );
\r_data_rx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => new_sample_pulse_i_1_n_0,
      D => rx_shift(9),
      Q => \r_data_rx_reg[23]_0\(9),
      R => \^sr\(0)
    );
\rx_shift[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => div_cnt(2),
      I1 => div_cnt(1),
      I2 => div_cnt(0),
      I3 => locked,
      I4 => \^sclk_reg_0\,
      I5 => \rx_shift[23]_i_2_n_0\,
      O => rx_shift_0
    );
\rx_shift[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFE"
    )
        port map (
      I0 => \bit_cnt_reg__0\(2),
      I1 => \bit_cnt_reg__0\(1),
      I2 => \bit_cnt_reg__0\(0),
      I3 => \bit_cnt_reg__0\(3),
      I4 => \bit_cnt_reg__0\(4),
      O => \rx_shift[23]_i_2_n_0\
    );
\rx_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => sd_rx_pipe,
      Q => rx_shift(0),
      R => '0'
    );
\rx_shift_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(9),
      Q => rx_shift(10),
      R => '0'
    );
\rx_shift_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(10),
      Q => rx_shift(11),
      R => '0'
    );
\rx_shift_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(11),
      Q => rx_shift(12),
      R => '0'
    );
\rx_shift_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(12),
      Q => rx_shift(13),
      R => '0'
    );
\rx_shift_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(13),
      Q => rx_shift(14),
      R => '0'
    );
\rx_shift_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(14),
      Q => rx_shift(15),
      R => '0'
    );
\rx_shift_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(15),
      Q => rx_shift(16),
      R => '0'
    );
\rx_shift_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(16),
      Q => rx_shift(17),
      R => '0'
    );
\rx_shift_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(17),
      Q => rx_shift(18),
      R => '0'
    );
\rx_shift_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(18),
      Q => rx_shift(19),
      R => '0'
    );
\rx_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(0),
      Q => rx_shift(1),
      R => '0'
    );
\rx_shift_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(19),
      Q => rx_shift(20),
      R => '0'
    );
\rx_shift_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(20),
      Q => rx_shift(21),
      R => '0'
    );
\rx_shift_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(21),
      Q => rx_shift(22),
      R => '0'
    );
\rx_shift_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(22),
      Q => rx_shift(23),
      R => '0'
    );
\rx_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(1),
      Q => rx_shift(2),
      R => '0'
    );
\rx_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(2),
      Q => rx_shift(3),
      R => '0'
    );
\rx_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(3),
      Q => rx_shift(4),
      R => '0'
    );
\rx_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(4),
      Q => rx_shift(5),
      R => '0'
    );
\rx_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(5),
      Q => rx_shift(6),
      R => '0'
    );
\rx_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(6),
      Q => rx_shift(7),
      R => '0'
    );
\rx_shift_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(7),
      Q => rx_shift(8),
      R => '0'
    );
\rx_shift_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => rx_shift_0,
      D => rx_shift(8),
      Q => rx_shift(9),
      R => '0'
    );
sclk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => locked,
      O => \^sr\(0)
    );
sclk_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => div_cnt(0),
      I1 => div_cnt(1),
      I2 => div_cnt(2),
      I3 => \^sclk_reg_0\,
      O => \p_0_in__0\
    );
sclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => \p_0_in__0\,
      Q => \^sclk_reg_0\,
      R => \^sr\(0)
    );
sd_rx_pipe_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => sd_rx_sync,
      Q => sd_rx_pipe,
      R => '0'
    );
sd_rx_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => rx_data,
      Q => sd_rx_sync,
      R => '0'
    );
sd_tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888800A0A0A0"
    )
        port map (
      I0 => locked,
      I1 => \^tx_data\,
      I2 => p_1_in,
      I3 => \bit_cnt_reg__0\(3),
      I4 => \bit_cnt_reg__0\(4),
      I5 => lrck_i_4_n_0,
      O => sd_tx_i_1_n_0
    );
sd_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => '1',
      D => sd_tx_i_1_n_0,
      Q => \^tx_data\,
      R => '0'
    );
\tx_shift[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \tx_shift[23]_i_4_n_0\,
      I1 => \tx_shift_reg[23]_1\(0),
      I2 => \tx_shift_reg[23]_0\(0),
      I3 => \tx_shift[23]_i_3_n_0\,
      O => \tx_shift[0]_i_1_n_0\
    );
\tx_shift[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(10),
      I2 => \tx_shift_reg[23]_1\(10),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[9]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[10]_i_1_n_0\
    );
\tx_shift[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(11),
      I2 => \tx_shift_reg[23]_1\(11),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[10]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[11]_i_1_n_0\
    );
\tx_shift[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(12),
      I2 => \tx_shift_reg[23]_1\(12),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[11]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[12]_i_1_n_0\
    );
\tx_shift[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(13),
      I2 => \tx_shift_reg[23]_1\(13),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[12]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[13]_i_1_n_0\
    );
\tx_shift[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(14),
      I2 => \tx_shift_reg[23]_1\(14),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[13]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[14]_i_1_n_0\
    );
\tx_shift[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(15),
      I2 => \tx_shift_reg[23]_1\(15),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[14]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[15]_i_1_n_0\
    );
\tx_shift[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(16),
      I2 => \tx_shift_reg[23]_1\(16),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[15]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[16]_i_1_n_0\
    );
\tx_shift[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(17),
      I2 => \tx_shift_reg[23]_1\(17),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[16]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[17]_i_1_n_0\
    );
\tx_shift[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(18),
      I2 => \tx_shift_reg[23]_1\(18),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[17]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[18]_i_1_n_0\
    );
\tx_shift[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(19),
      I2 => \tx_shift_reg[23]_1\(19),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[18]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[19]_i_1_n_0\
    );
\tx_shift[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(1),
      I2 => \tx_shift_reg[23]_1\(1),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[0]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[1]_i_1_n_0\
    );
\tx_shift[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(20),
      I2 => \tx_shift_reg[23]_1\(20),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[19]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[20]_i_1_n_0\
    );
\tx_shift[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(21),
      I2 => \tx_shift_reg[23]_1\(21),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[20]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[21]_i_1_n_0\
    );
\tx_shift[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(22),
      I2 => \tx_shift_reg[23]_1\(22),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[21]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[22]_i_1_n_0\
    );
\tx_shift[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440000000"
    )
        port map (
      I0 => lrck_i_4_n_0,
      I1 => locked,
      I2 => \bit_cnt_reg__0\(1),
      I3 => \bit_cnt_reg__0\(0),
      I4 => \bit_cnt_reg__0\(2),
      I5 => lrck_i_3_n_0,
      O => \tx_shift[23]_i_1_n_0\
    );
\tx_shift[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(23),
      I2 => \tx_shift_reg[23]_1\(23),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[22]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[23]_i_2_n_0\
    );
\tx_shift[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000000000000"
    )
        port map (
      I0 => \bit_cnt_reg__0\(5),
      I1 => \bit_cnt_reg__0\(1),
      I2 => \bit_cnt_reg__0\(0),
      I3 => \bit_cnt_reg__0\(2),
      I4 => \bit_cnt_reg__0\(4),
      I5 => \bit_cnt_reg__0\(3),
      O => \tx_shift[23]_i_3_n_0\
    );
\tx_shift[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bit_cnt_reg__0\(5),
      I1 => \bit_cnt_reg__0\(1),
      I2 => \bit_cnt_reg__0\(0),
      I3 => \bit_cnt_reg__0\(2),
      I4 => \bit_cnt_reg__0\(4),
      I5 => \bit_cnt_reg__0\(3),
      O => \tx_shift[23]_i_4_n_0\
    );
\tx_shift[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(2),
      I2 => \tx_shift_reg[23]_1\(2),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[1]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[2]_i_1_n_0\
    );
\tx_shift[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(3),
      I2 => \tx_shift_reg[23]_1\(3),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[2]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[3]_i_1_n_0\
    );
\tx_shift[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(4),
      I2 => \tx_shift_reg[23]_1\(4),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[3]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[4]_i_1_n_0\
    );
\tx_shift[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(5),
      I2 => \tx_shift_reg[23]_1\(5),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[4]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[5]_i_1_n_0\
    );
\tx_shift[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(6),
      I2 => \tx_shift_reg[23]_1\(6),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[5]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[6]_i_1_n_0\
    );
\tx_shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(7),
      I2 => \tx_shift_reg[23]_1\(7),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[6]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[7]_i_1_n_0\
    );
\tx_shift[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(8),
      I2 => \tx_shift_reg[23]_1\(8),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[7]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[8]_i_1_n_0\
    );
\tx_shift[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_shift[23]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_0\(9),
      I2 => \tx_shift_reg[23]_1\(9),
      I3 => \tx_shift[23]_i_4_n_0\,
      I4 => \tx_shift_reg_n_0_[8]\,
      I5 => lrck_i_3_n_0,
      O => \tx_shift[9]_i_1_n_0\
    );
\tx_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[0]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[0]\,
      R => '0'
    );
\tx_shift_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[10]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[10]\,
      R => '0'
    );
\tx_shift_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[11]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[11]\,
      R => '0'
    );
\tx_shift_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[12]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[12]\,
      R => '0'
    );
\tx_shift_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[13]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[13]\,
      R => '0'
    );
\tx_shift_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[14]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[14]\,
      R => '0'
    );
\tx_shift_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[15]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[15]\,
      R => '0'
    );
\tx_shift_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[16]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[16]\,
      R => '0'
    );
\tx_shift_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[17]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[17]\,
      R => '0'
    );
\tx_shift_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[18]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[18]\,
      R => '0'
    );
\tx_shift_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[19]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[19]\,
      R => '0'
    );
\tx_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[1]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[1]\,
      R => '0'
    );
\tx_shift_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[20]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[20]\,
      R => '0'
    );
\tx_shift_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[21]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[21]\,
      R => '0'
    );
\tx_shift_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[22]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[22]\,
      R => '0'
    );
\tx_shift_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[23]_i_2_n_0\,
      Q => p_1_in,
      R => '0'
    );
\tx_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[2]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[2]\,
      R => '0'
    );
\tx_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[3]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[3]\,
      R => '0'
    );
\tx_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[4]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[4]\,
      R => '0'
    );
\tx_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[5]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[5]\,
      R => '0'
    );
\tx_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[6]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[6]\,
      R => '0'
    );
\tx_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[7]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[7]\,
      R => '0'
    );
\tx_shift_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[8]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[8]\,
      R => '0'
    );
\tx_shift_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_audio,
      CE => \tx_shift[23]_i_1_n_0\,
      D => \tx_shift[9]_i_1_n_0\,
      Q => \tx_shift_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_bindec : entity is "bindec";
end design_1_spatial_audio_top_0_0_bindec;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_bindec is
begin
\ENOUT_inferred__7/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(3),
      I3 => addra(0),
      O => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_bindec_1 is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_bindec_1 : entity is "bindec";
end design_1_spatial_audio_top_0_0_bindec_1;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_bindec_1 is
begin
\ENOUT_inferred__7/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(3),
      I3 => addra(0),
      O => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ram_douta : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    accumulator_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    accumulator_reg_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    accumulator_reg_1 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end design_1_spatial_audio_top_0_0_blk_mem_gen_mux;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_mux is
  signal \douta[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(0),
      I3 => DOADO(0),
      I4 => accumulator_reg(0),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(1),
      I3 => accumulator_reg_1(1),
      I4 => accumulator_reg(10),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(10)
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(2),
      I3 => accumulator_reg_1(2),
      I4 => accumulator_reg(11),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(11)
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(3),
      I3 => accumulator_reg_1(3),
      I4 => accumulator_reg(12),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(12)
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(4),
      I3 => accumulator_reg_1(4),
      I4 => accumulator_reg(13),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(13)
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(5),
      I3 => accumulator_reg_1(5),
      I4 => accumulator_reg(14),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(14)
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(6),
      I3 => accumulator_reg_1(6),
      I4 => accumulator_reg(15),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(15)
    );
\douta[15]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => sel_pipe_d1(3),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(0),
      O => \douta[15]_INST_0_i_1_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(1),
      I3 => DOADO(1),
      I4 => accumulator_reg(1),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(1)
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(2),
      I3 => DOADO(2),
      I4 => accumulator_reg(2),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(2)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(3),
      I3 => DOADO(3),
      I4 => accumulator_reg(3),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(3)
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(4),
      I3 => DOADO(4),
      I4 => accumulator_reg(4),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(4)
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(5),
      I3 => DOADO(5),
      I4 => accumulator_reg(5),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(5)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(6),
      I3 => DOADO(6),
      I4 => accumulator_reg(6),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(6)
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(7),
      I3 => DOADO(7),
      I4 => accumulator_reg(7),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(7)
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(8),
      I3 => DOPADOP(0),
      I4 => accumulator_reg(8),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(8)
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(0),
      I3 => accumulator_reg_1(0),
      I4 => accumulator_reg(9),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(9)
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(3),
      Q => sel_pipe_d1(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_mux_2 is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ram_douta : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    accumulator_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    accumulator_reg_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    accumulator_reg_1 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_mux_2 : entity is "blk_mem_gen_mux";
end design_1_spatial_audio_top_0_0_blk_mem_gen_mux_2;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_mux_2 is
  signal \douta[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(0),
      I3 => DOADO(0),
      I4 => accumulator_reg(0),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(1),
      I3 => accumulator_reg_1(1),
      I4 => accumulator_reg(10),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(10)
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(2),
      I3 => accumulator_reg_1(2),
      I4 => accumulator_reg(11),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(11)
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(3),
      I3 => accumulator_reg_1(3),
      I4 => accumulator_reg(12),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(12)
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(4),
      I3 => accumulator_reg_1(4),
      I4 => accumulator_reg(13),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(13)
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(5),
      I3 => accumulator_reg_1(5),
      I4 => accumulator_reg(14),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(14)
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(6),
      I3 => accumulator_reg_1(6),
      I4 => accumulator_reg(15),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(15)
    );
\douta[15]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => sel_pipe_d1(3),
      I2 => sel_pipe_d1(1),
      I3 => sel_pipe_d1(0),
      O => \douta[15]_INST_0_i_1_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(1),
      I3 => DOADO(1),
      I4 => accumulator_reg(1),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(1)
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(2),
      I3 => DOADO(2),
      I4 => accumulator_reg(2),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(2)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(3),
      I3 => DOADO(3),
      I4 => accumulator_reg(3),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(3)
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(4),
      I3 => DOADO(4),
      I4 => accumulator_reg(4),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(4)
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(5),
      I3 => DOADO(5),
      I4 => accumulator_reg(5),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(5)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(6),
      I3 => DOADO(6),
      I4 => accumulator_reg(6),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(6)
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(7),
      I3 => DOADO(7),
      I4 => accumulator_reg(7),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(7)
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => ram_douta(8),
      I3 => DOPADOP(0),
      I4 => accumulator_reg(8),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(8)
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541054105410"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => sel_pipe_d1(2),
      I2 => accumulator_reg_0(0),
      I3 => accumulator_reg_1(0),
      I4 => accumulator_reg(9),
      I5 => \douta[15]_INST_0_i_1_n_0\,
      O => douta(9)
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(3),
      Q => sel_pipe_d1(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"CFDA295141DC63F61FBF749546F83880EFEA1778FF842BE09E79188AA93C0000",
      INITP_01 => X"1B27899D11CC615BF5A74A550BE060009F97E52C7138B45D330FA82A86F02000",
      INITP_02 => X"088091B0B27477F5192FB154278100010466685B3904CC777B5B30AA1BC06000",
      INITP_03 => X"2606C53B2D627540667E25509C0C003F1301622C99822BBDE6AC02A84F000007",
      INITP_04 => X"180B09772B239B63B03085124030007F0C0D0678447102CFDE54CAA3083C007F",
      INITP_05 => X"60246B35FBC7263A16EA215E03F400FE301615493667BCC9630A02AF01FC00FF",
      INITP_06 => X"F18470E03C1E1F429032000000000000E04F998D9CDA14850AA047FE07FC01FC",
      INITP_07 => X"F00C193313B3610CA0192C0030011F00FF03CE633C8246CE946C1490000007C0",
      INITP_08 => X"DFA7B9D3719F2C9E34609C007001F801C713961482289CF1F3720C00F801FE00",
      INITP_09 => X"1F5F19C8DC067AB58CB05C01FC07F8039F1FA9D9C20DF770AC609C01F807F803",
      INITP_0A => X"00C0DFD5ACA81472CE404000000FE0033E4E582D623F8E92EDE048003007F003",
      INITP_0B => X"7C7183C02CB41B7142F02048003E00F807FE02322D5D51C4D6602010001F8012",
      INITP_0C => X"486FE9E6BBD1470292702ABF01FE02FE6067DE01229741E700A1504E003E00FC",
      INITP_0D => X"E46FCB168D8AFADBA96F548FE070033F4C6FCBF54826BF04C05E015B80FC017F",
      INITP_0E => X"FCF9CCED769C392E71C39547F810204FF0F7CD369639CB1804A32A0DF030004F",
      INITP_0F => X"81B903CC2815693064C30551BE0620038FFE0769C919896067E50AA3FC183007",
      INIT_00 => X"DD18F20DFD0400FC0000FAFDFAFE010403040200000000010100000000000102",
      INIT_01 => X"59698D513D4F14C343118BC0D260CD84271886DDCCBAA8E39A1F395EB045C22B",
      INIT_02 => X"3D17E81A9FE5B39C7EB1CD2A2365CA8C4158621F0AE656B9341E399C465AFFDA",
      INIT_03 => X"0F59F4A03897AA8B8DC67A9EA3958DA5192EB982448F6336924E8710F43D6F1F",
      INIT_04 => X"13F5070103FFFD01FFFCFFFAFF0203010402FFFFFF010000FF01000002010303",
      INIT_05 => X"D3E55056F7C82176568C66D749FD3C73038A8E8F984FBF0B557F55B93BCE22E2",
      INIT_06 => X"0D1052D5A53F183EB28DA3F243F1CC7004999221579CE69C0CB88BC7841ECF40",
      INIT_07 => X"5CC657D3366B5B577A4D9DCE021955D1B0E1600B39ED7BB9A90FB1A545B168CB",
      INIT_08 => X"F807000102FCFF00FCFDFBFD010403030300FE00010100000001010002010000",
      INIT_09 => X"38D88DFDF5FA5AF92FD376CD432BA4ED314CA936680C87DAD54AC530D81BEC0E",
      INIT_0A => X"2886C45BCF179B11AEA849CFD1BE491CD32C780424C7CDE2B0D4C5994963D9F5",
      INIT_0B => X"AC19950A3428204032C321427BEF8034165DE5F753A0C7B44A24807C3A2EACFE",
      INIT_0C => X"03010101FD00FFFDFDFCFE010202020100FFFF00000000000000000102000001",
      INIT_0D => X"2434D6387E7B3230354A58E0286C4D3DEC16829F9C35B4FC3FD223E016EE0AFC",
      INIT_0E => X"79D1465A808451AA35D9E8FFACA460473796BE880F2B67343DC151769E486EE8",
      INIT_0F => X"0A90E71806F2130AB42895E348D9957EA61CE1042311D5545EED2E39AAAF1D2B",
      INIT_10 => X"000003FDFE00FDFCFDFF00020303010101FFFF00010000000000010000010101",
      INIT_11 => X"DD4D077FAD0FD3ECA7C4ADC70B843D8D4EE189379947F735DD1CE614F209FE03",
      INIT_12 => X"07FEF0370C3FC8D9E2CB972315D38792ADDAEDD94D9602B8BC224B6D52CDABCE",
      INIT_13 => X"64D0F9ECF313F3901C99048314D7DD196F10F8D7A95DC0AD4497BB75FCB8F6B1",
      INIT_14 => X"0101FE0000FEFFFDFF010201020200FF000101010101010202020101000000FF",
      INIT_15 => X"74716B907E3AEA1E2EDDD6839A69C37C810206849FD031E817E912F408FF0402",
      INIT_16 => X"E7ADCBCBE4E0833816F885289E77210F6EB767824B15A0BFF83B26EA78EEC519",
      INIT_17 => X"8CC2D8F41AF3810386FA762B162560CA5E1BEB9C125B56DF1A501B8064234CE3",
      INIT_18 => X"00FF0000FEFFFEFF010200010000000000010001020001020101000000FFFFFE",
      INIT_19 => X"49727A5F45F49C887A1AFBA0B0D566583EE4C6DA9329F312EB0FF607FE030101",
      INIT_1A => X"4E95505CB875A0B4237D7041CBE00AAECC77FD603C52351528C9D920CCD821F8",
      INIT_1B => X"A7C4E407E979EE5CCD642E325494EF825531DF31451497F218AF090DD2F0C227",
      INIT_1C => X"FF0000FFFFFE000001000000FFFF000000010001020201010100FFFFFFFFFEFE",
      INIT_1D => X"54881627B1D30E70656ECAEDD84A3158DF2802641AFB0FEF0DF608FD03010200",
      INIT_1E => X"CDAEAC587CBE683F07B27D3D9695F141CF0A67A016B64F7D6EBF240CA2C80C68",
      INIT_1F => X"C1E107D153CB3EA53F223469AC029B7D67FD67974AA3DBEB67E7EE7771299A06",
      INIT_20 => X"01000000FF0000000000FFFEFFFF0000010102020202020200FFFEFFFEFDFDFC",
      INIT_21 => X"C3E60F378D9192ADF0172FD140FE67D68E343817FC0DF30BF606FE020002FFFF",
      INIT_22 => X"3F77AA194B442BAA158FB2CB6F4D0AB65315BD8436B71818D543750BC1A46266",
      INIT_23 => X"F4F5B73BB3239933060E49A50BAF966D0F81BB92052AEF64FAF95837C1C93937",
      INIT_24 => X"00FF0000010202010000FFFF00000101010203020203010000FFFFFEFEFEFEFE",
      INIT_25 => X"5A2B803C085CD9CC7A73F23EA1A0BBB39B17120408FB0AFB050004FE0200FF01",
      INIT_26 => X"AB29D75BABCA5C2BE29AF02F2430CEDE4F107029C2F2201A484D8FE824C98877",
      INIT_27 => X"F4A3229C189C4616011663F6C19252FE8CC0A12E6854D464428B45AC7D7D362A",
      INIT_28 => X"00000101010100FFFFFEFEFFFFFF00000101020202020000FFFEFCFCFCFCFEFF",
      INIT_29 => X"1EDB4EA863CE16F1B7623EFF1E789041090B09010104FC02FE02FF01FEFFFFFF",
      INIT_2A => X"FCB76B40ECB5DE433E8177DB508BC8A9E5CBB5BE41659F52AF5921B2328097F2",
      INIT_2B => X"A21F9F1DA6592E0E1657D087642DC655B3910C6F9A52110328BF008C3893155E",
      INIT_2C => X"010101020101FFFFFFFEFEFF00FF00010102020202010101FFFEFEFDFDFEFF00",
      INIT_2D => X"862A1D9390E767FF492A0F02EB283408040EFD04040001FF01FF00FFFFFFFF00",
      INIT_2E => X"10B4F9F9240B3B86259AEF0696EF54DBF7EF3E95CF009F6D49D7ACEA6876A0EB",
      INIT_2F => X"38BF45D7844C1C2770E07418D171015241DD43929CABD41DC0BF09907E6451C0",
      INIT_30 => X"0101010000FFFEFEFFFFFEFFFFFF000101010201000000FEFDFDFDFDFEFF0001",
      INIT_31 => X"4CCE5EC037CE77C2D6D652E99984030413F9030304FEFFFFFFFFFFFFFEFEFF00",
      INIT_32 => X"F42C46AA1B0E376F401AA232F892CE5FC48319743FCD91BD644AC34C25BF661C",
      INIT_33 => X"DE852BDE9E5C508BFB8801800280C7AD6CFD5296038605D0E90751F573D9BB99",
      INIT_34 => X"0404040303020202020302030303030404040404040302020101010202020304",
      INIT_35 => X"716897B96236FF3379F74D153002FE1806020509020401040203030201020304",
      INIT_36 => X"8D68C56DBF84AD5894BA243F4FCCC4B3BD43163E306CC14DFEFA4A2B2090BFC1",
      INIT_37 => X"996C451AE7C2DA32A2075FB8FD17FCBE73F55D07E6C5CCF2288BEF011A83A683",
      INIT_38 => X"020100000000000001000101000101010100000000FFFFFFFFFF000102010101",
      INIT_39 => X"AC1702E560EE3C479D03C612FDFE0C09030209FD04FF0101FF0000FF00010102",
      INIT_3A => X"BD0AABD0D8A904F2F94E3B81A9E369EF3798DFC95E3101CA0DF0D34FB77D569C",
      INIT_3B => X"696979786B78A5F32E5B8C9D8D4AF99F4408DCDD1178D826A70D05DCD98DEC66",
      INIT_3C => X"0000FFFF0000000100000100000000FF000000FFFFFFFFFF0001010101010000",
      INIT_3D => X"EA034FF21AE48A0E49DA06F9FF0E0BFC060AFC02FFFF00000000000001020101",
      INIT_3E => X"C23908E20BACC99F5469046333EECA9AB6ABB8B2B56CC96A4C408983019E2A6E",
      INIT_3F => X"5E86B5EB27678894998F6E28C85EE97F526BAD14AE44DB93070FF09FF52B42EB",
      INIT_40 => X"FFFFFFFFFF00010101010101010000FFFFFFFFFEFDFEFF000102020302020100",
      INIT_41 => X"CAA31A1E2B9083847AF9EFF60E15FE0308010100FFFF00010200000101010000",
      INIT_42 => X"8FBE375AFA17F272E57678E6D5C2E4F5A0392F80F71B4636371F7B980F22CE06",
      INIT_43 => X"61B41176E63C4A22D8840B7DE857F7C7DE15AF95602BF197DFF59ECFDF9E19A2",
      INIT_44 => X"00FFFFFF0001010101020101010000FFFFFEFEFEFF00000202030302020100FF",
      INIT_45 => X"D0C9707FD6C682F125ECE60612070909FD0302FFFEFE00000101010202010000",
      INIT_46 => X"947725713A0DB884E71A94C810BDA5F741B97AF53C1066EFA17529D7E046C770",
      INIT_47 => X"6AEE7F0781C3B97E044B81BC0B956E77B03604FD1312A3178065C5E286B532F4",
      INIT_48 => X"FFFFFFFFFF0000010101020000FFFFFDFCFDFEFDFE000101020302020100FFFE",
      INIT_49 => X"A73CB2F92374501C66ECF409020B0F03FE0202FEFEFE000001010001010000FF",
      INIT_4A => X"D010B8EB3FC6B707DE474D638C9B423C8E5E719C75D5AA40D09D928255F13150",
      INIT_4B => X"A83BCB62D6FDD67DF517FBF8815B4661D09680A49B52EB5F975BBF73D150D648",
      INIT_4C => X"FFFFFFFFFFFF01010102010000FFFEFDFDFDFDFEFF000102030202020000FFFE",
      INIT_4D => X"C39B126EA5136FDAB823FAFA0B0A0B0500FE01FEFEFE000101010100000000FF",
      INIT_4E => X"C625C05439C92FE645CD3B211086B9458F7AB9921D5E12C5579038367D8C20F5",
      INIT_4F => X"0589F56DC1DAAD3F97B2B3CF645F81B01CFE222EDD53B2105B181FB7743093FA",
      INIT_50 => X"0000FFFF000101010201010100FFFEFEFEFDFFFF00010202020201010100FFFE",
      INIT_51 => X"33D25107B5DA9C575852FC050A0B060802FF0000FF0101020102010000000000",
      INIT_52 => X"2F99BBAC829A280651130DDC65D6D6C09E0D7B8105C96A7A8BF324F54789F358",
      INIT_53 => X"2EA90845605C33C71349AB39D1B1EF4BB5777456F02D3A649E41575125F4AD55",
      INIT_54 => X"010001010001010101010000FFFFFEFEFEFEFF0001010101010100010000FFFF",
      INIT_55 => X"15E691D15A450FA9798AE1010C0B060209FE0000010101010100000000000000",
      INIT_56 => X"26E75A5DEBF21E25AF6AE4D93BBC72B926D6A92EABD4774A9270FBB9BFC6C734",
      INIT_57 => X"337FCFFCE5AF67009B34D7A39197ACFB76EE852694B1CFBC5606B0E9DCF5FCF0",
      INIT_58 => X"0101010100000101000100FFFFFFFEFEFF00000101010101000000FF0000FF00",
      INIT_59 => X"BCE36D6C2E770724FDC27F830A0B06010901FD0201010102000000FF00000000",
      INIT_5A => X"BDCE2F42C92B6EBB2D8EB8ACD2AF6440995EAB2D43FC440C516B900F2FFFDA2A",
      INIT_5B => X"1035585D54FF8E4633352C394578D2151B348BBCD9FD0AD671189741E82B4FC6",
      INIT_5C => X"01010201010101000000FFFEFFFEFF000001010101020100FFFFFFFEFF000000",
      INIT_5D => X"ACA5D255AF16BB6B1BD7102C3C1404080305FD040201010200FF0100FF000001",
      INIT_5E => X"65C56E7358F3867FC9FDB7CB81EB7C26E8098E3DBC8154AB2D8E3194455BBA23",
      INIT_5F => X"15D0ADA3843BF2D6EC2883D90542B0101BBC48283717E4CEB94FE5BE9049010C",
      INIT_60 => X"01020201010101000000FFFFFFFFFF000001020101010100FFFEFEFEFFFF0001",
      INIT_61 => X"BB9B5A3FAA021E0258344321A2191CFF0AFD05FF0601020101FF0000FFFFFF00",
      INIT_62 => X"0DCEA5488B8AEDDFC25386064BA7BDAF8B374872B42899481BD8AB9358A37B0E",
      INIT_63 => X"37A821CEA88E7D8CCB46CE3DA40F628B9561BED93F200ACE9E898E856C59AB65",
      INIT_64 => X"00010102010100FFFEFEFFFFFEFFFF00000101010000FF00FEFEFDFDFDFEFF00",
      INIT_65 => X"11C24E9320C2676D0BE99A15DB0B12130007FE04FE06FE01FF00FEFEFFFFFFFF",
      INIT_66 => X"66B16784599433A3D6BF487A8486A305C7F246D2872A0893754109244E939B5C",
      INIT_67 => X"34AAF63FF704386AC14AEEA8297AC4ECB86E0E3B274D02EFC8CAF02580009F51",
      INIT_68 => X"FF00010202010100FFFEFFFFFFFF000000010101010100FF00FFFEFDFDFFFFFF",
      INIT_69 => X"9728E91EEF1CE3FAE3C01B6F2F437F150B060400020203FF03FF00FEFF00FFFF",
      INIT_6A => X"B96D327C8231C7B5476A1C20398D06D2869215BD82D321F315FDDF645E57DBC0",
      INIT_6B => X"25A5F636C3C0187AC533DFB56ACDE7DAD087EA3B799EA108163952B9816D98C7",
      INIT_6C => X"FFFFFF000102010000FFFFFF00000000000100000101FFFF0000FFFEFEFEFEFF",
      INIT_6D => X"B6E5B5F9B86B4123B349112BD255510E20FF0CFD01FF0302FF010000FDFFFFFF",
      INIT_6E => X"C45C86111BFD38F4FF4EB91A377738EE6C762D0310437B53D238DCFB346715A6",
      INIT_6F => X"FC881A9C16E31E8EEC34AD5D1AAEF9EBA846D75CA5C0D93BD39DD68E82A1038F",
      INIT_70 => X"FFFFFEFF000101010100FFFF00000100000000010100000100FF0000FEFEFEFF",
      INIT_71 => X"7ED6672EDD4D1996626EB3173AA75D35BB29F80EF805FE0400010100FFFF00FF",
      INIT_72 => X"C4907ACDE51D501D85DEF4E7F4942D53D716F82361E7F97107DFB6E4816B72E1",
      INIT_73 => X"DB904815CF7C559B0F567BD6802CA3BD822CC84CD0334F59C5E73A8957B52272",
      INIT_74 => X"FFFEFEFDFE000101020100FE000000000000FF010100000001FF0001FFFEFDFE",
      INIT_75 => X"D0BDD988B0F9C6AC1AB8431ED450BF4003812AEF11F409FA05FF020100FEFFFF",
      INIT_76 => X"E8ACBE365D1074041F9D53E9214582F97A9AAB688133A2EDA15F4DAC3A24BB43",
      INIT_77 => X"DCD0A9806539F7D900406D89D05DF6372C0EDA69E678E1165E004B2F1AC397C8",
      INIT_78 => X"FFFEFEFEFDFF0102020201FFFF0000000000FFFF000100000000010101FFFEFD",
      INIT_79 => X"150B165F9DA308FC58D7FF35823E8D1FF9C45428ED15F209F807FE040000FEFE",
      INIT_7A => X"14B18C648CCD211AADBB228637DB23D7B5D2B1A5FB58E4D4FE3626077FAAE8FD",
      INIT_7B => X"F7223027FCC08C45152446505A97EE51CBFAC0742AC0711560C1A942171CF51C",
      INIT_7C => X"FE00FFFEFEFEFF010203030201FFFF000100FF0000010101010101000101FFFE",
      INIT_7D => X"3EB5995B84EEBAFA1A2C9C3A49BC7B0BA8797E3627F014F10AF608FD040102FE",
      INIT_7E => X"9A1EFCCA3AD5918C68A4AFAB7CC291399AF4737109536225CF48E9C7D4641BE4",
      INIT_7F => X"F2519EBCB07D2BAF31FA1D4C09B4E0771681B7AA7A38F8E0B5216B6108AF1067",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => ram_douta(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => ram_douta(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0F432FF73CF4752C9D30E1557701CC009CC0C033936170A56B31A2A8FF020400",
      INITP_01 => X"3FAFF3D06FB38CDC668FE85559E0E2001FAFC81C141B718DA85908AAB3C1C600",
      INITP_02 => X"DFE7F32854CC3F34A9EA37D557783000BFD7EE6ED8B3F6E1B8C2C42AACF0F101",
      INITP_03 => X"13D5BA722505C939F0FB98D555DC06206FF3F4F62A02CBD0F6F2626AAB7C3E60",
      INITP_04 => X"06FEBD2FB8883ECE441333A6557F03300DCE7F597302BAAEE2B2FBAAAAFE0F60",
      INITP_05 => X"01B02F5C1E3681195E116AC0AB5F8176037150A4BC4C1B49FA73D1115ABF81FB",
      INITP_06 => X"803827DAC86187C801764879AAAEE03B805913A6A71F4BD364C88987555F407C",
      INITP_07 => X"920817C8E5B0003C95EDEB499557D41F502819C6F43CA5B0F7084605AB46D81D",
      INITP_08 => X"4994FBE6C0E3B435AFD425A78AABCE0DAB1414EB5C6F02A8CBF3FE1355ABCC1B",
      INITP_09 => X"5D8CF66392122E522F0622853955CD174D84FB644EDD876D627153E31AA1CD07",
      INITP_0A => X"7E8A0418ABE8023259E3F303AD55DD937D88E4538D2DF1C0A30265188555DD13",
      INITP_0B => X"EE32382CA57167BFEC8107126D55C5037EB2000CA0E6800620C62FDE8955E706",
      INITP_0C => X"3C5069E0E642558BE77528F28555D60FBE7038ECA760E43C853270EBAD55D70F",
      INITP_0D => X"0C9C4E8108A0AFFAB6D4B16E0AD59E0E3C9C6BA14330EC7DEC00F7461555DE0F",
      INITP_0E => X"1978FF02C91167628A952934EAABBA0E69A0500609960B85638E0B8C6AA7DC1D",
      INITP_0F => X"3F81E27DAD3871E57DDEC8D8D5567038FBE0F11917F1D296F757F80F954A7C3D",
      INIT_00 => X"FDFEFFFFFEFEFDFF010303040200FF000000000000FF01020201010201000000",
      INIT_01 => X"E72F816F34886FD3DC2D1D757376CA9ED925C14C2529EF14F00AF609FD060101",
      INIT_02 => X"1FB3CE7B40C328DB52EEF742ED928E4F386B6B7419981542C918417592C570A6",
      INIT_03 => X"E61E9C1E562CD353B912BAC9C66C1B510BE699D8D1D1BFB4B689F00A5D8F3876",
      INIT_04 => X"01FDFEFF00FEFEFE00010304030100FFFFFF0100FFFF00010203030201010100",
      INIT_05 => X"1EF816732EE4AE18E49C645F0B8AB994D20096D5281D27EF12F008F309FC05FF",
      INIT_06 => X"0F0D8B944880427E2E73575D52E602956D043A46CA5209F693730B33019BF530",
      INIT_07 => X"2F4A81F5678F73116AA9D62F0F18D8AA03CFDBDD5F809ECBBCA929DE8FB87DA9",
      INIT_08 => X"FE01FCFE0000FEFDFEFF0103040200FFFEFD000200FEFF010101030301000001",
      INIT_09 => X"D9FF1FB64E108ED5D4BF4704B840BD01234B73B3B82E1924ED12EF08F30AFC04",
      INIT_0A => X"4F80EB6A13E4C8957B190BA329023D37672808C74829BBEEF584E03026BAD9C7",
      INIT_0B => X"3E96DF1845708B861B4E4E39989CB06741B3C4328363C8D08C4205296768230F",
      INIT_0C => X"04FF02FCFE0000FDFDFDFF0105040200FFFEFE000200FF000202020201010001",
      INIT_0D => X"62CC35D7CC8B3DF338B5360680F7B3033A7F1F528461561422EA12F009F20BFC",
      INIT_0E => X"7227F698C087AFC5544C82B6CED4A712855464ABF039E27DE5B554AE87CD660F",
      INIT_0F => X"37C01B4C688086865EBAC2BFD64B4D692C11B127E57B75BC89006AE3A2600E90",
      INIT_10 => X"FB04FE01FCFE0000FDFCFCFF01030402FFFEFDFE000200FE00010101020201FF",
      INIT_11 => X"53F5F761F4AB5C5629F8A53610FFBF57806B966B9FD4E3A50825E515ED09F10B",
      INIT_12 => X"96CBB7FA467417D35003D3D4CCA2FBAC925BA7B706C6C54A024288E8DD07139A",
      INIT_13 => X"9E8C428C7E5973ABB12329263D791D42513D6C2D8F5929304FEA486C377117D2",
      INIT_14 => X"0CFB07FF00FCFFFF00FEFDFBFE0203030300FEFE000000000100000203010102",
      INIT_15 => X"38A7400A7E647FAE47415EC280D89F973453434EA54A7F6901F32CDE1AE70DEF",
      INIT_16 => X"2C5B14443B40E8D32C75621C770B119DE3D33369258D85A47E7CB92309DD1C7F",
      INIT_17 => X"08E3B6458A887C7F8A790610C7D345204B716AA7AB3AE16F818DD0DDD18B9D33",
      INIT_18 => X"EB10F907FD02FCFE00FFFDFDFCFF00030301FFFEFEFEFF0100FEFF0101010101",
      INIT_19 => X"501DBC052D72F67D65B49CE3742C10DC42F3372C2122A4AD442FDC31D81FE211",
      INIT_1A => X"506FB95B739094CEB4F9FB57D364201F70430A6443EE3D504CBBA4912A63DC8D",
      INIT_1B => X"A821DD9612677F7C74827D0B20D2C61903456D8A0642DC5E7AFCF5777F37F872",
      INIT_1C => X"12E912F509FD03FCFFFF00FDFEFE01010303020000FEFE000100FF0000020304",
      INIT_1D => X"22300CC195B98CCB3B079E2544AB2F6367CE4A65DC38F6ADCDA0FFD22CDA1FDF",
      INIT_1E => X"C0BE1147AE7B6D548E5B709A9C84DF6EFE6C1E8C9F55E14DF7A719EE99DE5F18",
      INIT_1F => X"A0A6F6944EE22B3B6ECE09C2FEE0B5F353FC34ACDF2E3ED13455B058D8333722",
      INIT_20 => X"E610EB12F50BFC03FBFFFEFEFDFDFD0102030302FFFFFDFF00FEFF0000000203",
      INIT_21 => X"434BC7ABCC63463A8C9DFB79C81B1D9C46F6835867FC03B4922F5033DD16E812",
      INIT_22 => X"9F2938B6D0B934E9BF7761106CD75EAFD6B973EA2948D02244AF960EA94A8406",
      INIT_23 => X"997A70BD46EA942884C1021DD220D79E1EE1995C5456F22F8DB8CB605FFF406D",
      INIT_24 => X"00F608F210F70AFC04FAFFFFFEFEFEFD010305040301FFFE0000FFFF01010103",
      INIT_25 => X"09F46824D198E2DA67E48293CDA5E55878CECCD00442BB30CBC422ABCEFBF302",
      INIT_26 => X"F2ED758BDFBF96F09E8B7F58D55687DCA7612988E95333867CE000DA132014C0",
      INIT_27 => X"833E2D449B24C68543B6EBF3E1C3868F4B71C34A332AEE63C222397B54B49904",
      INIT_28 => X"1DE808FAFB09F907FD02F8FFFEFBFEFEFC000403020300FDFDFFFEFDFE01FFFE",
      INIT_29 => X"206C0A72D16D434A10A1A0A42E08CE1E5A2AD796F31CA741F0569158BAEE26CB",
      INIT_2A => X"AF823D5B5B928785D589D7B7D27F77364DBFB409BE71B6B7FA2F58ACE79F4B38",
      INIT_2B => X"60383F2B1E6E19F6B41E34A14A945FD4B8A2CAA09C6CA6B6385A8EF99FC75447",
      INIT_2C => X"A23DD21CE807FEFE02FF01F8FDFEFEFDFC020201040500FF01FDFBFE01FEFD00",
      INIT_2D => X"9548A39C0F6E8FAC9B8DEFB1DDC3E07363C9F31EF09F770C8B52A8B21E84F068",
      INIT_2E => X"C606A537270A446765D79C13D6B46643E250D351ED8FF7D306E95959827628E7",
      INIT_2F => X"AC4A25293152A004854811952AB0E5B20CD2BAA326F8C2F25A3A577F48465BCE",
      INIT_30 => X"8F8954BE30D719F009FE04FBFCFDFCFD01FD00020403050301FDFEFFFDFD0000",
      INIT_31 => X"230F7944FFEAE2837B7F761EFEFD247044A5A10AE4A372F5D44F79054F2F5B84",
      INIT_32 => X"50FDA922E5240D0E33149ED6C7037E6D33C99AD4ACF65F3CE3DC1111CAAA2D59",
      INIT_33 => X"10422461996D1913A9ACC67BEC7AED0CDC1BAA660D74756586085CE32FF0C4E4",
      INIT_34 => X"7C3FBF35D129D420E710F909F6FCFC01FDFFFE03000405040001FFFBFC00FFFD",
      INIT_35 => X"96E4A53F3E95D3C9537328C54A2040D8599560E5B9478FD1FADBC0E30AD1A09C",
      INIT_36 => X"49648FE39EA9FDE6D8BCA9C79982E42FB9B62DE18F081CD435C1FD78CF4A0380",
      INIT_37 => X"C3D4615D72602B2357E8E821E760C2E5E3C2E34DD031AA2874B0459B45FC088B",
      INIT_38 => X"F78E7C4ECC20F1FC09F6060107F0FB00FDFD00FEFF010305040101FDF7FE06FF",
      INIT_39 => X"E0DF2748D32F7C7F6643FC0CB0AD28C9A220D4A9BAF20F9760CE1FC549867B71",
      INIT_3A => X"3A7116E117274793303A76C372A2EC593BC7C1B3E4BE93ADCC5166F4410C041C",
      INIT_3B => X"C29E6FEE13A4D76B10585594B53A81B2C2BC5F279F2B6E3740B003D129CAE52A",
      INIT_3C => X"A3DDD34E879950B82ADE14FB08F7FDF9FFFF01FA03FF0204050000FFFCFEFBFC",
      INIT_3D => X"FDF718F75C1F6F1A6AA27E879B2DEABCBF370821A3CD5B1B94188FF760A05D6A",
      INIT_3E => X"03C995A8E14FBAA79EFD925A7E9C959A1181868DE987DA9E50D1060FFB3384A1",
      INIT_3F => X"421991D925BA14B8302FEB12490E43748C8155AC5B1388D0067C02939BE677D5",
      INIT_40 => X"85BC75804AD912FDEF11EF14FB08F3FFFBFD0302F9FD0303030904FDFB02FFFB",
      INIT_41 => X"3A0208F7C8740D8ADAF543FE3466C081E32FD17C920D29413700E0C93A4A0732",
      INIT_42 => X"08E14B7ACA9DB136CEFD77EBD3CAF01840F9BE1DCEE7D22A2A5B19366A844281",
      INIT_43 => X"0EA25E22DF7613219748A6B4E2CE273C37271DEFFEB067B74B31ED7A45679A66",
      INIT_44 => X"0D3DA6D949938D5BAB35D71CF80BF4FEF9FD0004F9FFFE0302060300FBFE01FA",
      INIT_45 => X"DE2A47B718C0EB793644700C9960FE0C89A8BDB38ACF3F3F6989F9DC50316FFE",
      INIT_46 => X"0E89A353C964BB6A6502B92DC7F062321295272CF10686B8441E136EF38D452B",
      INIT_47 => X"F24B115F9718ED6312848A5389900B18FDDCD9EE82510F67B619C967ECE00582",
      INIT_48 => X"BBB6642409AC914EC612F6000B0101F5FCFE0003FBFE00FF0407050101FCFEFD",
      INIT_49 => X"BF51F195AD940CE2D56217641260B8EC89F02149B1D441635B6BFE48775E4136",
      INIT_4A => X"5423C9FDB0663087C19F32A98B92C02FA09C6F59D9642367239FFEA3FB5A19B0",
      INIT_4B => X"E26385BF89AFA37774D07DEE20681C05CFAEB9E5D9E089E515278E4498527900",
      INIT_4C => X"2283F2FFBD190BED15CF22DC1DF30BF1FDFA0300FAFC05FA030603FD05FDF9FC",
      INIT_4D => X"3FE729DECD6F6020984F650D599ADEF21ED3F79163EE7399354B8E6FCB33E4B8",
      INIT_4E => X"DBBBE6908650F8CD091D97309341859D0DC2A50951A3A3958F3394A03081741E",
      INIT_4F => X"9952E4369D5D4C62ACFA719CB8302B1CBAA5C9FF1744D64A692A3A0A48CAEEA3",
      INIT_50 => X"388863CE9975809C56A43BD220F212F3F9FB07FEFCFA06FA020907FE0402F5F9",
      INIT_51 => X"2CB21A1D7833686CE9EA0341D4A3A08B7D49B5108CC5847D12FBF6415D1689CB",
      INIT_52 => X"9A81F0035638AB3B7B8301DFA130436DB717124507CD0983DB56BFB22F8A3D89",
      INIT_53 => X"8D512A8EC92D11349FFD576959DD1454FFC6F431499B148E9413D7AD0B526C41",
      INIT_54 => X"6BA3666C1817BD756E983CD519F40FF7F6FA07FEFCF906FBFF0907FE0304F4F5",
      INIT_55 => X"4FBAE8B4E4712BB5A386A8DDE1AAB240C53F05B9BBBE8816E9B2E9ABA0AAA32E",
      INIT_56 => X"6B780743EB1B66A90B0030CF1D17E03CD5B6C3CB15007B96D74C64705531BF4F",
      INIT_57 => X"BF7B58C3E528E7FD6BD92C280187F78B5D1E2D7185E954A58DD27340CF03F6DA",
      INIT_58 => X"5D10AF9344FDCC69709F36D819FE07F6FBFDFF0006F7FBFE0301080600FAFD01",
      INIT_59 => X"E9FBDA3CD6C8CB770CE0C36D565B3CE9A24501D77D43B1B7CA2A27A81A52AD76",
      INIT_5A => X"357B3E7B3EAB2A5E816484D3C8608DDED60D02766A9D9F6E3EF880C9839E0DFF",
      INIT_5B => X"F6AD9EF9EB12D4DD3597D6CFB35CEDAC9B85A0C4DC4182966B7D03E285C0AB8A",
      INIT_5C => X"15D57DCA3A02C8716BA034DE12FB0BFAF6FC050000F901FD020808020201F7F8",
      INIT_5D => X"0CE4FC4AE759A1F37E4E6FDD69807E31A231CE7EF7782D940119162E627AD081",
      INIT_5E => X"3189659C6F0CCC210F8F8E1193BFC6AD5E2DA8247C569370EED580835A5AE72F",
      INIT_5F => X"43EEC010F613C6CDFC32738A8B41F2CDC0BB124C35759B76232FB99544786063",
      INIT_60 => X"3D5DBACF0928AA7D64A736DE18F80CF5F5FF03FD04F7F3FC06050B09FFF6FBFC",
      INIT_61 => X"CC3973C246DCBA6AA0542DFD53FB0EB9BE53AD10522AC3201B918868330CF289",
      INIT_62 => X"61C08BAB723C3CB59CB329E5B36E1BF33FE190C1835A6B6BC5B775EA5492F4C5",
      INIT_63 => X"A925B9F7F033DB9C9BDA3F53694C0DDCD0FE71BC8F8F8330D1F1A0710026236E",
      INIT_64 => X"4BE208FFA378759E4CB133DB1DF60AF2FBFF01FE01F4F80005050B06FCF7FCFD",
      INIT_65 => X"894EECF43F759D556F415EDE034F1C5D030FA6A64E6E3B510CD9F5D9DF25A2EE",
      INIT_66 => X"A725C4BA5426935FDA4D7B6F8C8FEC54603802B4EA2BBD139C0EFE8C00D45583",
      INIT_67 => X"16599699CE6C168B316CF747928532CEE139B903C58634D28EE7B955AEDA26A3",
      INIT_68 => X"89B2899F0AF020D91ECF23E21BF708F1FEFF01FFFDF6FD0105060802FDF9FBFC",
      INIT_69 => X"A6342025D4292157C1B81A1F880DEA3CF872B09D4B6B478615CD8C0D283EDF66",
      INIT_6A => X"238B29D21BD0CD0F992740D05BA32A47B86873D43976F0E17B8E0DBB01458FEB",
      INIT_6B => X"7B76341095B37081BDE3BF6F00005BC0D75CFA29B01EC96D4D0AE73C5AC37008",
      INIT_6C => X"FB8F5363865ACA1CE7FE0CF50DFE06F0FE0400FEFBF5FB040A090702FCF9F802",
      INIT_6D => X"9D7B8155B87E47E0B2D81A30E81EB332BFEAA2CE728F2CF260598FDDD6B94D34",
      INIT_6E => X"FB2B64C7E8AD09FE9571ABDA3BEF9795F36B5FACF2B60C0946D7B9B94FADB458",
      INIT_6F => X"B43F8E8C92F99249579AC7CBB39F94AFCB771C28446D2BFE162F1B4749E9E6B6",
      INIT_70 => X"F791E2B66B76A53DC51CEA1105FBFBFDFFFE00FEF7FD0202020A06FDF9FE00F5",
      INIT_71 => X"65106704A2D149FCB98FC86DB3F2C60AAC6DE3A2266F338B2A7B261CCF2EC1A7",
      INIT_72 => X"1ACB61BDD5B50CB2667D23AC0FD665D0B6B818910679234ECE9F598E24BD2EF6",
      INIT_73 => X"9CBDD619A92267E30DA71C7F831FA89AE9AB1CDD9D875650E447577B7C559CE7",
      INIT_74 => X"CBF28131DA31CB1FD320E317F807F5FBFF02FBFCFE02FF0605040100F9F8FE00",
      INIT_75 => X"4B8728939423244B05AF426D760B96FFFF00E795A614AB6CC3F13C163C739B3D",
      INIT_76 => X"3A8BA1988A68FB97D9035E5C94770B6EADEA4EC29C95704CD6998508192273FE",
      INIT_77 => X"40D4EDB8C5391A6EE50AEE9C6B6CAAAE2BC9E01878776188ABA3B399DA7F051E",
      INIT_78 => X"84FFA87169B628DD12FD030CFD01F80100FFFCF6F6FF06090905FEF9FCFE01FF",
      INIT_79 => X"64F58CDC9C09BD57C72C55D334487D2AC8AC281A933D09C23490E2E9102556FD",
      INIT_7A => X"BE4D87D9B1752B0C9658B8DDC4EAF82FD4C6AD2E9CAE7353C7153DFA8233923A",
      INIT_7B => X"6A9CEC7DF222B52C1EBA19EF3EAFB0F572A123D41E244A01BFEDF60CF709A9C3",
      INIT_7C => X"637E41CC37C228D022E318F709F6FE0101FBFFFC000106050501FEFAFC010300",
      INIT_7D => X"752E081FA0A97DFBE8F40CE0894C6FB9FE0A74D3E96AC8E2B50F3B1163C05B3C",
      INIT_7E => X"9D3CCFD79CEE7475BF2E899A723E46201ECE5DED89D4A6A5EF852DA2447F2749",
      INIT_7F => X"224F4F77FAE6724BB1D0791FE8E9D8175B00EF498FE76DC3E6509DE564E3FFD4",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => DOPADOP(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFBFFFDFFFCFFFE00000005000400050001FFFDFFFBFFFAFFFF00010001FFFF",
      INIT_01 => X"FFE200CDFF61007DFF9D003AFFCB001AFFED000B00030003FFFFFFF800000001",
      INIT_02 => X"CB3EC93EE518F1B0DF6603F73DC131DA12271E240D20E8B3D459ED6B29381AF0",
      INIT_03 => X"F28CF5D7F6FCF7EA02C9120910AD145A246E2354188B15AD09A8F0F8E10DD40E",
      INIT_04 => X"08630D5510CA119910620E9C0A1C0369FD8DFB6BF726ED57E983EECDF3BFF363",
      INIT_05 => X"07CA07A706B80587044D016EFCFEF827F4F2F355F30CF455F747F9AEFCD50279",
      INIT_06 => X"02B001D7005FFEBEFD09FB8FFAE1FB12FB8CFBDBFC24FD7BFFCE027004EC06DE",
      INIT_07 => X"FEB4FD44FD10FD9FFDCBFD98FD92FDDDFEB8002F01E803020351032502F40305",
      INIT_08 => X"FFFAFFFAFFFA00000003000500070004FFFDFFFBFFFCFFFEFFFE000100020000",
      INIT_09 => X"0051FFAA003CFFD70008FFFBFFF2000CFFF60014FFF60008FFF800000001FFFF",
      INIT_0A => X"C42DDDFAF190DBFEF6E134FE35C115181CB014C8F2A9DF74DBF0161727AD04BE",
      INIT_0B => X"F724F878F574FE330D800D0913F1264220AC161919401172F4ECE811DFE9CD10",
      INIT_0C => X"0C41114812C010D90F690BEC0480FE0EFBC0F5F7EBD3EB20F24DF4C1F1DBF19D",
      INIT_0D => X"077706720549048B0246FDE6F93EF5F5F397F296F3E0F6A7F8CFFBF2016806B2",
      INIT_0E => X"01B90064FEBCFCEBFB8BFAEAFB27FBB2FC2AFCB7FDCCFFE6022B043D05FC073C",
      INIT_0F => X"FD66FCC6FD36FD9DFD96FDAFFE25FED2000A01A80303038B036F031802CD0275",
      INIT_10 => X"FFFCFFF8FFFE00010006000400040000FFFCFFFBFFFD00000001000100010001",
      INIT_11 => X"0044FFC90035FFBE0031FFCE0024FFE3001AFFF6000AFFF9FFFD00010001FFFA",
      INIT_12 => X"D6D8F5A6DA27E71E2C9A386016D41B2B1B1FF761EC10D988FCE92BC10DFFFF9F",
      INIT_13 => X"F9A2F610F97A07500DD91418246321EF13C016491850FB2AE853EA6AD6A9BFDC",
      INIT_14 => X"106813E1118B0E9B0C4506FB00D4FBC0F368EBB0EE98F4CDF47DF135F09EF5DE",
      INIT_15 => X"066805910469026CFEB8FA45F69CF45FF2E6F36AF60EF86DFB3E0071058B0A78",
      INIT_16 => X"0065FEB7FCFAFB84FACDFAFCFBC6FCB0FD5DFDFDFFB201E9040C0588068206C7",
      INIT_17 => X"FCB6FCDDFD64FD91FDD1FE41FEDBFFFD018102E80398039D031302B0027B01BE",
      INIT_18 => X"FFF7FFFB0001000A0003FFFF00040000FFFAFFFB000200040000000000010002",
      INIT_19 => X"FF70007FFF8E0048FFC70026FFE30010FFFF0006FFFDFFFA00010001FFFAFFFF",
      INIT_1A => X"F8B9DFFAD9592070398018FA17CB20FCFA81F256E40DE7D8249118DB000100B3",
      INIT_1B => X"F5D7F68902640EA514B2221D2297131B13BA1ABD011DE75FEFB8E204C0B6CEFD",
      INIT_1C => X"13A512470DAA0B4F09080406FB03F1B9EE32F223F630F3EAF0D2F074F4D1F90F",
      INIT_1D => X"05B80423022CFF41FB2EF73DF4E5F3D7F39DF58EF84CFABCFF7B04F0092F0E91",
      INIT_1E => X"FEEBFD2AFB9FFAC5FAF0FBD8FCDFFDB6FE28FF7E01A103D00558061906570648",
      INIT_1F => X"FCD5FD4DFD8DFDD3FE58FEF7FFE5013C02B10387039803170297025601BB0088",
      INIT_20 => X"FFF9FFFE00070007000000040002FFFAFFFD0000000100000001FFFF00010002",
      INIT_21 => X"0084FF9A0034FFDF0014FFF600040009FFFC0006FFFAFFFC0003FFFCFFFBFFF8",
      INIT_22 => X"E9A1D09814AF388419C1146D2443FF7BF179F195DEAF15B82122023400B3FF5F",
      INIT_23 => X"F13C017A110311401E8625F913B20F4F1C120872E51CEF3FED97C48DC76CFA40",
      INIT_24 => X"11AD0D0A0AFE0A1804C8FA08F280F270F549F5A8F41DF242EFC0F28EFA0EF5A7",
      INIT_25 => X"03CB01F1FF97FBCCF7D4F584F48CF425F5C0F885FA6AFE80046708A10CFC120D",
      INIT_26 => X"FD76FC1EFB53FB21FBBAFC96FD98FE56FF74015703530518060D0666063A057D",
      INIT_27 => X"FD6BFDA7FDE5FE69FF01FFCF00FE024F0341037503070274023301C20095FF00",
      INIT_28 => X"FFFF0000000200080005FFFD00000001FFFEFFFE000300020000000000020003",
      INIT_29 => X"FFD2000C0000FFF10010FFF90011FFF5000BFFFAFFFD0003FFFFFFF9FFFAFFFD",
      INIT_2A => X"CF23086337571A76101E244005E3EEB5FA7FE0570643242B05E20055FFA30046",
      INIT_2B => X"FF8E10D710191915268217460CD119160E4AE83FEAD2F3D2CC8EC255F721F4A1",
      INIT_2C => X"0C3B0B6C0A0F02CDFA8AF637F52BF63CF67EF4E4F32FF078F0B8F8BFF662F092",
      INIT_2D => X"01C2FF89FC3DF899F65EF522F49DF619F8D6FAB1FE3503B607CE0B9F102D1040",
      INIT_2E => X"FCC3FBF5FB89FBB8FC58FD57FE40FF360106032204CD05C1064C063C056803BC",
      INIT_2F => X"FDE5FE09FE8AFF0BFFB200B901EC02D1031502D2024A021C01C100A4FF1EFDDB",
      INIT_30 => X"00010005000200030002FFFEFFFE0000FFFF000000010000FFFF0002FFFEFFFE",
      INIT_31 => X"FFD90020FFE2001AFFED0017FFF40009FFFDFFFCFFFFFFFFFFF9FFFBFFF9FFFD",
      INIT_32 => X"FEA8330D1C570D7A20710B9CEE01FDC3E739FA6D22500A18FFED0000FFFC0012",
      INIT_33 => X"0D8F0F19156A244C199E0C8F16891056EC77E965F5ADD38CC1F4F1C3FBC5D428",
      INIT_34 => X"0AA5085A0203FC72F9E8F713F5D3F719F6B0F420F106F075F65EF70CF397FE3D",
      INIT_35 => X"FFA9FC94F946F73CF622F556F635F8E6FB2BFE59033C06E109DA0DE60EED0BF1",
      INIT_36 => X"FC51FBCFFBDAFC69FD25FDD7FED700CF02D5045A0560060C060A055703E701DF",
      INIT_37 => X"FE50FEA9FF0FFF9C0083017702380298028A022501E101A800EAFFB1FE70FD35",
      INIT_38 => X"000200040005FFFF00000001FFFFFFFF0001000100000000000000010000FFFF",
      INIT_39 => X"002BFFD6001EFFEE0013FFF90008FFFEFFFD00010000FFFAFFFCFFFBFFFF0000",
      INIT_3A => X"2DD41D030C801C740E07EF7FFDFFEE60F4191D960D73FFDC0045FFC50037FFC7",
      INIT_3B => X"0DC8120320FC1AC70C7F1414117EF02BE8ACF702D9E6C35AED36FF18DADBF90C",
      INIT_3C => X"06B002D8FF0BFBFFF844F63AF73EF73AF532F268F036F4D4F95CF64AFCD00B39",
      INIT_3D => X"FD3CFA29F80CF6FAF636F6E6F94AFB47FE1A02A705F1084B0BE40D910B0508D3",
      INIT_3E => X"FC0DFC06FC4CFCE7FDBBFEA50045022D03E0050D05BB05B7052603ED02190009",
      INIT_3F => X"FEC8FF2BFF8D004000F601A20215022A01C901A701C001450044FF21FDDDFCAB",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => addra(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\(15 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33\,
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7F007F007F00007F00007F7F7F7F000000000000000000000000000000000000",
      INIT_01 => X"070E0D0608087A747B7063737F717A130F060C07787E7A780B0800007F007F00",
      INIT_02 => X"7D7C7B7B7B7C7D7E000203050604030302007E7D7B7B7B7A79787A7D7C7E0406",
      INIT_03 => X"7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0001020202020101007F",
      INIT_04 => X"007F0000007F7F007F7F7F7F7F00000000007F7F7F0000007F00000000000000",
      INIT_05 => X"0C0B0607067A757A7167747E737B110D060A06797E7B790A0700007F007F007F",
      INIT_06 => X"7D7C7C7C7D7E7F000102040403020302007E7D7C7B7B7A79797B7D7C7F040507",
      INIT_07 => X"7F7F0000000000000000007F7F7F7E7E7E7E7E7F7F0001010202020101007F7D",
      INIT_08 => X"7F000000007F7F007F7F7F7F0000000000007F00000000000000000000000000",
      INIT_09 => X"0A0506057B767A726A757E757C0F0C0509067A7E7C7A080700007F007F007F00",
      INIT_0A => X"7D7C7C7D7E7F000102030302020302007E7E7C7B7B7A7A7A7C7D7D7F0405060A",
      INIT_0B => X"7F000000000000000000007F7F7E7E7E7E7E7E7F0000010102020101007F7E7D",
      INIT_0C => X"000000007F007F7F7F7F7F0000000000007F7F00000000000000000000000000",
      INIT_0D => X"0405047B777A746C767E767D0E0B0508057B7E7D7A070600007F007F007F007F",
      INIT_0E => X"7D7D7E7E7F000101020202020201007F7E7C7B7B7B7B7B7C7E7D000405060908",
      INIT_0F => X"000000000000000000007F7F7F7E7E7E7E7F7F0000010101010101007F7E7E7D",
      INIT_10 => X"0000007F7F007F7F7F7F000000000000007F7F00000000000000000000000000",
      INIT_11 => X"04037B777A756E777E777E0C0A0507047C7E7D7B060600007F007F007F007F00",
      INIT_12 => X"7E7E7E7F0001010102020202017F7F7E7C7B7B7B7B7B7D7E7E00040506080703",
      INIT_13 => X"0000000000000000007F7F7F7F7E7E7F7F7F7F00000101010100007F7E7E7D7D",
      INIT_14 => X"00007F00007F7F7F7F0000000000007F0000000000000000000000000000007F",
      INIT_15 => X"027B787A7571797E797F0B090406037C7E7E7C050500007F007F007F007F0000",
      INIT_16 => X"7E7F7F0001010102020101007F7E7E7D7C7B7B7B7C7D7E7E0004050508060303",
      INIT_17 => X"00000000000000007F7F7F7F7F7F7F7F7F0000000101010000007F7E7E7E7E7E",
      INIT_18 => X"007F00007F7F7F7F0000000000000000000000000000000000000000007F7F7F",
      INIT_19 => X"7A787A76737A7E7A000B070405027D7F7E7D050400007F007F007F007F000000",
      INIT_1A => X"7F000101010202010101007F7E7D7C7C7C7C7B7C7D7F7F010405050705020300",
      INIT_1B => X"0000000000007F7F7F7F7F7F7F7F7F7F0000000101010000007F7E7E7D7D7E7F",
      INIT_1C => X"7F00007F7F7F0000000000007F7F0000000000000000000000007F7F7F7F7F7F",
      INIT_1D => X"797A76757C7E7B020A060304017D7F7E7E050300007F007F007F007F00000000",
      INIT_1E => X"0001010202020201017F7E7E7D7C7B7C7C7C7C7D7F7F0204050507050202007A",
      INIT_1F => X"00000000007F7F7F7F7F7F7F7F7F7F00000001010100007F7F7E7D7D7D7E7E7F",
      INIT_20 => X"000000007F00000000007F7F7F7F00000000000000000000007F7F7F7F7F7F7F",
      INIT_21 => X"7A76777D7E7C0309050304007E7F7E7F040200007F007F007F007F0000007F7F",
      INIT_22 => X"0101020303020201007E7D7C7C7C7C7B7C7D7E7F0002040505060402017E7979",
      INIT_23 => X"000000007F7F7F7F7F7F7F7F7F7F00000101010101007F7F7E7D7D7D7D7E7F00",
      INIT_24 => X"007F00000000000000007F7F000000000000000000000000007F7F7F7F7F7F7F",
      INIT_25 => X"77797E7E7E05080403037F7E007E000401000000007F007F0000007F00007F00",
      INIT_26 => X"01020203020201007F7E7C7C7C7C7B7B7C7E7F0002040405060301017E79797A",
      INIT_27 => X"0000007F7F7F7F7F7F7F7F7F7F0000000101010100007F7E7E7D7D7D7E7E7F00",
      INIT_28 => X"000000000000007F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F7F",
      INIT_29 => X"7B7F7E7F06070302027F7F007E0103010000000000007F007F007F007F7F7F7F",
      INIT_2A => X"01020202020100007F7D7C7C7C7B7B7C7D7E7F02040405050201017D797A7A77",
      INIT_2B => X"00007F7F7F7F7F7F7F7F7F7F0000000101010100007F7F7E7E7D7E7E7E7F0000",
      INIT_2C => X"0000000000007F7F7F7F7F7F007F000000000000000000007F7F7F7F7F7F7F00",
      INIT_2D => X"007F0106060202017E7F007F0103000000007F000000007F007F007F7F7F7F00",
      INIT_2E => X"010101010101007F7E7D7D7D7C7B7C7D7E7F01030405040201007C797A7A787C",
      INIT_2F => X"007F7F7F7F7F7F7F7F7F7F0000000101010000007F7F7E7E7E7E7E7E7F7F0000",
      INIT_30 => X"00000000007F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7F7F7F7F0000",
      INIT_31 => X"7F0207050202007E7F007F0202000000007F0000007F7F7F7F7F7F7F7F7F7F00",
      INIT_32 => X"000101000000007F7E7E7E7D7C7D7D7E7F010202040302017F7C7A7B7A797E00",
      INIT_33 => X"7F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7F7E7E7F7F7F7F7F0000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0306040202007E000000020100007F0000000000000000000000000000000000",
      INIT_36 => X"00007F7F7F7F7F7F7F7F7F7E7E7E7E7F000102020100007F7C7A7B7A7B7F0000",
      INIT_37 => X"7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F0000000000",
      INIT_38 => X"0000000000000000000000000000000000000000007F7F7F7F7F000000000000",
      INIT_39 => X"05030201007E0000010200007F7F00000000007F007F00007F00007F00000000",
      INIT_3A => X"7F7F7E7E7E7E7F7F7F00000000000000000001007F7E7D7C7C7B7A7C7F000105",
      INIT_3B => X"7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F7F000000000000007F7F",
      INIT_3C => X"00007F7F00000000000000000000007F0000007F7F7F7F7F0000000000000000",
      INIT_3D => X"0202007F000000020200007F7F00007F00007F007F7F00000000000000000000",
      INIT_3E => X"7E7E7E7D7E7E7E7F0001010102020100007F7E7E7D7B7A7B7C7C7E0000020605",
      INIT_3F => X"7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F0000000101000000007F7E",
      INIT_40 => X"7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F7F000000000000000000",
      INIT_41 => X"01007F7F00010201007F7F7F00007F00000000007F7F00000000000000000000",
      INIT_42 => X"7D7D7D7D7D7E7E0001020203030302017F7E7D7B79797A7A7B7F010104060402",
      INIT_43 => X"7F7F0000000000000000007F7F7F7E7E7E7F7F7F0000000101010100007F7F7E",
      INIT_44 => X"007F7F7F00000000000000000000007F7F7F7F7F7F000000000000000000007F",
      INIT_45 => X"0000007F00020200007F7F00000000007F00007F7F7F00000000000000000000",
      INIT_46 => X"7D7C7C7C7D7E7F0001030404040302007F7D7A787879797A7D00030606030101",
      INIT_47 => X"7F7F00000000000000007F7F7F7E7E7E7E7F7F7F0001010101010100007F7E7D",
      INIT_48 => X"7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F0000000000000000007F7F",
      INIT_49 => X"0001000101000101007F7F00000000007F00007F7F7F0000000000000000007F",
      INIT_4A => X"7C7C7C7C7D7E7F0102040505040302007E7B787778787A7C7D00060805010000",
      INIT_4B => X"7F0000000000000000007F7E7E7E7E7E7E7F7F0000010101010101007F7F7E7D",
      INIT_4C => X"7F7F7F7F7F7F000000000000007F7F7F7F7F7F7F7F0000000000000000007F7F",
      INIT_4D => X"01010202007F000100007F7F00000000007F007F7F7F0000000000000000007F",
      INIT_4E => X"7C7C7C7C7D7E000103040505040201007D7A7877787B7C7C7E030606037E7F01",
      INIT_4F => X"0000000000000000007F7F7E7E7E7E7E7F7F000000010101010101007F7F7E7D",
      INIT_50 => X"00007F7F0000000000000000007F7F7F7F7F7F7F000000000000000000007F7F",
      INIT_51 => X"03020101007F7F0001007F0000000000007F00007F0000000000000000000000",
      INIT_52 => X"7D7C7C7D7E7F0002030404030201007E7C7B79797B7C7C7E00020403007D7F03",
      INIT_53 => X"0000000000000000007F7F7F7E7E7E7F7F7F000000010101010100007F7E7E7D",
      INIT_54 => X"0000000000000000000000007F7F7F7F7F7F7F00000000000000000000007F7F",
      INIT_55 => X"0503010000007F7F0101000000000000007F0000000000000000000000000000",
      INIT_56 => X"7D7D7D7E7E7F01020203020201007F7E7D7B7B7C7D7D7F000000007F7E7E7F03",
      INIT_57 => X"00000000000000007F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7E7E7D",
      INIT_58 => X"00000000000000000000007F7F7F7F7F7F000000000000000000007F00007F00",
      INIT_59 => X"030403000000007F7F0101000000000000007F00000000000000007F00000000",
      INIT_5A => X"7E7E7E7F7F000101020101007F7E7E7D7D7D7E7E7F0001007F7E7D7D7E7E0002",
      INIT_5B => X"00000000007F7F7F7F7F7F7F7F7F7F00000000000000000000007F7F7F7F7E7E",
      INIT_5C => X"000000000000000000007F7F7F7F7F0000000000000000007F7F7F7F7F000000",
      INIT_5D => X"01030503000000007E7F02010000000000007F0000000000007F00007F000000",
      INIT_5E => X"7F7F7F000000010100007F7E7E7D7D7D7E000000010201007F7C7B7B7D7F0000",
      INIT_5F => X"007F7F7F7F7F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F7F7F7F",
      INIT_60 => X"000000000000000000007F7F7F7F7F0000000000000000007F7F7F7F7F7F0000",
      INIT_61 => X"00010406030000017F7E00030100007F007F007F00000000007F00007F7F7F00",
      INIT_62 => X"00000001010100007F7F7E7D7D7C7C7D7F000203030302007E7C7B7B7C7D7E7F",
      INIT_63 => X"007F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F",
      INIT_64 => X"000000000000007F7F7F7F7F7F7F7F000000000000007F007F7F7F7F7F7F7F00",
      INIT_65 => X"7F00010407037F00017E7D010301000000007F007F007F007F007F7F7F7F7F7F",
      INIT_66 => X"000101010101007F7E7D7D7C7C7C7D7E7F000304040302007F7E7D7C7B7B7C7E",
      INIT_67 => X"007F7F7F7E7F7F7F7F7F7F0000000000000000007F7F7F7E7E7E7E7F7F7F7F00",
      INIT_68 => X"7F000000000000007F7F7F7F7F7F0000000000000000007F007F7F7F7F7F7F7F",
      INIT_69 => X"7D7F00010508037F00007E7D02030000000000000000007F007F007F7F007F7F",
      INIT_6A => X"010102020101007F7E7D7C7C7C7C7D7E7F01020304030201017F7E7D7B797A7C",
      INIT_6B => X"007F7F7F7E7E7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0000",
      INIT_6C => X"7F7F7F0000000000007F7F7F000000000000000000007F7F00007F7F7F7F7F7F",
      INIT_6D => X"7B7D7F00000609037F00007D7D030300007F007F007F00007F0000007F7F7F7F",
      INIT_6E => X"010202020100007E7D7D7C7C7C7D7D7E7F0001020304030302017F7D7C7A7879",
      INIT_6F => X"7F7F7F7F7F7E7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0001",
      INIT_70 => X"7F7F7F7F0000000000007F7F000000000000000000000000007F00007F7F7F7F",
      INIT_71 => X"797B7D000000070A037F00007C7E040300007F007F007F00000000007F7F007F",
      INIT_72 => X"0102020101007F7F7E7D7C7C7C7D7E7E7E7F0001010304040403017E7D7C7977",
      INIT_73 => X"7F7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7E7E7E7E7E7F7F0001",
      INIT_74 => X"7F7F7F7F7F0000000000007F0000000000007F0000000000007F00007F7F7F7F",
      INIT_75 => X"76787A7C000000070B037F017F7B7E050300007F007F007F007F0000007F7F7F",
      INIT_76 => X"0101010101007F7F7E7E7E7D7D7D7E7E7E7E7E7F00020405050403017E7D7B78",
      INIT_77 => X"7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000007F7F7F7F7E7E7E7F7F7F0000",
      INIT_78 => X"7F7F7F7F7F7F00000000007F7F00000000007F7F0000000000000000007F7F7F",
      INIT_79 => X"7775787A7C00007F080C037F017E7A7F060300007F007F007F007F0000007F7F",
      INIT_7A => X"000001010000007F7F7F7F7E7E7E7E7D7D7D7D7E7F01020406050404017E7D7B",
      INIT_7B => X"7F0000007F7F7F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7E7E7F7F000000",
      INIT_7C => X"7F007F7F7F7F7F0000000000007F7F0000007F00000000000000000000007F7F",
      INIT_7D => X"7B757478797B01007F090E047F017D7900070300007F007F007F007F0000007F",
      INIT_7E => X"00007F00000000000000007F7F7E7E7D7D7C7C7D7E0001020507050404017E7D",
      INIT_7F => X"7F0000000000007F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F0000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\,
      DOADO(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7F7F7F7F7F7F7F7F0000000000007F0000000000007F00000000000000000000",
      INIT_01 => X"7D7A747477787B01007F0A0F047F017C7801070300007F007F007F007F000000",
      INIT_02 => X"7F7F7F7F0000000001000001007F7E7D7D7C7C7C7D7E0001020607060504017D",
      INIT_03 => X"7F000000000000007F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F",
      INIT_04 => X"007F7F7F007F7F7F000000000000007F7F7F00007F7F00000000000000000000",
      INIT_05 => X"7D7D7A737376777B02007E0B11047F017B7801080300007F007F007F007F007F",
      INIT_06 => X"7F7F7E7E7F00010101010101017F7F7E7D7C7C7C7C7C7E7F0103060806050501",
      INIT_07 => X"0000000000000000007F7F7F7F7F7E7E7F7F7F00000000000000007F7F7E7E7E",
      INIT_08 => X"7F007F7F00007F7F7F7F00000000007F7F7F0000007F7F000000000000000000",
      INIT_09 => X"007D7D79727376767B02007E0C12047F017B7802080300007F007F007F007F00",
      INIT_0A => X"7E7E7E7E7F7F01020202020101017F7E7E7D7C7B7C7C7C7D7F01030708060605",
      INIT_0B => X"000000000000000000007F7F7E7E7E7E7E7E7F0000010101010101007F7E7E7E",
      INIT_0C => X"007F007F7F00007F7F7F7F00000000007F7F7F0000007F000000000000000000",
      INIT_0D => X"06007D7D78717275757B03007E0D12047F007A7802090300007F007F007F007F",
      INIT_0E => X"7D7D7D7E7E7F0001020302010101007F7E7E7D7C7B7B7B7C7D7F010307080707",
      INIT_0F => X"000000000000000000007F7F7E7E7E7E7E7E7E7F0001010101010100007F7E7D",
      INIT_10 => X"7F007F007F7F00007F7F7F7F000000007F7F7F7F0000007F000000000000007F",
      INIT_11 => X"0706007D7C77717274747B03007F0E13047F007A7802090300007F007F007F00",
      INIT_12 => X"7C7C7D7D7E7F000102030202020100007F7E7D7C7C7B7B7B7B7D7F0104080907",
      INIT_13 => X"7F000000000000000000007F7F7E7E7E7E7E7E7F7F00010202010101007F7E7D",
      INIT_14 => X"007F007F007F7F7F007F7F7F7F00000000007F7F000000000000000000000000",
      INIT_15 => X"080806017D7C76707173747B0200000F13057F7F7A780209037F007F007F007F",
      INIT_16 => X"7D7C7D7D7E7E7F000102030302020201007F7E7D7C7B7B7B7B7B7C7F02040809",
      INIT_17 => X"7F7F000000000000000000007F7E7E7E7E7E7E7E7F0000010202010100007F7E",
      INIT_18 => X"7F007F007F007F7F007F7F7F7F7F000000007F7F7F7F7F00007F7F0000000000",
      INIT_19 => X"09090806017D7A75707072747B0201020F12057F7F7B78020A037F007F007F00",
      INIT_1A => X"7E7D7C7D7D7E7E7F000102030303020201007F7E7D7C7B7B7B7A7B7C7F020508",
      INIT_1B => X"7F7F7F000000000000000000007F7E7E7E7E7E7E7F7F00010101010101007F7F",
      INIT_1C => X"007F007F007F007F7F7F007F7F7F000000000000007F7F0000007F0000000000",
      INIT_1D => X"080A0A0806017D7974706F72757A0103030E13057D7F7C78010A037F007F007F",
      INIT_1E => X"7F7E7D7D7D7D7E7E7F000102030303020101017F7D7D7C7B7B7B7A7A7C7F0205",
      INIT_1F => X"7F7F7F7F0000000000000100007F7F7E7E7E7E7E7E7F7F000101010101010000",
      INIT_20 => X"7F007F007F007F007F7F7F7F7F7F7F00000000007F7F7F7F007F7F0000000000",
      INIT_21 => X"05080B0B0806017C77746F6E7376780206030D13047C007D76020B037F007F00",
      INIT_22 => X"007F7E7D7D7D7D7D7E7F000102030303020201007F7E7C7C7B7B7A7A7A7C7F03",
      INIT_23 => X"7F7F7F7F7F7F00000000010100007F7F7F7E7E7E7E7E7E7F0000010101010100",
      INIT_24 => X"007F007F007F007F007F7F7F7F7F7F7F0000000000007F7F00007F7F00000000",
      INIT_25 => X"0405090D0B0706017A76746E6E7574760509020D14027B037D74030C027F7F00",
      INIT_26 => X"00007F7E7D7D7D7D7D7E7F000002030303030201007F7E7D7B7A7B7A797A7C00",
      INIT_27 => X"7F7F7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F00000101010101",
      INIT_28 => X"007F007F7F007F007F007F7F7F7F7F7F7F0000000000007F7F7F7F7F7F007F7F",
      INIT_29 => X"0104060A0D0A0707007775736D707671760A0A000F137E7D077B72060C01007F",
      INIT_2A => X"0101007F7E7D7D7D7D7D7E7F7F0002030303030201017F7E7D7B7A7A79797A7C",
      INIT_2B => X"7F7F7F7F7F7F7F7F0000000001010100007F7F7E7E7E7E7E7E7F7F0001010202",
      INIT_2C => X"7F007F007F007F7F007F007F7F7F7F7F7F0000000000007F007F7F7F007F7F00",
      INIT_2D => X"7D0205070C0D0808077D7575726C73756D7A10087E120F7B020975720B0B0000",
      INIT_2E => X"020201007F7E7D7D7D7D7D7E7F7F0002020303030202017F7F7D7B7979797979",
      INIT_2F => X"7F7F7F7F7F7F7F7F7F0000000101010101007F7F7E7D7D7D7E7E7F7F00010202",
      INIT_30 => X"007F007F007F007F007F007F7F7F7F7F007F000000000000007F7F7F7F7F0000",
      INIT_31 => X"7A7E0306090D0C080905797475706E76706B0415017F15097A0A076E760F087F",
      INIT_32 => X"02020101007F7E7D7D7D7D7D7E7F7F0002020303020202017F7E7D7A79797878",
      INIT_33 => X"7F7F7F7F7F7F7F7F7F7F0000000101010101007F7F7E7D7D7D7E7E7F00000102",
      INIT_34 => X"7F007F007F007F007F007F007F7F7F007F7F7F000000000000007F7F7F007F7F",
      INIT_35 => X"787A0005070B0E0A090A017474756F7175697010127A0316037F0F7E687E1204",
      INIT_36 => X"0202020100007F7E7D7C7C7D7E7F7F7F0002030303020202017F7E7C79797978",
      INIT_37 => X"7F7F7F7F7F7F7F7F7F7F7F0000010101010100007F7E7D7D7D7D7E7E7F000102",
      INIT_38 => X"00007F007F007F7F007F0000007F7F007F7F007F7F0000000000007F7F7F007F",
      INIT_39 => X"77777B0206080C0D0A0B097B71757570736F667D1908740B147F090F72680A10",
      INIT_3A => X"020202010100007F7E7D7C7C7D7E7F7F7F0102030302020202017F7D7B797979",
      INIT_3B => X"007F7F7E7F7F7F7F7F7F7F0000010101010101007F7F7E7D7D7D7E7E7F7F0002",
      INIT_3C => X"097F007F007F007F007F007F007F7F7F7F7F007F007F00000000007F7F7F7F7F",
      INIT_3D => X"7877787D05070A0D0C0A0C04737177747071686C0E187976150D011105657314",
      INIT_3E => X"020202020100007F7E7D7C7C7D7E7F7F7F000203030302020302007F7C797879",
      INIT_3F => X"00007F7E7F7F7F7F7F7F7F000001010101010100007F7E7D7D7D7E7E7E7F0001",
      INIT_40 => X"1501007F007F007F7F007F007F007F7F7F7F00007F7F00000000007F7F007F7F",
      INIT_41 => X"797877790107080B0D0B0C0A7B6F7479726F6C657C1B096D051A050912736107",
      INIT_42 => X"02020302010000007F7D7C7C7C7D7E7F7F7F010303030202020301007E7B7878",
      INIT_43 => X"00007F7F7E7F7F7F7F7F7F7F0000010101010100007F7F7E7D7D7D7E7E7F7F00",
      INIT_44 => X"180A7F007F007F007F007F007F007F7F7F7F00007F7F7F00000000007F7F007F",
      INIT_45 => X"787977777D0507090D0D0C0D0371707B786E6D676E1217717219110413045F71",
      INIT_46 => X"01020303020100007F7E7C7C7C7D7E7F7F7F000203030302020302007F7C7977",
      INIT_47 => X"0000007F7E7F7F7F7F7F7F7F000001010000000000007F7E7D7D7D7E7E7E7F00",
      INIT_48 => X"101400007F007F007F007F000000007F7F7F00007F7F007F00000000007F7F7F",
      INIT_49 => X"787877777A0307080C0E0C0D09776E787D6F6C6A67051C7C670E1C060E106960",
      INIT_4A => X"01020303020100007F7E7D7B7B7C7E7F7F7F000203030302020202017F7D7A77",
      INIT_4B => X"0000007F7E7E7F7F7F7F7F7F000001010000000000007F7E7E7D7D7E7E7E7F00",
      INIT_4C => X"021B037F7F00007F007F007F007F007F7F7F00007F7F007F0000007F007F7F7F",
      INIT_4D => X"78787777780006070B0F0D0D0C7C6E760073696C66791A076402220C09147658",
      INIT_4E => X"0002030303020000007F7D7B7B7C7D7F007F7F020303030302020301007E7A78",
      INIT_4F => X"0000007F7E7E7F7F7F7F7F7F7F0001010000000001007F7F7E7D7D7E7E7E7E7F",
      INIT_50 => X"741D097F007F007F007F007F007F007F7F7F007F7F7F007F0000007F00007F7F",
      INIT_51 => X"77787777787F05060A0F0E0C0D0170750176686C6771150D6678231206150058",
      INIT_52 => X"0002030403020100007F7D7B7A7B7D7E7F7F7F010404040302020302007E7B78",
      INIT_53 => X"0000007F7E7E7F7F7F7F7F7F7F000101000000010100007F7E7D7D7D7E7E7E7F",
      INIT_54 => X"6B1C0D7F007F007F007F007F007F007F7F7F007F7F7F007F7F00007F00007F7F",
      INIT_55 => X"77777776777E0505090F0E0B0D0472750178686A686E0F0F687323170514055A",
      INIT_56 => X"0002030403030100007F7D7B7A7B7C7E7F7F7F010405040403030302007E7A78",
      INIT_57 => X"0000007F7E7E7E7F7F7F7F7F7F000001010101010100007F7E7D7D7D7D7E7E7F",
      INIT_58 => X"671B107F007F007F007F007F007F007F7F7F7F00007F7F7F00000000007F7F00",
      INIT_59 => X"76777676787E0405090F0F0B0D05747702796869686D0B0D697224190413075C",
      INIT_5A => X"0002030404030201007F7D7B7A7A7B7D7E7F7F010405050504030403007D7A77",
      INIT_5B => X"0000007F7E7E7E7F7F7F7E7E7F000001010101010101007F7E7D7D7D7D7D7E7F",
      INIT_5C => X"681A107F007F007F007F007F007F007F7F7F0000007F007F0000000000007F7F",
      INIT_5D => X"75767575787F040409100F0B0D05767A02786868686E09096A7626190413065C",
      INIT_5E => X"0002030404030201017F7D7B7A7A7B7C7E7E7E010405050504040403007D7976",
      INIT_5F => X"000000007E7E7E7F7F7F7E7E7F000001010101010101007F7E7D7C7D7D7D7E7F",
      INIT_60 => X"6C1C0E7F007F007F007F007F007F007F7F7F007F007F7F7F000000007F7F7F7F",
      INIT_61 => X"747674747A0004040A100E0B0D03787E0175676768710804697D28160413025A",
      INIT_62 => X"0002030404030201017F7D7B7A7A7B7C7D7D7E010405060605050503007D7975",
      INIT_63 => X"0001007F7E7E7E7F7F7E7E7E7F000101010101010101007F7D7C7C7D7D7D7E7F",
      INIT_64 => X"751D0B7F007F007F007F007F007F007F7F7F007F007F7F00000000007F7F7F7F",
      INIT_65 => X"747471747C0103050C0F0D0C0C017C017F7266676874077D6A09290F06127B59",
      INIT_66 => X"0002030404030202017F7D7B7A7A7A7C7D7D7F010405060605060604007D7874",
      INIT_67 => X"0101007F7E7E7F7F7F7E7E7E7F000101010101020101007E7D7C7C7D7D7D7E7F",
      INIT_68 => X"021C067F007F007F007F007F007F007F7F7F007F7F7F7F00000000007F7F7F7F",
      INIT_69 => X"747270767D0103070E0F0D0D0A0100037A6D65676A770475701826090A0E715B",
      INIT_6A => X"0102040404030202017F7C7A7A7A7B7C7C7D7F020405060606060603007C7774",
      INIT_6B => X"0101007F7E7E7F7F7E7E7E7E7F0001010101010201017F7E7D7D7C7D7D7D7E7F",
      INIT_6C => X"0F1702007F007F007F7F007F007F007F7F00007F7F7F7F00000000007F7F7F00",
      INIT_6D => X"737171787E0002090F0E0D0C08020401756965686C7B006F7D251B050D066763",
      INIT_6E => X"0103040403030302007E7B7A7A7A7B7C7C7E000304050606060605027F7B7675",
      INIT_6F => X"0101007F7E7E7F7F7E7E7E7E7F0001010101020201007F7E7D7D7D7D7D7D7E7F",
      INIT_70 => X"180E7F007F007F007F007F00007F7F7F7F7F007F7F7F00000000007F7F7F007F",
      INIT_71 => X"7271757B7D7F030B0F0E0D0C0705047C706667696F7E787011280E080D7A6172",
      INIT_72 => X"02030404030303017F7D7B797A7A7B7C7D7F020405060606060604017E797774",
      INIT_73 => X"01007F7F7E7F7F7E7E7E7E7F000101010101020101007F7E7D7D7D7D7D7D7E00",
      INIT_74 => X"18057F007F007F007F007F007F007F7F7F007F7F7F007F00000000007F7F7F00",
      INIT_75 => X"7275797B7C7F050E0E0D0E0C090701756A666869757D717E231C060D066D6405",
      INIT_76 => X"02030404030302007E7C7A797A7B7C7C7E000305060606060604017F7C797673",
      INIT_77 => X"01007F7E7E7F7F7E7E7E7E7F0001010101010101007F7E7D7D7D7D7D7D7E7F01",
      INIT_78 => X"1000007F007F007F007F00007F007F00007F7F7F7F7F000000007F7F7F7F007F",
      INIT_79 => X"7678797A7D00080D0C0D100D09057B6F6667676D7B757516240C0A0C78667113",
      INIT_7A => X"030404030302017F7C7A79797A7B7C7D7F0205060707060604027F7C7A777474",
      INIT_7B => X"007F7E7E7E7F7E7E7E7E7F000101010101010100007F7E7D7D7D7D7D7D7F0001",
      INIT_7C => X"057F007F007F007F007F007F007F7F00007F7F7F0000000000007F7F7F000000",
      INIT_7D => X"79797A7B7D040B090B11110A0800746B6666687777710A2313080F006D690517",
      INIT_7E => X"030403030201007D7B7A79797A7C7D7F0204060708070604017E7D7B77747678",
      INIT_7F => X"007F7E7E7E7E7E7E7E7F000101010101010100007F7E7D7D7D7D7D7D7E7F0102",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\,
      DOADO(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"C9EA322AA950BC84CA5950B555BE0E20DFCA6B17E2355980B473DC8AA1FC1C60",
      INITP_01 => X"74316AFA78DCB111E0C6E11AD54F8788E866DDB4E883A6604C1A8C5AAACF0610",
      INITP_02 => X"84CD3ACE9CFE928B29945FD6AA33C1C09BBC751D31E2F6F829EA14CD50A78380",
      INITP_03 => X"E1A34CB212E6606BE15B4AA75AA9E0F0C3669D6709D8012AB81A52F55551E1E0",
      INITP_04 => X"E1605B1732BC2FBCDA0C97D055547878E0D0A67048ED6E14B23A4FC6AA8CF078",
      INITP_05 => X"D0E812F0EAE32A3EA442259E2AAABC1F31900DCE06E98171B6DB7DAF954E783E",
      INITP_06 => X"7C7030985364D3857C950B738AD50C0F98D82E9FD3FA42BAF88D0D1D2AA3BC1E",
      INITP_07 => X"CDA4069A83F5DB931AD9CC5AE5559F0FCD64148AE3B0C7CA9DF05FF975555E0F",
      INITP_08 => X"4BC46F9058E78BDBD2CFF5117551870FCD8447905C666A442117DA9E8551E60F",
      INITP_09 => X"09709BEC474BB36F3E795132E553870749C47FA45A847458CA0DF0FAB5538F0F",
      INITP_0A => X"2D7088DB979CCDC28853BFBDE555CF0F0D7088EF8942740B7B27D17B2555C707",
      INITP_0B => X"3AE9F6DC822AC68DBD7DF6706AA7CC0F3E7910D82F86C96E9C7E19EB9955CE0F",
      INITP_0C => X"5B21FD90CBFA7D0DD7368A09D50FD83F5BA9F197BAB6F2D43461ABFCAAAB8C1F",
      INITP_0D => X"A0507922B68CE236555BD524AA8FE0791210679EA4A857C5E2B8DE6F5557903F",
      INITP_0E => X"01B9A8CCB15D16D6334D8EF3555FC0F90020C8384CB30A087696FEAF56BFE07C",
      INITP_0F => X"1EFC9EAE8D78D697FA921DD1557F01C0037F5F9746993D3C3C28AB58AABF81F8",
      INIT_00 => X"EB0BFD05010002FCFFFFFAFBFBFE0205040302FFFFFF000100FFFF0000010102",
      INIT_01 => X"41CC4CBFC4A16DF06BB09BD04DE409409140650AF302C80F315A6F60B63BD01A",
      INIT_02 => X"842F6D01E19E175F4A75C0349EA00F77E90570E78A9B6606493273EEEA728C47",
      INIT_03 => X"39D38456DCC086613623EE1606183CB6CF1747204856D18C95DFBBB8F2DE5C16",
      INIT_04 => X"26DC16F50AFD05FDFD02FEFAFEFAFF0304020401FFFFFE000200FF0100000304",
      INIT_05 => X"F956438FD9A5DD686383BBA75276998DF65E31215E1270D9FBCB8BB071AF44C1",
      INIT_06 => X"ED5EFEC289268F82BA507276C04CBAE5D920B485D751813E7E465713AE154B2B",
      INIT_07 => X"247C27E3C43503B9772702A29379797E22B845A0C3122EAF4CFD1DAF6CC76E68",
      INIT_08 => X"C924DF1BF012F907FCFE0000F9FAFAFE0207040302FEFD01020201FF00030100",
      INIT_09 => X"AD1B892CE01BA8693127D6191E3146C110AAF10A8B6C6C5ACD38CD8B9A43CF2F",
      INIT_0A => X"B78BC3988FFB2CE288B8111BE6329482E27CA6E9B54302E0344F2EE911607FA2",
      INIT_0B => X"39339C5C3326864B02A621D95E44FDC3EEF5C55EE11866AB4ED74D49B576C5ED",
      INIT_0C => X"F9ED0AEA13F410F807F90001FDF9FAF9FF03060303FFFDFDFF010100FF010101",
      INIT_0D => X"893E8FDBC49312D7D2E80D5B212D054B436CEC16488BF74B1DDD595F1902EA10",
      INIT_0E => X"6865A3100EADB155455388388EE816C3738F93D7E1E78A3956C36F9F1E06E014",
      INIT_0F => X"E02D35AB7184A5F69308771AFC42D66B42A8F3CA41047FBAF7C9488377A667A8",
      INIT_10 => X"49C716EC05030208FB05FC0102FDF9F8FA0005060502FEFDFE00000101000103",
      INIT_11 => X"80D0614D118FDAC1A05649943B4B30851ED53234297767B8FE35CEF73595769C",
      INIT_12 => X"A4137A9611589EF7F37C52F9814B0E2244D2614E37F65AC41C46F11869D978AB",
      INIT_13 => X"F9BCF31CBFAEF40229A5F66D39172089F6D77FE8AE3D49C1F8542D89A85B5186",
      INIT_14 => X"9951B926DA16F60B0002FFFC0202FBFBF7FC0107060401FDFBFD000202000103",
      INIT_15 => X"6D530C523F6605480D0824F895114BF44B1B86AC87B13E087CD0D3101664D488",
      INIT_16 => X"DCAA078C4F6D0A2E5CE8765DB692197F9E11882A6F0A6B038475668D75D0A8EF",
      INIT_17 => X"4214A6B3EFCAF94A2123A00B914EF4F173C59142DDB54D7CF2248B7A9E72074E",
      INIT_18 => X"4DCA2DCC1ADC17F20FFC05FA000200FBFBFAFF03060604FFFDFBFC0103010002",
      INIT_19 => X"8431EBAE1DE0AA0D7247E40431948EBB81F98C1BED2AA1AFA67ADA35DCC4CA84",
      INIT_1A => X"2612EA3588BFA3CBCC3B535B1F7FDC6C40687BE241AC63DE60DD03B10FA38481",
      INIT_1B => X"008C438B82D5B9056B321C890AAC71EED04DA77A36ECB76A8BE73AA34C76C407",
      INIT_1C => X"01E80FF8F201F10EF80EFC03FA0201FFFAF9F90005080503FDFAFAFD01020101",
      INIT_1D => X"2C0F2E11D8D5BF15C711D9405E2C9D2C36D5B932C264E6EFDF7EA79E3182D1C3",
      INIT_1E => X"F3273D388CED9305B5A3BBA9FEA3C05756A1E447CE083BCB8A9A7E69291ECE62",
      INIT_1F => X"3431E076986CA583038134F05913E5AADEAA30957F6A28B95D57B71B6B46DC38",
      INIT_20 => X"EE7BA545C716DF0AFB070500FEFC0101FDFBF9FD0205060500FCFAFAFF010201",
      INIT_21 => X"A880F090C3A37B40F89FD4C9E452CB51FC97405BA8657A8C0429FAEBCE10359C",
      INIT_22 => X"3B10AB9035130177429AFF75184A87B992605BE64515AAF67DEE34820CA1F1CA",
      INIT_23 => X"FA1B7C57C28D2F646C1C850BAA332A27C5DCB8238491A853B321DE41DAABDF45",
      INIT_24 => X"4C8436D923D615E118F511FD04F8000200FAF9F7FE04090A06FFFAF8FC010400",
      INIT_25 => X"C81F0FF80FA12035D103F9FD79EA8B89878FF630C52BB2BA855C7E5CDFDBD113",
      INIT_26 => X"6D4FBE2055B430F20A28AD4CB29B1A3B390E573307012B386609A88FB5750488",
      INIT_27 => X"25913F0BC5D347D547AC6380BC58255668E9EFA7F57DB9BF2C7EBD69F80C889B",
      INIT_28 => X"5E7E75A148CC13E205FF0309FDFDFA0000FEFBF9FD0104070501FDFBF9FDFF00",
      INIT_29 => X"D7A50764B5E0AEC38E1CF8462B6A5638FA81DAB3E953A5F2A30F7425E550B6C0",
      INIT_2A => X"4DF9CB1FD5B6E2003000B4F00AC2AF70FB64B75930E9D815B413DA45C62B5C4E",
      INIT_2B => X"6C92699F87FA95D2AD8E2BA262571D4299AD0CF155AE6FB391BA04576B4BCB87",
      INIT_2C => X"C4578F2BDC25D516D919F114FA03F801FF01FEFBF9FF0206070600FDFAFDFEFE",
      INIT_2D => X"63D1738B1E37337B57C509B536D4A3DDEB67B008FF68CE8E169623819CAEAA5F",
      INIT_2E => X"D57292C79F10045CF015D853BDCED9DBA501E17B236C526E71C0C3796759467D",
      INIT_2F => X"6BC2026910CCDC389DCD06BFE8421A2373E8DCFF9CC840196623409757182EFB",
      INIT_30 => X"147B72AE766CB02ECD15F30A0201F9FAFF01FBFBF9FE0004070501FEFAF7FB01",
      INIT_31 => X"C05BEEAE22A755B797E0BBFD17F4FDED46E7D7F1E973035F3347049663612CB6",
      INIT_32 => X"19B0493218A32E74F8B249EBDFA9DEFBF3ED30FB9B286EC992CF04DB93A4A248",
      INIT_33 => X"F5BDD98C9C65E9ADE38536DF6630360945CE25B5AADDED7363E1C823AD101099",
      INIT_34 => X"F7DBC154AB3DE40AF7F210FB13FC03F804020300FCFA0106090A0802FEFCFFFF",
      INIT_35 => X"011363DBEF681DA0D8627B1CFA015B645754D2C9FC1CCAB0DD8F59A4C04D71A4",
      INIT_36 => X"32A0ECCB1DDE6AE9FA74827EC4D34DB8E0C3AF01A78043656A06BBAD62841D17",
      INIT_37 => X"1868A6E251F6C4FC5698C22CEF0E511838AB17035AC281A854B4AD006B7156A3",
      INIT_38 => X"AFC3B5534CC141C529C922E918F807F200FF02FEFDF8FF0106070701FEFAFAFD",
      INIT_39 => X"990CF244AA05D03D1AF9BEBB859A63C995433D1DFF8276592CA7E365BB6D76E5",
      INIT_3A => X"670828804EDC72DD7F821E6215D086D72A12A6DA4E406CAB3F7E8192F5931358",
      INIT_3B => X"F4BA3C442F958815C1E59FB88FE26340327CED099947F8C03398A5F77443FC43",
      INIT_3C => X"97FCE6A7D1617FA144BD22EA14FA07F5F90005FCFEF9FDFF05070903FDFAF8FB",
      INIT_3D => X"17A5E4B5CBA40C1746B054F0357AE8BB02A65A05FEB6776801A3EBE89D74D756",
      INIT_3E => X"0654DFE5D0FD146AEB36B0F50EEB457C461C0058AD16AF454871006689EBDFFD",
      INIT_3F => X"AAC5919C2A424F201952CC8945BC8483363DA3E38B703BDA2F8C990BB865F84B",
      INIT_40 => X"15356AB0FF468BA13EC418F10C0301F8FAFFFF0100F9FD0002060702FFFBF8FD",
      INIT_41 => X"61BB11B1AC4A495CCEF872AF1E49A495CFA714CF29567940EF159289E682CB0E",
      INIT_42 => X"DBC587132B02AFE40179A92E495ED66B4D97F5BC4070C482CE5367ABC8A9D112",
      INIT_43 => X"4B9ABDDB28061D2260CA238718AAA2BC40F83F8E3F5A6B022D76A5501CA81F7D",
      INIT_44 => X"79D3C102F24E81AD37D20BFB060600FCF300030000FBF9FE03060806FFFBFAFC",
      INIT_45 => X"B9AA444A985A97C734F7A1614B538EC2228CE4B27456B3842AF39D29C5DF90F4",
      INIT_46 => X"BC8E691B3ED33F68C2365F3E7F44DD8D946367BC044D7B8BE5B421B1573D3C15",
      INIT_47 => X"EE67BBEF2BE9FF30A43881A620C1C4DB36B3CB07CC308C263477D9C18AFD5F9A",
      INIT_48 => X"D8FB850BE75679B432D40AFA0409FFFBF4000101FFFBFBFF01050705FFFCF9FB",
      INIT_49 => X"435E1E767238B8440A0953E39E3B0499BB54510337CF468F39FA942901C2B12A",
      INIT_4A => X"BC966B051258B2025595E443CFD09D92BB670705E38AABC671556C387FD91673",
      INIT_4B => X"A5379DE229E80348E58AD3E947E0E0DA0D5F4B7A6F0E862B4EA62832F1579AAD",
      INIT_4C => X"24B5DEBCE45979B035CE10F50905FFF9F600000100FAFCFF0106070300FCFAFD",
      INIT_4D => X"1F8A43391B8702C8BA49D5363AA13B705B4F9B9131ABA07F4C278E268BE1395D",
      INIT_4E => X"D8B577C98FA3009DDED0775C4BE8DB7CB059A251AE747EC8A05F61BB8FD74737",
      INIT_4F => X"79FD6DC120F821721ECF1D2A7306F3C3BFECD82239DD50147B0187953F97E9E8",
      INIT_50 => X"3430678DCD6A72B13BC818EF10FE03F4F8FF020000FAFDFE0206070300FCFAFD",
      INIT_51 => X"DE78C3DBC3485685F07B4CF339B48D4E97AB418D06D95489EEF6AB6FD7D63FE4",
      INIT_52 => X"22146532CBC55157511853B10945353B7C08F6A761000FCEFC0BD66BEEE2BB02",
      INIT_53 => X"76DA2C88151959B353F94A61AA31F9815194A3F81FA3FEF6A655F0E45DDE582B",
      INIT_54 => X"B45D7BFF76A54EC62ECC1DEA15FA04F1FCFD0200FFF9FEFE03060602FFFBFBFE",
      INIT_55 => X"DC2C1E84358B6A09C9D47BB7D44558D2D3360BC80D52C10DECD8912FE1F475E2",
      INIT_56 => X"AC7F2552ABD8DE21C09B78470CAE5AC7014C4204B06EF3F1854ED2AD3ACD1693",
      INIT_57 => X"94DFF9370056ABFF78F3479BF54FCC160484ACF20C62A7C1AF9B43199039B887",
      INIT_58 => X"8EE293FDE50907F70AE511F412F902F1FEFE0200FFFAFE0005070501FFFCFDFF",
      INIT_59 => X"84B40564E2CB2D3C034D475931E98A02D74A5D38CEF574D2F7F9604CD5B97ECB",
      INIT_5A => X"52DCB022720F93073A54DB001B1B51DB297D8A1501382222343A9EFB4B91CE74",
      INIT_5B => X"A4D5BCF40DA9083663B237E23F5785BFEFB5E909F60A2C70A9BB7854C48D3311",
      INIT_5C => X"E57721A38753CB25DE09F90605FFF9F7FEFE0101FCFE000106060200FEFBFEFE",
      INIT_5D => X"9122947BDEF1913E701C61618AD0FF4F0B8B6C4AC8D584C78C75F127F6258585",
      INIT_5E => X"06F9D1D9707084EA974F6C99299DB7A36067AA749A24C1102A4C79062AA14AD1",
      INIT_5F => X"977641CE63255C2BFF50362677604F900E173A2FCA6F86209DD3AE70E90ED8B7",
      INIT_60 => X"8F5D5B46C631D920DB16F112FC03F3FCFC000000FCFF0005060601FFFDFEFFFF",
      INIT_61 => X"4878E094F6348A0DD18850310CE479FC10925B2AA2FA30D42904FF9E20E9F20C",
      INIT_62 => X"9E9AAEB9AC1E9C62FCA7E00767C7B2C8380D7446036A61A453B82F9A49551DBB",
      INIT_63 => X"97EE8A9BCFB79DE76CE13A79D07529986B84793B61A0DAD99C01D1662BC9A38C",
      INIT_64 => X"1FB86FA937DE17EE01000108FFFBF4FDFEFF00FDFE0002050604FEFDFBFDFFFF",
      INIT_65 => X"17007784F165CC0EB8E8CBE4FFE6D51443132DDB91FDCE25AD208B1D67D81492",
      INIT_66 => X"D4D289E72B00527FC805E883D373CAE0B88116F020FE77C86830300957C00B17",
      INIT_67 => X"8A7D1480FDFAAD8ADDA27BEB1C7A29D5D4CE8F09B2CA49A6B142E56CAFA7825F",
      INIT_68 => X"BC8F2AD921E615E610F50DFD01F5FCFBFF0000FD000104060400FEFDFDFEFDFF",
      INIT_69 => X"0979DF15560701DFD5410F0BAA73ECFE80EA63CFA919A75ACECE8969086CBCE1",
      INIT_6A => X"97EEC84A9BB18DDBE0E3B9A827A820D3C518E6A4538F1DDF4C00A7C9E4A2F890",
      INIT_6B => X"10F90AD137DE25E397F8166B49622B1720EB8490CF03F3A4E479F3D0917F3DEA",
      INIT_6C => X"7E5BBA2CDF19ED07FA040201F9F7FDFEFDFFFF000203040503FFFDFCFD0000FF",
      INIT_6D => X"0CA47EA71A708C82A469736D0A2E3413E0702C108F5D848FEA9EF3578DB98F19",
      INIT_6E => X"12612A6C110B8F76AF684625AB28CBF3FA6589BF2452EA6BD80A58E9B4AA4515",
      INIT_6F => X"6B52FF459FBE813F8B9AF3FF5029122D27E033ADE09C02DB30A440AE8A28C0FC",
      INIT_70 => X"0EE609FB02FEFA05FD06FEFEF8FDFBFEFFFEFF010205050200FFFDFFFEFE0000",
      INIT_71 => X"F4C4A83EE6FC70B9B0F11502A0EB7518E0BE6DDCAEA90ACF9DF503B6917DFA3B",
      INIT_72 => X"69A54BC96FC4A01C1E6CA7103C7177DA37DCE7784E53975BCFD6219641CBD18F",
      INIT_73 => X"F8351160BDB75A3DEE377F2129131B21E66544B96FA7434F9BF7FDA03BC635C8",
      INIT_74 => X"0AF108F708F609FC06FE00F8FDFCFCFDFEFD010305040301FFFEFEFFFE0000FF",
      INIT_75 => X"CC12458860E062E066091AB6D135468769A833102BC75457F801423B2CF2EFDF",
      INIT_76 => X"85C28DFE008E2265937FF7D5DDBF48D336BA72E3FA14D1FE646AB0DC2B493AA9",
      INIT_77 => X"AD676A98AB8F9207D8BD6CC0F41811C84A6F36175CEEC8E91EBFED4EEF93550E",
      INIT_78 => X"E80EF10DF50AFC06FF02FAFDFDFDFCFEFE010305050301FFFEFEFFFFFF000000",
      INIT_79 => X"676EE4D2F3FF56B09DA9B183342EE0AE62CC65E7EEE8252AB95372255D8A1816",
      INIT_7A => X"BDB15573A2E476B734E40696A2BF06FB902AEEB73B219E77056928F146F9C457",
      INIT_7B => X"A3A7C3D1CAD226D19419456FB2CD95236C6F7DD98A584A61E3E91362C9A6AB58",
      INIT_7C => X"17E911F30BFC06FE02FBFDFEFDFCFDFD00030504040200FFFFFF000000000002",
      INIT_7D => X"9FFE4E2F5606EFA6CA89F9DC3714530CDFBFC58F2F03B619E85539F57B892FDA",
      INIT_7E => X"8647739CC672E535C8F2679B1E5D21B1DDAE56CF7CB4434BA3781D20D14FBCAC",
      INIT_7F => X"C3E4FC0B2371F891001E2536432CED50649E24F1D1B29F0321617168224F0B7B",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => ram_douta(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => ram_douta(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"37847A39CCE50144DC19537543FE066039931D599EF084BE6EF1B2BAAAFF01E0",
      INITP_01 => X"4FD7F1386785C1C8AF59D80AAAF810006FCBF4D789D2019662D433EBD57C1C60",
      INITP_02 => X"BFAF53C03FB4F0A3575B68A83BE0E0009FC7272FD01E400E323C8D155DF07181",
      INITP_03 => X"1F4E6EE7F18A8606AC0B26547F0180013FAFA89D85685D3F0B0303283FC1E006",
      INITP_04 => X"918301840D83557650DB5941BE0000031CC0C621BA0AEC45A6D70CA0FF034001",
      INITP_05 => X"38F9C4954CA026D21D64C0AAF83880FF067E42F58519B48A8115B2857C08C00F",
      INITP_06 => X"40E7C915A3757E81AC980AAFE1F001FF60F3CD14A86E9D2AC45D855770F000FF",
      INITP_07 => X"F06FD982B48DFF8A287C207500FC00FEC06FCBF4475B6CB202101419C0E0007E",
      INITP_08 => X"1DF01F712C62B27404F80056000E00FCF8639C41AC68B4BF6A0800000000007C",
      INITP_09 => X"00F0C7CA92FD8BAC4DE000008007F00707FFC11B115679E685B02010000FC004",
      INITP_0A => X"9F2F2C124340D4DE1D802C01B803F8079E666C2A7DC221F15A4010003003E001",
      INITP_0B => X"CF33964EB76B1389DE000C003000FC01DF27ACC6CCA62E019C001C007803FC01",
      INITP_0C => X"F00F18F282C81238C8081F78061A7FC0C01813194CCDC3739F300F7030027F00",
      INITP_0D => X"F0E7987C0232F950442B113C070800F8FFC0FF0380CA353A9EA41BFC0D3803F0",
      INITP_0E => X"3033151B4DA7A8CC0DDE049F01FC00FE7067E8E68F5714F5FC0988BF03FC00FE",
      INITP_0F => X"98090649646EAB11D2F041020078001F301B0B747BC5B9E237390207C07C007F",
      INIT_00 => X"E511F30AFE05FF00FEFDFEFCFCFDFDFF02040404020000FFFFFFFF0000000102",
      INIT_01 => X"CA96A8FFBA1351E0EDB9C4C8527401475ED12AEAC1AE32A1221AA795015BCD1E",
      INIT_02 => X"F33B3A333D5492C3F339423CCB42DE1E89773D3DEF016640756751A2C70E686C",
      INIT_03 => X"CDF71541AB4CE1351EE8E504EB7FEB3DA43802E0CBE1667FA99772356BFA2A1B",
      INIT_04 => X"08F805020102FFFFFDFFFDFDFDFEFF020304030100FFFF0000FFFF0001020203",
      INIT_05 => X"3445D381EBA2357F812839FF34FAE87A13B3FD9F02D909EF3856DE738CD019EB",
      INIT_06 => X"E3E29A9A26D1E615513222941227BCA65B584FBDDE6F57F8BBB14C28D253226A",
      INIT_07 => X"B8D62ABE7C1664551CFEFABC3CA0E85810EECCC9F57385E112E8759E3C47F894",
      INIT_08 => X"FFFF05FF04FD00FC00FEFDFCFDFF0204040201FFFFFF000000FFFF0101020202",
      INIT_09 => X"0705570523C36D2CF48C241C7DA21C289B6DBA545ECD038DAF6CD4B3E70BF6FF",
      INIT_0A => X"A767227C519E039F742483D6DEB5D95D8CCDF0D5614D3F4AD62FE29EF3C13CB1",
      INIT_0B => X"A000A96E146D68595F4DFE5E7A8AEEA49BB1BBCD3248E07268D603A49F3EA7AC",
      INIT_0C => X"FD07FE05FE00FD01FFFEFCFCFE020405030100FE000102000001010202020100",
      INIT_0D => X"24DC8DBF4E278941CEB559B2D99689E295AA112850A4E8DB9615D309FC02F904",
      INIT_0E => X"5593DAE133721D343FEA087E205D3715A167F671256704E3F4A986C81D5FBC92",
      INIT_0F => X"DE6F33F0728C777B9067C0BBA0D5613F4F5A6FE2FE8E51A33344EA07C5575410",
      INIT_10 => X"06FF03FEFEFD00FEFDFCFCFE0103040301FEFFFF010100FFFF000102010000FF",
      INIT_11 => X"2CEF12E867353BA19E2C767BDCCC39139D4D50EB9DA3B4A82BF02DF306F704FD",
      INIT_12 => X"D4864AAFDD4546A7E61E4FE22BF40E300758B752AC52296339F58E5C6885A6B3",
      INIT_13 => X"3305D34F6A84B4C8A00706EF31B44900D9F1809C0FC53AF93F29705031701410",
      INIT_14 => X"0102FFFEFF00FFFEFDFCFE0003040301FFFFFF00010100000102020201010101",
      INIT_15 => X"36006F55618713260AF4F859F128C56C3A7973B387D6E2120C48F603FC000003",
      INIT_16 => X"67BC59F74A4F89BF4402F76933314309550726489CBAFC994A6F5F47DAEEF192",
      INIT_17 => X"CC9823515F86B9C2679B7D88DE682705F5311E79FF591F8DCC99E60D894629CD",
      INIT_18 => X"0001FDFEFFFFFDFDFDFE0002020201FFFEFFFF01000000000101020000FFFF00",
      INIT_19 => X"ACD2150EE5348398E689E6BC0ABF2DFC838E20C5E470D8285B03FA02FB040002",
      INIT_1A => X"C62037CA36F000C1C355ACE1AAA521D4D9DE3787AC7CAF79709F74D7B55F489A",
      INIT_1B => X"3CC81731557B857E2B3B0F249A625D5B7B0E033F620167E71DCD5D4E5F8C5AC0",
      INIT_1C => X"00FDFFFFFFFFFEFE00010203020100FFFE0001000101000203030302000100FF",
      INIT_1D => X"1BB83B28F0FCD7223370151612BBAF551C069FA547923C6912F505F905FE0301",
      INIT_1E => X"B18E79EDB057212DC5818B155CB536E2C4BDA4BD32126A4A84DE9B2D650B5756",
      INIT_1F => X"5B91BA055E93821B5579C328C3AED206750FBC89288BDB13E6AF431CBC9A1E4D",
      INIT_20 => X"FEFFFFFEFEFDFDFE000203030100FFFF00FF00000000010202020100000000FF",
      INIT_21 => X"8511FE07BAB5890FC3C471081F70E1E05B30125A563F791EF307F80500030100",
      INIT_22 => X"21E70031C8B8914AFAE3799696CFC24B7A0101D8B4B6864803C5D7F77E37267C",
      INIT_23 => X"063CA3267863F4429718B55E2E3F7AEA5FDC62AED40C33EE9D57AFEC5E3B9B21",
      INIT_24 => X"FF00FFFEFEFDFE0001020202000000010100000000010102010101000100FFFD",
      INIT_25 => X"FB8722B367F934EF8717C65D4728AE33A51C9633318A2AF407FB0302020200FF",
      INIT_26 => X"2F73A8F7533AF4220C7CAF6CC3F2F6001B88B9873F1F1F20EBE19489F8FCD591",
      INIT_27 => X"EF51C807F1AB247F19FFF9E8D0D1159936B3CCA3A1A953CD59BB2F0059351044",
      INIT_28 => X"00FFFEFDFDFD000102010000FF000000FFFF00000000000000000000FFFFFDFD",
      INIT_29 => X"0455BBC55FB805370B6D71483D48743EC2DB33179832F904FE01030002FE00FD",
      INIT_2A => X"9D0F7EE9B1B18A5A8DE3B63DF50E50E6460DE8D2B2D4764F0B3DA6ADB107B00A",
      INIT_2B => X"265C81763BC53DF0FD3B64604F7ADF62E202CFACA44193D6FB5B368B6FAD8C0A",
      INIT_2C => X"FFFFFEFEFE0000000100FFFFFF000100FF00010101010100FFFFFFFFFFFDFDFD",
      INIT_2D => X"AC20D5679636B031285E754292FA1D16135CF4AA39010002FE05FE04FF00FE00",
      INIT_2E => X"DE9C475567EA2A5868F0E18024F7039D402E055A9900426C41AC7EB210AC3664",
      INIT_2F => X"452BF2B057EEABC31D759BA2DE47B5153B0BCDB46CC7F5052FB29F2E4F7B97DB",
      INIT_30 => X"00FFFFFE00000000FFFFFFFE000100000000010201010100FFFFFFFFFEFDFDFE",
      INIT_31 => X"E4070494A2F37F1926B350808B6F3E1AABC9B73D0AFC06FC05FE03FF01FEFFFF",
      INIT_32 => X"9AB93AB6C27C6361DB0E247E14C40792C9FE4B6CBB32E3D0B98AE245B66797D8",
      INIT_33 => X"4EE75ED77D6891E331669CFA80F34F816B2DF399F2376D9AE56E731B1121A23F",
      INIT_34 => X"FFFFFF00000001FFFFFFFFFF0000000001010101010000FFFFFEFEFDFDFEFEFF",
      INIT_35 => X"765C936402C65AD8EF7628062C5DDD239FBB4514F909FC06FE03FF01FEFFFFFF",
      INIT_36 => X"6DAA18FA4ECA1443A4A5C684090221CF7F415C673C70A1B0B320C4D601EBAAC3",
      INIT_37 => X"2E8CE3582453ABEC0B39AB4CE15EB8C08A59FF548DCC0D64DC97C444002882E2",
      INIT_38 => X"FFFF000202020100FEFFFF0000000002020101010000000000FFFEFDFEFEFF01",
      INIT_39 => X"8A6B852EF4E49817A596574BA449AE8CB24D1EFA0AFF0601020000FFFF0000FF",
      INIT_3A => X"4DB9A9D93F47FED2C9ED46AA8F01537545C3A4C951E1FA0B4B4877E3DCAE9301",
      INIT_3B => X"E246C477657A9FC2DE21B26A1FA1CDC5B067CB124F8EF47C2C336CA53B2E0CF5",
      INIT_3C => X"0000010101000000FFFFFFFFFFFF00010102010202010100FEFEFDFDFDFFFF01",
      INIT_3D => X"E4D29C36AA5E28E4C365C84363249CA15122FE060203020101FFFFFF00FF00FF",
      INIT_3E => X"2A3D4AFF067C5B30BA0B99C97F8DE32DC722AE2DD60B0E0A64E40F0D2D3D1689",
      INIT_3F => X"BC683000C98E809DD22BB9680F85A7A790398DD536A535F9FC0E255089B91506",
      INIT_40 => X"00010101010100010000000000000000010102020201010100FFFEFEFFFF0001",
      INIT_41 => X"D809B6DF4D1D39DC1A664D5672C48E5B23040405020502030001000100000000",
      INIT_42 => X"AF736A53202F20DE170521E8064CF288054F65E96E7EE4007209EB47BF47BB5B",
      INIT_43 => X"F3E1C48012BA94A5F862CB38A7FF44682DB540CF6519E2D3F80BF6D98B43861E",
      INIT_44 => X"000000010000010001010000FFFFFF000000010001010100FFFFFEFEFEFF0001",
      INIT_45 => X"82D278C40192EB930EB2358C0C7663230B0005010302030101FF00FF00FFFF00",
      INIT_46 => X"2291311E3EFC296885A2D90C3F729D27EF43FB7E49B6F5C552B75F8DD9ADCA14",
      INIT_47 => X"413513D57A27FF073D85C0E40A51A1B47A3913F9DBC5CFF502DB942FBD6629FE",
      INIT_48 => X"000000010000000102010100FFFFFEFFFFFF0000010101000000000000FF0000",
      INIT_49 => X"1B3775492E07C6A9792461606C66270D0206FF0401030202000100FF00000000",
      INIT_4A => X"AC98F0ACCF634FD243C9FBC202D78458B548DE7A1874B5941320F398221966EB",
      INIT_4B => X"493C312610EAC09C888691907F8095AFC8EB0B2E5998E701DA8E29B439A3DE26",
      INIT_4C => X"FF000000000101020101010100FFFFFEFEFFFFFF000001010101010000FFFFFF",
      INIT_4D => X"57CFDEEACA100D764304B3686131110407020100010201020101000000000100",
      INIT_4E => X"90E0CE68AEECB20762E7E35CCF4A9BD4806D61EAC2D52E1A88B9D65C2D0144B1",
      INIT_4F => X"0B1A4997C5BB8136E99C622BE59B8DC22AA50162D759B7C48E54FE579BCAC49B",
      INIT_50 => X"0000FFFF00010102020202010100FFFEFDFEFF000000010202020202010100FF",
      INIT_51 => X"0537EA3CF4E7B0906CF28A5333140807070200FF010101020202010000010100",
      INIT_52 => X"F7D5398C18A8A01053A0A21CDFA0803C186647FBCE85F3F1E1170A5D0E21FEE5",
      INIT_53 => X"C3016E02594E1BCD62DC3EAD47FEDA199E33E29941C612375A47C1F4FEEAA044",
      INIT_54 => X"FF00FFFFFF000101010202000000FFFDFCFDFEFEFF0001010203020201FFFFFF",
      INIT_55 => X"84E1ABEE260295DAEBA84C3A1706060A0603FD00FFFF010101010100000000FF",
      INIT_56 => X"BFA5995F03C03FCCA4B32B7AA7B0546AE622D562B9C1ED4CC272211C04F70ED0",
      INIT_57 => X"93098B1A89AE8B46C303367CEFA298B520CEA59565E0208CF1F1738E50F19613",
      INIT_58 => X"00FFFFFFFF000101010202010100FFFEFEFEFEFDFDFF000103030303030100FF",
      INIT_59 => X"4441EE322759B22BD52E2E1E10070809060201FFFFFD00010001010101010000",
      INIT_5A => X"0DCCC1749CDB1B80B2EB62E742B480D301B1BC39309B1738442D3C12FBA286CE",
      INIT_5B => X"7FFB80026CB5C071D82569B414A98AA7E7755E4A16B12BA71034E208AC17974B",
      INIT_5C => X"0000FFFF000101010101010101010100FFFEFEFEFFFF000102030303020201FF",
      INIT_5D => X"BD4A7EDBD9D1EFC97419040B0A0E090805020201FDFE01000001010101010101",
      INIT_5E => X"C46860773B5C2A9B847A88D6AECFF3382CED24A13480CE9EFB9F82F8ACCE4D2E",
      INIT_5F => X"63D351CD2C5D6A45D44AC3268B22E3D1F854FFD89C44EB73D315D612098EE2B1",
      INIT_60 => X"0000FFFF00000000000001000000FF0000FFFFFFFEFEFFFF0001010202020100",
      INIT_61 => X"69E2451CC812EC295239FFFB030A0F0804010200FEFEFEFF00FFFFFF00010201",
      INIT_62 => X"5C8ADCBD45ECE3CE6093FD0B017C6350FE83B80445627518FE6233EEE5276E19",
      INIT_63 => X"5FAC0C6BABCAD1C3A3690FA038E3A66B3F64CB5F1CBB3AD0568556D5090BC469",
      INIT_64 => X"0100000000FFFF00000000FFFF00FF0000FFFFFFFFFFFFFEFFFF000101010100",
      INIT_65 => X"CF86A439C56A424AE1DF6D05F605090C060602FFFFFFFEFF00FFFFFFFF000101",
      INIT_66 => X"6ACDBAB17ACD9E99F69681C7A37241EF88B1D5EEB0782489228B7F5EA1422330",
      INIT_67 => X"7C9CB7E10829322729484A10E9C7924CFCBDCE2B8D0476E357A59740D845908B",
      INIT_68 => X"01010000FFFF00FF0000FFFFFF000000000000000100FFFFFEFFFFFF00010101",
      INIT_69 => X"41BF35E2D23618055260D3E108F500040A0802FFFF00FEFEFFFFFFFEFFFF0001",
      INIT_6A => X"10AC7E876D1650E7288A1A0BD58B00A498FB367F86AD538FCE6DBEDABEBFDA54",
      INIT_6B => X"918C866E6975818BADE73076827C7442F3973B0F30558FE72B5F877F5848F67A",
      INIT_6C => X"0203030101FFFFFF00000000FF0000000101000001010100FFFFFEFFFF000101",
      INIT_6D => X"84D3589CD2D8C5770BA692C1990AF4FD0C0C08FF000000FE0000FFFFFFFF0000",
      INIT_6E => X"8FC2A84A0F1890CFB589E45DDB5E1A59646797C5A04EB7A10B1B26083045438B",
      INIT_6F => X"C5987336EBC5D6FF3884E96EDF080E240097127D01D7D6D7FC1E2758BFEB094E",
      INIT_70 => X"000101010100FFFFFFFEFEFEFEFF00000101010202020100FFFDFDFCFDFEFF00",
      INIT_71 => X"325004B8ED5696EC031F237F79891EFAFE110605FC000000FF00FEFFFFFEFFFF",
      INIT_72 => X"CE63A56BD88620B32E91AD371476A6972734DDC2EE7709AB0F5B5DDA7DA50358",
      INIT_73 => X"21D06909B46A4D79CB279A24BC42839ECBA403457CBB5016CBC7EB149F56E6C6",
      INIT_74 => X"01000102010101FFFEFFFEFEFFFF00010202030303020000FFFEFDFCFDFDFF00",
      INIT_75 => X"7B84B2E3D4D16E858EC000B743DEB75A0001130105FB0000FF0000FFFEFFFFFF",
      INIT_76 => X"59A2202BEA090A0D017134378066BA37D6A20EC80D4AF91C39F639163E25D705",
      INIT_77 => X"92178F0CAD69291153C541CC61FC95F81F4A092D446A627FF486A71D76369901",
      INIT_78 => X"FFFF00010202010000FFFEFEFFFF0000000101010101000000FFFFFEFDFDFDFE",
      INIT_79 => X"AD1B0549C0DCE3ECB175A4A04003090DB30302120003FE020101010000FFFEFF",
      INIT_7A => X"94FC247A46B471C1CE1825CF432A8E9EA21F8025012AA2301A2E2B9752B4E306",
      INIT_7B => X"EF7EEA55D98244120552CE59FBA53FD8507481354B2D16BC69BD99F89A59BAC1",
      INIT_7C => X"010001010103020100FFFFFFFE0000010102030304030202000000FFFDFDFDFD",
      INIT_7D => X"9107F03F4798881BBCFD9A9BFCBCD71B75270703100001FE010200030000FF00",
      INIT_7E => X"04F5392F3BAFC5D34BF34C687ED4276CD67E45B3BD7BD5D1BA4476EFE1C98316",
      INIT_7F => X"0FDD6AD241C36C3D190950D56E2EEB7D006C96A44F36CC6DED9BFEF3A4D519CA",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => DOPADOP(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000010002000100020002000100000000FFFFFFFFFFFEFFFCFFFCFFFC",
      INIT_01 => X"00000000FFFF0000000000000001000100000000FFFFFFFEFFFFFFFFFFFF0001",
      INIT_02 => X"062707ED01A700040005000CFFFFFFFEFFFE00000002FFFF0002FFFF0000FFFE",
      INIT_03 => X"F055F232EF0DF01CFB81FF3A00520D0912720BC3077D02EDFD86FE1FFE27FDB7",
      INIT_04 => X"F6F3F904FB58FD1AFFFC0319064B0AAA0D450BAA0AC6096D0310FD89F982F2F7",
      INIT_05 => X"00CA02F804DA05E806950645052503D00198FEDCFCB5FA8FF7F8F74FF7F2F742",
      INIT_06 => X"01AB01F7026502B902A9020A00C3FF3FFDD2FC68FB41FABBFACFFBE6FDA3FF24",
      INIT_07 => X"010900EF00C40061FFD2FF41FEC1FE62FE37FE27FE20FE5DFEDFFF8200530128",
      INIT_08 => X"00000001000100010001000100010001000000010001FFFF00000000FFFFFFFE",
      INIT_09 => X"FFFF00000000FFFFFFFEFFFF000000010001000100010000FFFFFFFFFFFF0000",
      INIT_0A => X"FCA0063C0975022C0002000600090000FFFC00020000000400000003FFFF0001",
      INIT_0B => X"F337EF29F0D0ED50ED31F99EFE11FDDF0C7A14EC0E0909380463FD4EFD13FD8F",
      INIT_0C => X"F82FF7A7F8FBFA80FC2CFFBE031606400B140DFC0C340B540AF204AFFE7CFA80",
      INIT_0D => X"FFEC01480370055705ED06100563040E02EE00EDFE5AFCAFFAECF80DF738F871",
      INIT_0E => X"011A01C1022B02750273023501A00061FEF9FDA4FC35FB23FB06FB52FC6FFE70",
      INIT_0F => X"00E600D800CD00C3006DFFE2FF4FFEBCFE5EFE44FE44FE33FE6AFEFEFF9D0054",
      INIT_10 => X"000000000001000100010001000100000000000100000000000000000000FFFF",
      INIT_11 => X"0001FFFEFFFF0000FFFFFFFDFFFEFFFF00000001000200010001FFFFFFFF0000",
      INIT_12 => X"FCE9FB8106610B1B02B3FFFD000A0005FFFEFFFA0004FFFD0005FFFF0003FFFF",
      INIT_13 => X"FB72F3D4EE0DEF73EB8AE9F9F77CFCBAFB4E0BE41788108E0B3C05DDFCE7FBE8",
      INIT_14 => X"F8D3F83BF72EF7FDF9FEFC50FF68023205C30AFF0E8C0D1B0C490CEB0682FF36",
      INIT_15 => X"FE99000F016F037F050104FF04F9048F03AE02F20120FED7FD54FB63F86DF7C5",
      INIT_16 => X"0041010801BF0237025B020601C8018F0069FED6FD9AFC5EFB61FB91FC13FCE8",
      INIT_17 => X"00C700CA00C600C700CA0081FFECFF4DFEC4FE6BFE53FE50FE43FE7CFF04FF97",
      INIT_18 => X"FFFF0001000100000000FFFF00000001FFFF000100020000FFFF00010000FFFF",
      INIT_19 => X"FFFE0001FFFDFFFEFFFFFFFEFFFDFFFEFFFE000000030003000000010001FFFF",
      INIT_1A => X"FAB4FC2FFA5306CA0CCF031EFFFB000A00010000FFF90004FFFC0006FFFD0004",
      INIT_1B => X"002EFD01F47AECDAEE29E964E658F530FB51F8C50B851A5D13440D5F073EFC54",
      INIT_1C => X"F788F84AF7CFF686F79FFA30FBC0FDDF0138056B0AE80F6D0E2E0D8A0EE507EE",
      INIT_1D => X"FD17FE6AFF9E00F902E404140417048D04B0041B038101E1FFAFFE25FC33F8F1",
      INIT_1E => X"FF7E001000DF019B02290271021301AA01850088FEFCFDD1FCB2FBBDFBDEFC5E",
      INIT_1F => X"00DE00E800DC00C600C700C50073FFE5FF59FED7FE74FE57FE52FE3AFE79FF0A",
      INIT_20 => X"FFFFFFFF0001000000000000FFFF00000001FFFF00000002FFFF000000020001",
      INIT_21 => X"0005FFFD0003FFFEFFFEFFFFFFFEFFFBFFFCFFFE000000030005000200010001",
      INIT_22 => X"FB62F97DFB59F93B07C40E72034DFFF8000500030001FFF80008FFFD0006FFFE",
      INIT_23 => X"09A30192FEAEF4C0EB73EC9EE6B2E26EF334FA07F6550BDC1D7615EE0F840857",
      INIT_24 => X"F8A0F6BDF810F7B1F5D5F729F9C8FA55FC9500F305010AE9107C0F2A0EBD10E8",
      INIT_25 => X"FBFBFCB4FE14FEF5FFFC021503D204530504052D04A80465031500BAFECEFC98",
      INIT_26 => X"FEC6FF400002010301C6023102860268020B01AE00A6FF51FE24FCC9FBA4FBA0",
      INIT_27 => X"00CC01170120010200C800AA00AE0068FFDEFF61FEDCFE6BFE46FE44FE2CFE54",
      INIT_28 => X"FFFF00000000FFFF000000000000000000000000000200010000000200030002",
      INIT_29 => X"FFFF0005FFFD0003FFFD0000FFFFFFFDFFFCFFFCFFFE00020002000300040002",
      INIT_2A => X"08C8F9D7F87EFA5CF86409BE0FCC02FEFFFE00000006FFFCFFFC0006FFFB0008",
      INIT_2B => X"135A0B5302FE0012F456E99CEAF0E32FDE68F242F8C0F4300D7420DB1842117C",
      INIT_2C => X"FC7BF7FCF65CF809F6DCF4B7F6B8F8E3F914FC5000BD046F0B25116E1007106E",
      INIT_2D => X"FAD8FB51FBF4FD78FE90FF9101F20455051805C805E3057F05B604570123FED0",
      INIT_2E => X"FE08FEACFF58002C01390212029802F402CB0286023500F2FF56FDF5FC37FABB",
      INIT_2F => X"00800121014E0132010600C500A700B10067FFD1FF49FEC1FE42FE15FE09FDD9",
      INIT_30 => X"00010000FFFEFFFE0000000000000000FFFE00000000FFFF0000000100000001",
      INIT_31 => X"0005FFFE0005FFFC0003FFFDFFFEFFFFFFFCFFFAFFFCFFFD0001000400040002",
      INIT_32 => X"134408B9F81FF7A5F92EF7BB0C6110D502640011FFEE0012FFF4FFFF0002FFFD",
      INIT_33 => X"12B9165D0CDB03F20138F336E732E914DF10DA8CF251F7B3F20E0FCC247B1A65",
      INIT_34 => X"FEE8FC57F719F586F790F64DF3F6F5B8F7BDF8A0FC2FFFFF03A50B6A12B51154",
      INIT_35 => X"F9C6F9E8FA46FB3DFD56FE7FFF8A027B051305ED07110729069506B804D50115",
      INIT_36 => X"FDA2FDFBFEB8FF66005F01AE02C1037303C6034402D5029D00FEFEADFCF7FB33",
      INIT_37 => X"002600CD015201610136010F00E800D200C00058FFBAFF1DFE5DFDC6FDAAFDB4",
      INIT_38 => X"00040001FFFF0000FFFFFFFE00000000FFFF0000FFFF00000002000000000002",
      INIT_39 => X"0001000300010004FFFE0003FFFC00010000FFFBFFFCFFFCFFFD000200030004",
      INIT_3A => X"1BFD14C6082FF610F726F796F75E1039113201720038FFD30024FFE3000CFFF7",
      INIT_3B => X"130315CA19730D5904B5024AF0CBE471E766D9FAD71AF444F65FEF82139B284E",
      INIT_3C => X"0141FF0BFB5BF54FF4BAF7D5F605F2B6F488F72FF832FB70FF1F02FB0C3D14AA",
      INIT_3D => X"FA23F898F8E5F958FAE3FD6FFE68FFA003470655076708C3088E077B071F04D6",
      INIT_3E => X"FD70FD6AFDEEFED6FFAE00FA029603B80458047C03A702FB02400026FDF1FC48",
      INIT_3F => X"FFA50047010801920186014B01320114010200E9004FFF69FE9AFDCCFD43FD4B",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => addra(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\(15 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33\,
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7F007F000000007F7F7F7F7F7F7F00000000007F7F7F0000007F7F0000000000",
      INIT_01 => X"0B0A0C0D060201767172696A7C79760C150E0B03797B7A7C0A0800007F007F00",
      INIT_02 => X"7D7C7B7C7C7D7E7F000203040504040302007F7C797A7C7A787A7B7B7D7F0107",
      INIT_03 => X"7F7F000000000000000000007F7F7E7E7E7E7E7F7F0000010202020101007F7E",
      INIT_04 => X"007F007F007F007F7F007F7F7F7F7F00000000007F7F7F0000007F0000000000",
      INIT_05 => X"080C0B0E0D050200747071666C7E767610160F0B02797B787D0D067F007F007F",
      INIT_06 => X"7D7D7B7B7B7C7D7E7F0003040506050403027F7E7B787A7C79787A7B7B7D7F02",
      INIT_07 => X"7F7F000000010100000000007F7F7E7E7E7E7E7E7F000001020202020101007F",
      INIT_08 => X"7F007F007F007F007F7F00007F7F7F7F00000000007F7F000000007F00000000",
      INIT_09 => X"030A0D0C0F0D04037F72706F646F7E72781417100B00787A76010F047F007F00",
      INIT_0A => X"7E7D7C7B7A7B7C7D7E7F0104050606050404017F7E7A777A7C78777A7B7B7D7F",
      INIT_0B => X"7F7F7F000001010101000000007F7E7E7D7D7E7E7E7F00000102020202010100",
      INIT_0C => X"7F7F007F007F007F007F00007F7F7F7F7F000000007F7F7F7F0000007F000000",
      INIT_0D => X"7F040B0D0D110C03037C70716D62727D6E7C1718110B7E777875070F02007F00",
      INIT_0E => X"007E7D7C7A7A7B7C7D7E7F0104050707050504017F7D78767B7B77777B7B7B7D",
      INIT_0F => X"7F7F7F7F000001010101000000007F7E7E7D7D7E7E7F7F000001020202020101",
      INIT_10 => X"007F007F000000007F007F00007F7F7F7F00000000007F7F7F00000000000000",
      INIT_11 => X"7E00050C0D0F11090303797071686276796D031A1911097C7674770D0D00007F",
      INIT_12 => X"01007E7D7C7A7A7A7B7D7E7F0205060807050504027F7B75767B7976787B7B7C",
      INIT_13 => X"7E7F7F7F7F000001010100000000007F7E7D7D7D7E7E7F7F0001020202020201",
      INIT_14 => X"7F007F007F007F0000007F7F00007F7F7F7F00000000007F7F7F000000000000",
      INIT_15 => X"7D7F01060B0E111008040277716E6365787470091C1910067A74717D12097F00",
      INIT_16 => X"0101007E7D7B7A7A7A7B7D7E7F0205070808060504027F7A73767B7976797B7B",
      INIT_17 => X"7E7F7F7F7F7F0001010101010000007F7F7E7D7D7D7E7E7F7F00010202020202",
      INIT_18 => X"007F007F007F007F007F007F0000007F7F7F7F000000007F7F7F7F0000000000",
      INIT_19 => X"7C7E7F02060A0F130F070400767068606A7772760F1E190E037870710612057F",
      INIT_1A => X"020201007E7D7B79797A7C7D7E000306080908060503017E7973757A7977797C",
      INIT_1B => X"7E7E7F7F7F7F7F0001010101010000007F7F7E7D7D7D7E7E7F7F000102020202",
      INIT_1C => X"007F007F7F007F007F007F007F00007F7F7F7F00000000007F7F7F7F00000000",
      INIT_1D => X"7C7D7E0104060A11130D07037D756B62626E77747C131F180A01746D770E0F01",
      INIT_1E => X"02020201007E7C7B79797A7C7D7E000407080808060402007E787375797A7779",
      INIT_1F => X"7E7E7E7F7F7F7F7F0001010101010000007F7F7E7D7D7E7E7E7F7F0001020203",
      INIT_20 => X"7F007F007F007F007F0000007F7F00007F7F7F7F00000000007F7F7F7F000000",
      INIT_21 => X"797C7D7F0205070C12130C05007B7065606673787601172114077D6F6D00130A",
      INIT_22 => X"0302020201007E7C7A79797B7C7D7F010507080807050201007D787476787978",
      INIT_23 => X"7E7E7E7F7F7F7F7F7F0001010101010100007F7F7E7D7D7E7E7E7E7F00010203",
      INIT_24 => X"047F007F007F007F007F007F007F0000007F7F7F7F000000007F7F7F7F000000",
      INIT_25 => X"78797C7E0104060A0F13110A027D776A60636C767979061D200E04776B720B13",
      INIT_26 => X"0303020202017F7D7B7A797A7B7C7E00030607080706040201007B7776767778",
      INIT_27 => X"7F7E7E7F7F7F7F7E7F7F0001010101010100007F7E7E7D7D7E7E7E7E7F000102",
      INIT_28 => X"0C00007F007F007F007F00007F7F7F00007F7F7F7F00000000007F7F7F7F7F00",
      INIT_29 => X"7679797C010305090E11100D067F7A7164606771797A7C0D231B0800706A7C13",
      INIT_2A => X"030303030201007F7C7A797A7B7C7D7E000406070706050403017E7A78787674",
      INIT_2B => X"007F7E7E7F7F7F7E7E7F000001010101010101007F7E7E7D7D7D7E7E7E7F0002",
      INIT_2C => X"14047F007F007F007F007F007F007F007F007F7F7F7F00000000007F7F7F7F7F",
      INIT_2D => X"7276797B7F0307090D11100B09027B776B60636E777C7B7F18251104796A6F0B",
      INIT_2E => X"02030303020201007D7B797A7B7C7C7D7F020406060605050503007D79787774",
      INIT_2F => X"007F7F7E7F7F7F7F7E7E7F000001010101010100007F7E7E7D7D7D7D7E7F0001",
      INIT_30 => X"160B7F007F007F007F007F0000007F7F7F007F7F7F7F00000000007F7F7F7F00",
      INIT_31 => X"7171777B7D02080A0B10110A06047E797263606A747C7E7A08241D080070697D",
      INIT_32 => X"02030403030201007E7C7A797A7C7C7D7E7F0305060605050505027F7B787776",
      INIT_33 => X"00007F7E7E7F7F7F7E7E7F7F0001010101010101007F7E7E7D7D7D7D7D7E7F00",
      INIT_34 => X"101201007F007F007F7F007F007F007F000000007F7F0000000000007F7F7F7F",
      INIT_35 => X"7470737A7E01070B0B0E110C0403017B76695F66727C7F7B7C18250F04786871",
      INIT_36 => X"02030403030201007F7D7B7A7A7B7D7D7D7E010406060505050604017D787776",
      INIT_37 => X"01007F7E7E7E7F7F7F7E7E7F000101010101010101007F7E7D7D7D7D7D7E7F00",
      INIT_38 => X"0816047F007F007F007F007F007F007F007F007F7F7F7F00000000007F7F7F7F",
      INIT_39 => X"757271787F02050A0C0C0F0E0500017D786E6162707B007E770A2618067E6C69",
      INIT_3A => X"01030404030201007F7E7C7A7A7B7D7D7D7E000306060505050505027D797676",
      INIT_3B => X"0000007F7E7E7F7F7F7E7E7F000001010101010101007F7E7D7D7D7D7D7E7E00",
      INIT_3C => X"7F17087F007F007F007F007F007F007F7F00007F7F7F7F7F000000007F7F7F7F",
      INIT_3D => X"767472767E0304090C0C0F0F067E7F7D797264606E7B0101777F221F09027066",
      INIT_3E => X"01030404030201007F7E7C7A7A7A7D7D7D7E000205070505050505027E797675",
      INIT_3F => X"0000007F7E7E7F7F7F7F7E7F000001010101010101007F7E7D7D7D7D7D7E7E00",
      INIT_40 => X"79170C7F007F007F007F007F0000007F7F7F7F00007F7F00000000007F7F7F7F",
      INIT_41 => X"767674767D0304070C0D0F0F077D7D7C7975675E6D7C010377791C230C047465",
      INIT_42 => X"0102040403020100007E7C7B7A7A7C7E7E7E7F0205070505050404027E797776",
      INIT_43 => X"0000007F7E7E7F7F7F7F7F7F000001010100010101007F7E7D7D7D7D7E7E7F00",
      INIT_44 => X"76150D7F007F007F007F007F0000007F7F000000007F7F7F000000007F7F7F7F",
      INIT_45 => X"767776767C0203070C0D0F0F067D7C7A7977685E6D7C0204797517240F067764",
      INIT_46 => X"01020404030201007F7E7C7B7A7A7C7E7E7F000205070504040303017E7A7776",
      INIT_47 => X"0000007F7E7E7E7F7F7F7F7F000001010100000100007F7E7D7D7D7D7E7E7F00",
      INIT_48 => X"75150D7F007F007F007F007F00007F7F7F0000007F7F7F7F000000007F7F7F7F",
      INIT_49 => X"777877777B0103080D0E0F0E057D7C787878695F6E7D03067973142310077765",
      INIT_4A => X"01020404030200007F7E7C7B7A7A7D7F7F7F000205060504040202017E7A7877",
      INIT_4B => X"0000007F7E7E7F7F7F7F7F7F000001010100000000007F7E7D7D7D7E7E7E7F00",
      INIT_4C => X"78150B7F007F007F007F007F00007F7F7F000000007F7F7F00000000007F7F7F",
      INIT_4D => X"787977777B0004090D0D0E0D047D7B7678786960707E04077974142110077665",
      INIT_4E => X"010204040301007F7F7D7C7B7A7B7D7F7F00000205060403030101017E7A7877",
      INIT_4F => X"0000007F7E7E7F7F007F7F7F000101010000000000007F7E7D7D7D7E7E7E7F00",
      INIT_50 => X"7E16087F007F007F007F007F007F007F7F7F0000007F7F7F00000000007F7F7F",
      INIT_51 => X"787977777B01050A0D0D0E0C037C797477776862737F06087775161E0E067365",
      INIT_52 => X"010304040201007F7F7D7C7B7B7C7E000000000205050403020101017E7B7877",
      INIT_53 => X"0000007F7E7E7F7F007F7F7F000101010000000000007F7E7D7D7D7E7E7E7F00",
      INIT_54 => X"0514047F007F007F007F007F007F007F7F7F00007F7F7F7F000000007F7F7F7F",
      INIT_55 => X"787A78787C02070C0D0C0E0A017C77727776666576000808747A191A0C036F68",
      INIT_56 => X"0103040302007F7F7E7D7C7B7B7C7F000000010304040302010001017F7B7877",
      INIT_57 => X"00007F7F7E7E7F7F007F7F7F000101010000000000007F7E7D7D7E7E7E7F7F00",
      INIT_58 => X"0D10017F7F00007F007F007F007F007F7F7F00007F7F7F00000000007F7F7F7F",
      INIT_59 => X"797A78787D03090D0D0C0D087F7A74727873656A79020C0572011B150A7F6A6F",
      INIT_5A => X"0203030301007F7F7E7D7C7C7C7D7F000000010304040302010001017E7A7777",
      INIT_5B => X"00007F7E7E7E7F00007F7F7F000101000000000000007F7E7D7D7E7E7E7F0001",
      INIT_5C => X"12097F007F007F007F007F00007F7F7F7F7F00007F7F0000000000007F7F7F7F",
      INIT_5D => X"7A7A77797F050B0D0C0C0C057D787172786E65707C050E00740B190F0878697B",
      INIT_5E => X"0203030201007F7F7E7D7C7C7C7E7F000000010304030202000102017D797777",
      INIT_5F => X"00007F7E7E7F7F007F7F7F000001010000000000007F7E7E7D7D7E7E7E7F0001",
      INIT_60 => X"10037F007F007F007F007F007F007F7F7F0000007F7F00000000007F7F7F7F7F",
      INIT_61 => X"7B79777B02080D0D0B0C0A027C756F74766A69767E0B0D797B13130B036F6E08",
      INIT_62 => X"0203020100007F7F7D7D7C7C7D7E7F0000000103040302010001027F7C787779",
      INIT_63 => X"007F7F7E7E7F7F7F7F7F7F000001010000000000007F7E7D7D7E7E7E7F7F0001",
      INIT_64 => X"097F007F007F007F000000007F7F7F7F7F7F007F7F00000000007F7F7F7F7F7F",
      INIT_65 => X"7A78797E050B0D0B0B0C067E79706F77716970790310067807140D097A6C7B0F",
      INIT_66 => X"0202020100007F7E7D7D7C7C7D7F7F0000000203030202000102017E7A77787A",
      INIT_67 => X"007F7F7E7E7F7F7F7F7F7F0001010100000000007F7E7E7D7D7E7E7E7F000102",
      INIT_68 => X"027F007F007F007F007F007F007F7F7F7F00007F0000000000007F7F7F7F7F7F",
      INIT_69 => X"79787B02090E0C0A0B0A027C746E73756C6C757C0B0F7E7F0F0D09037172080D",
      INIT_6A => X"02020101007F7F7E7D7D7C7D7E7F0000000103030302010001017F7C7977797A",
      INIT_6B => X"007F7F7E7F7F7F7F7F7F000001010101010000007F7E7D7D7D7E7E7E7F000102",
      INIT_6C => X"7F007F007F007F007F0000007F7F7F7F7F7F7F0000000000007F7F7F7F00007F",
      INIT_6D => X"797A7F050D0D0A0A0B057F786F7075706C72780411077E090D08067970000E06",
      INIT_6E => X"02020100007F7E7E7D7D7D7E7E7F0000000203030302000101007D7A78787A7A",
      INIT_6F => X"7F7F7E7F7F7F7F7F7F7F0000010101010100007F7E7E7E7D7E7E7E7F00010102",
      INIT_70 => X"007F007F007F7F007F007F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F0000",
      INIT_71 => X"7A7D020A0E0A090B07017C726E73726E71757D0D0D01060C06067F727A0B0800",
      INIT_72 => X"020101007F7E7E7E7D7D7D7E7F0000000203030302010001007E7C79787A7A79",
      INIT_73 => X"7F7F7F7F7F7F7F7F7F000001010101010000007F7E7E7E7E7E7E7E7F00010202",
      INIT_74 => X"007F007F007F007F007F007F7F7F7F7F7F7F0000000000007F7F7F7F7F00007F",
      INIT_75 => X"7D01070D0C090A08037E766E71736F717579081006050B0603027677080A017F",
      INIT_76 => X"0101007F7F7E7E7D7D7D7E7E7F00010103030302010000007E7C7A787A7A797A",
      INIT_77 => X"7F7F7F7F7F7F7F7F7F0000000001010000007F7F7E7E7E7E7E7E7F0000010202",
      INIT_78 => X"7F007F007F007F007F007F7F7F7F7F7F7F0000000000007F7F7F7F7F7F000000",
      INIT_79 => X"00050B0C0909090400796F707370717677020E0A060B0601027A77040A030000",
      INIT_7A => X"0100007F7E7D7D7D7D7E7F7F00010202030302010000007E7D7B79797A797A7D",
      INIT_7B => X"7F7F7F7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F000001010101",
      INIT_7C => X"007F007F007F007F007F7F7F7F7F7F7F000000000000007F7F7F000000000000",
      INIT_7D => X"03090C0A090904017B726F72717176787E0B0C080B0700007C7802090400007F",
      INIT_7E => X"00007F7E7D7D7D7D7E7E7F000102030302020200007F7E7D7B7A7A7A7A7A7C7F",
      INIT_7F => X"7F7F7F7F7F7F7F0000000000000000007F7F7F7E7E7E7E7F7F00000101010101",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\,
      DOADO(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7F007F007F007F007F7F7F7F7F7F7F7F000000000000007F7F7F7F0000000000",
      INIT_01 => X"080B0A090805017D746F71717176797C070C0A0B08007E7D7A01080400007F00",
      INIT_02 => X"7F7F7E7D7D7D7D7E7E7F000102030303020201007F7E7D7C7A7A7A7A7A7C7F03",
      INIT_03 => X"7F7F7F7F7F0000000000000000007F7F7F7F7F7E7E7E7F7F0000010101010100",
      INIT_04 => X"007F000000007F7F7F7F7F7F7F7F7F0000000000007F7F00007F7F0000000000",
      INIT_05 => X"0A0A090805017E777171727175797C040B0B0C08017D7C7B01070400007F007F",
      INIT_06 => X"7E7D7D7D7D7D7E7F7F000102030303020201007F7E7D7C7A7A7A7B7B7C7F0307",
      INIT_07 => X"7F7F7F7F0000000000000000007F7F7F7F7E7E7E7E7F7F00010101010101007F",
      INIT_08 => X"7F7F007F007F007F007F7F7F7F7F00000000007F7F7F0000007F7F0000000000",
      INIT_09 => X"0A090806027E787370717375797C03090C0D08017D7B7C01060400007F007F7F",
      INIT_0A => X"7D7D7D7D7D7E7F7F000102020303020201007F7E7D7C7B7A7A7B7B7C7F020609",
      INIT_0B => X"7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F00010101020101007F7E",
      INIT_0C => X"7F007F007F007F007F7F7F7F7F0000000000007F000000000000000000000000",
      INIT_0D => X"090805027E797471717376787C02070B0D08027D7A7C0206040100007F007F00",
      INIT_0E => X"7D7C7C7D7E7E7F000102030303020201007F7E7D7C7B7B7A7A7B7D7F02060809",
      INIT_0F => X"7F7F0000000000000000007F7F7E7E7E7E7E7E7E7F0001010202010100007F7E",
      INIT_10 => X"007F007F7F7F007F7F7F7F7F00000000007F7F7F0000007F7F0000000000007F",
      INIT_11 => X"0805027E7A7672717477787C01050B0E08027E7A7B0206030100007F007F007F",
      INIT_12 => X"7C7C7D7D7E7F00010203030202010101007E7D7C7B7B7B7B7C7D7F0205070809",
      INIT_13 => X"7F000000000000000000007F7F7E7E7E7E7E7E7F0000010102020101007F7E7D",
      INIT_14 => X"00007F7F7F007F7F7F7F7F00000000007F7F7F00000000000000000000000000",
      INIT_15 => X"05027F7A7773717478787C01040A0D08027E7A7B0206030100007F007F000000",
      INIT_16 => X"7D7D7D7D7E7F000102030202020101007E7D7C7B7B7B7B7C7D7F010507080807",
      INIT_17 => X"7F0000000000000000007F7F7E7E7E7E7E7E7F7F0001010101010101007F7E7D",
      INIT_18 => X"00007F7F7F7F7F7F7F7F00000000007F7F7F7F000000000000000000007F7F00",
      INIT_19 => X"027F7B7874727478797C0104090D08017F7B7B020603000000007F007F000000",
      INIT_1A => X"7D7E7E7E7F7F0101020202020101007E7D7C7C7B7B7B7C7D7F01040607080704",
      INIT_1B => X"000000000000000000007F7F7E7E7E7E7E7F7F0000010101010101007F7E7E7D",
      INIT_1C => X"007F7F7F7F7F7F7F000000000000007F7F00000000000000000000000000007F",
      INIT_1D => X"7F7B78767274797A7C0104080C08017F7C7B010603000000007F007F007F0000",
      INIT_1E => X"7E7E7E7E7F0001010102020201007E7D7C7C7C7C7C7C7D7F0104060708070402",
      INIT_1F => X"0000000000000000007F7F7F7E7E7E7F7F7F7F0000000001000000007F7E7E7E",
      INIT_20 => X"7F7F7F7F7F7F7F7F0000000000007F7F007F000000000000000000000000007F",
      INIT_21 => X"7B79767475797A7C0003070B08017F7C7B010603000000007F007F0000000000",
      INIT_22 => X"7F7F7F7F7F00000101010101007F7D7D7C7C7C7C7C7D7F01040506070704027F",
      INIT_23 => X"00000000000000007F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F",
      INIT_24 => X"7F007F7F7F7F7F00000000000000000000000000000000000000000000007F7F",
      INIT_25 => X"797775757A7B7C0003060A0701007D7B000503000000007F007F00000000007F",
      INIT_26 => X"0000000000000000000000007F7E7D7D7D7C7C7C7E7F01030505060604017F7C",
      INIT_27 => X"7F0000000000007F7F7F7F7F7F7F7F7F000000000000007F7F7F7F7F7F7F0000",
      INIT_28 => X"007F7F7F7F7F0000000000007F0000007F7F000000000000000000007F7F7F7F",
      INIT_29 => X"7876767A7C7C000306090701007E7C7F0403000000007F007F000000007F007F",
      INIT_2A => X"000101010100007F7F7F7F7E7D7E7E7D7D7D7C7D7F0003050506060401007C7A",
      INIT_2B => X"00000000007F7F7F7F7F7F7F7F7F7F000000000000007F7F7E7E7E7E7F7F0000",
      INIT_2C => X"7F7F7F7F7F00000000007F7F7F0000007F000000000000007F7F7F7F7F7F7F7F",
      INIT_2D => X"77777A7C7C7F0305080601007F7C7F0403000000000000007F007F007F007F00",
      INIT_2E => X"010102020100007F7E7E7D7D7D7D7E7E7E7E7E7F0002040505050401007D7A79",
      INIT_2F => X"00007F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7E7E7E7E7F7F0000",
      INIT_30 => X"007F7F7F000000007F7F7F7F0000000000000000000000007F7F7F7F7F7F7F7F",
      INIT_31 => X"777A7D7D7F0205070601007F7D7E030300000000007F007F007F007F007F7F7F",
      INIT_32 => X"010202020101007F7E7D7C7C7C7C7D7E7E7F000001030404050401007D7B7978",
      INIT_33 => X"007F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7E7E7E7E7E7F7F0001",
      INIT_34 => X"7F7F7F000000007F7F7F7F7F00000000000000000000007F7F7F7F7F7F7F7F7F",
      INIT_35 => X"7A7D7D7F020406050100007E7E020301000000007F007F007F007F007F7F7F7F",
      INIT_36 => X"010202020201007F7E7C7B7B7C7C7D7D7F000102030303040302007E7C7A7978",
      INIT_37 => X"007F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7E7E7E7E7E7F7F0000",
      INIT_38 => X"7F7F0000000000007F7F7F00000000000000000000000000007F7F7F7F7F7F00",
      INIT_39 => X"7D7E7F020405040200007F7E010301000000007F007F00000000007F7F00007F",
      INIT_3A => X"010102020201007F7E7C7C7B7B7C7C7D7F0002040403030301007E7C7B7A797B",
      INIT_3B => X"7F7F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7E7E7E7E7E7E7F7F0000",
      INIT_3C => X"00000000000000007F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F00",
      INIT_3D => X"7E7F010404040200007F7E000201000000007F0000000000007F7F7F007F007F",
      INIT_3E => X"00010101020101007E7E7D7C7B7B7C7D7E000204040403017F7E7D7C7B7B7B7D",
      INIT_3F => X"7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7E7E7F7F7F7F7F7F00",
      INIT_40 => X"000000000000000000000000000000000000000000000000007F7F7F7F7F0000",
      INIT_41 => X"7F01030403020000007F00020100000000000000000000000000000000000000",
      INIT_42 => X"7F00000101010100007F7E7D7C7C7C7D7E000102040403017E7D7B7B7B7C7D7E",
      INIT_43 => X"7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F",
      INIT_44 => X"0000000000000000000000007F7F7F0000000000000000007F7F7F7F7F7F0000",
      INIT_45 => X"01030403020000007F7F0101000000000000000000000000007F007F007F7F00",
      INIT_46 => X"7F7F7F000000010101007F7F7E7D7C7D7D7F7F00020302017F7C7B7B7C7D7F00",
      INIT_47 => X"0000007F7F7F7F7F7F7F7F7F000000000000007F7F7F7F7F007F7F7F7F7F7F7E",
      INIT_48 => X"0000000000000000000000007F7F7F7F7F7F00000000000000000000007F0000",
      INIT_49 => X"030403020100007F7F0101000000000000007F00000000000000007F00000000",
      INIT_4A => X"7E7E7E7E7F00010102010100007E7D7D7D7D7D7E7F000101007E7C7C7D7E7F01",
      INIT_4B => X"00000000007F7F7F7F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7E7E",
      INIT_4C => X"7F0000000000000000000000007F7F7F7F7F7F7F0000000000000000007F7F7F",
      INIT_4D => X"040302010000007F000100000000000000000000000000000000000000000000",
      INIT_4E => X"7D7D7D7D7E7F00020202020201007F7D7C7C7C7C7C7D7E0001017F7E7D7E0002",
      INIT_4F => X"00000000000000007F7F7F7F7F7F7F7F7F7F000000000000000000007F7F7E7E",
      INIT_50 => X"00007F7F000000000000000000007F7F7F7F7F0000000000000000000000007F",
      INIT_51 => X"0302020100007F0001000000000000000000007F000000000000000000000000",
      INIT_52 => X"7D7C7C7C7D7E0001020304040302007F7D7B7A7A7A7B7C7D000303017F7E0002",
      INIT_53 => X"7F00000000000000007F7F7F7F7E7E7F7F7F7F0000000101010100007F7F7E7E",
      INIT_54 => X"7F007F7F7F0000000000000000007F7F7F7F7F7F7F00000000000000007F7F7F",
      INIT_55 => X"0201010101000000000000000000000000007F007F7F0000000000000000007F",
      INIT_56 => X"7D7C7C7C7D7E7F0002030505040302007D7B797879797A7C7E020605017E0002",
      INIT_57 => X"7F0000000000000000007F7F7E7E7E7E7F7F7F000000010101010100007F7E7E",
      INIT_58 => X"007F7F7F7F0000000000000000007F7F7F7F7F7F7F7F0000000000000000007F",
      INIT_59 => X"010100000101010100000000000000000000007F7F7F00000000000000000000",
      INIT_5A => X"7D7C7C7C7C7D7F0001030405050302017F7C79787879797A7D01050704010101",
      INIT_5B => X"7F7F00000000000000007F7F7F7E7E7E7E7F7F000000010101010101007F7E7E",
      INIT_5C => X"00007F7F0000000000000000000000007F7F7F7F7F7F0000000000000000007F",
      INIT_5D => X"0100007F7F0102010000000000000000000000007F7F00000000000000000000",
      INIT_5E => X"7D7D7C7C7D7D7E7F0102030404040201007D7B79797979797A7F030404040302",
      INIT_5F => X"7F7F00000000000000007F7F7F7F7E7E7E7F7F7F0000000101010101007F7E7E",
      INIT_60 => X"00007F7F000000000000000000007F00007F7F7F7F7F7F7F0000000000000000",
      INIT_61 => X"0201007F7F00010201007F7F00000000000000007F7F7F7F007F7F7F00000000",
      INIT_62 => X"7E7D7D7D7D7D7E7F00010203030303017F7E7D7C7B7A797A7B7C7F0102040504",
      INIT_63 => X"7F7F0000000000000000007F7F7F7F7F7F7F7F7F000000000101010000007F7E",
      INIT_64 => X"00000000007F7F000000007F7F007F00007F7F7F7F7F7F7F7F7F000000000000",
      INIT_65 => X"040201007F000001020100007F0000000000007F7F7F7F7F007F7F7F7F000000",
      INIT_66 => X"7E7E7E7E7E7E7E7F7F00010101020201007F7F7E7D7C7B7B7C7C7B7D00020406",
      INIT_67 => X"7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F0000000000000000007F7F",
      INIT_68 => X"000000007F7F007F00007F7F7F0000000000000000007F7F7F7F7F7F00000000",
      INIT_69 => X"05050301007F7F0000020100007F00000000007F7F007F7F7F7F7F7F7F7F0000",
      INIT_6A => X"7F7F7F7F7F7F7F7F7F7F00007F00000000000000007E7E7D7C7B7A7A7C000103",
      INIT_6B => X"7F7F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F0000000000007F7F",
      INIT_6C => X"00000000007F7F7F000000007F00000000000000000000007F7F7F7F7F000000",
      INIT_6D => X"0204060402007F7F0000010200007F7F0000007F0000007F00007F7F7F7F0000",
      INIT_6E => X"0000000000007F7F7F7F7E7E7E7E7E7F7F0001010102017F7E7B7A7A7B7C7F01",
      INIT_6F => X"7F7F7F7F7F7F7F7F7F7F7F00000000000000007F7F7F7F7F7F7F7F7F7F7F0000",
      INIT_70 => X"0000000000007F7F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F00",
      INIT_71 => X"000104060402017F7F0000010201007F7F0000007F0000007F007F7F7F7F7F7F",
      INIT_72 => X"000101010000007F7F7E7E7D7D7C7C7D7F000102030304027F7D7B797A7A7B7D",
      INIT_73 => X"007F7F7F7F7F7F7F7F7F7F0000000000000000007F7F7F7F7E7E7E7F7F7F7F00",
      INIT_74 => X"000000000000007F7F7F7F7F7F7F000000000000000000007F7F7F7F7F7F7F00",
      INIT_75 => X"7C000103060503017F7E007F0002010000000000007F00007F00007F7F7F7F7F",
      INIT_76 => X"01010202010101007F7E7D7D7C7B7B7C7D7F000204050404027F7E7C79797A7A",
      INIT_77 => X"00007F7F7F7F7F7F7F7F7F7F0000000001010100007F7F7E7E7E7E7E7E7F7F00",
      INIT_78 => X"7F7F000000000000007F7F7F7F7F00000000000000000000007F7F7F7F7F7F7F",
      INIT_79 => X"797B7F000206060302007E7F7F0003020000000000007F0000000000007F7F7F",
      INIT_7A => X"01010202020201007F7E7D7C7C7B7B7B7C7E7F01030505040403007E7C79787A",
      INIT_7B => X"00007F7F7F7F7F7F7F7F7F7F7F0000000101010100007F7E7E7D7D7D7E7E7F00",
      INIT_7C => X"0000000000000000007F7F7F7F00000000000000000000000000007F7F7F7F7F",
      INIT_7D => X"7978797E000106080402007E7F7F7F03030000000000007F0000000000007F00",
      INIT_7E => X"0101020303020201007E7D7C7B7B7B7B7B7D7E0001030405050504007E7C7978",
      INIT_7F => X"0000007F7F7F7F7F7F7F7F7F7F0000000101010101007F7F7E7D7D7D7D7E7F7F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28\,
      DOADO(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOPADOP(0) => DOPADOP(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\(15 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(15 downto 0),
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized2\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized4\ is
  port (
    ram_douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized5\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOPADOP(0) => DOPADOP(0),
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\(15 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(15 downto 0),
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(6 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 8 to 8 );
  signal ram_douta : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ram_ena_inferred__0/i__n_0\ : STD_LOGIC;
  signal ram_ena_n_0 : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.design_1_spatial_audio_top_0_0_bindec_1
     port map (
      addra(3 downto 0) => addra(13 downto 10),
      ena_array(0) => ena_array(8)
    );
\has_mux_a.A\: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_mux_2
     port map (
      DOADO(7) => \ramloop[1].ram.r_n_0\,
      DOADO(6) => \ramloop[1].ram.r_n_1\,
      DOADO(5) => \ramloop[1].ram.r_n_2\,
      DOADO(4) => \ramloop[1].ram.r_n_3\,
      DOADO(3) => \ramloop[1].ram.r_n_4\,
      DOADO(2) => \ramloop[1].ram.r_n_5\,
      DOADO(1) => \ramloop[1].ram.r_n_6\,
      DOADO(0) => \ramloop[1].ram.r_n_7\,
      DOPADOP(0) => \ramloop[1].ram.r_n_8\,
      accumulator_reg(15) => \ramloop[2].ram.r_n_0\,
      accumulator_reg(14) => \ramloop[2].ram.r_n_1\,
      accumulator_reg(13) => \ramloop[2].ram.r_n_2\,
      accumulator_reg(12) => \ramloop[2].ram.r_n_3\,
      accumulator_reg(11) => \ramloop[2].ram.r_n_4\,
      accumulator_reg(10) => \ramloop[2].ram.r_n_5\,
      accumulator_reg(9) => \ramloop[2].ram.r_n_6\,
      accumulator_reg(8) => \ramloop[2].ram.r_n_7\,
      accumulator_reg(7) => \ramloop[2].ram.r_n_8\,
      accumulator_reg(6) => \ramloop[2].ram.r_n_9\,
      accumulator_reg(5) => \ramloop[2].ram.r_n_10\,
      accumulator_reg(4) => \ramloop[2].ram.r_n_11\,
      accumulator_reg(3) => \ramloop[2].ram.r_n_12\,
      accumulator_reg(2) => \ramloop[2].ram.r_n_13\,
      accumulator_reg(1) => \ramloop[2].ram.r_n_14\,
      accumulator_reg(0) => \ramloop[2].ram.r_n_15\,
      accumulator_reg_0(6) => \ramloop[3].ram.r_n_0\,
      accumulator_reg_0(5) => \ramloop[3].ram.r_n_1\,
      accumulator_reg_0(4) => \ramloop[3].ram.r_n_2\,
      accumulator_reg_0(3) => \ramloop[3].ram.r_n_3\,
      accumulator_reg_0(2) => \ramloop[3].ram.r_n_4\,
      accumulator_reg_0(1) => \ramloop[3].ram.r_n_5\,
      accumulator_reg_0(0) => \ramloop[3].ram.r_n_6\,
      accumulator_reg_1(6) => \ramloop[4].ram.r_n_0\,
      accumulator_reg_1(5) => \ramloop[4].ram.r_n_1\,
      accumulator_reg_1(4) => \ramloop[4].ram.r_n_2\,
      accumulator_reg_1(3) => \ramloop[4].ram.r_n_3\,
      accumulator_reg_1(2) => \ramloop[4].ram.r_n_4\,
      accumulator_reg_1(1) => \ramloop[4].ram.r_n_5\,
      accumulator_reg_1(0) => \ramloop[4].ram.r_n_6\,
      addra(3 downto 0) => addra(13 downto 10),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
ram_ena: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(12),
      I1 => addra(13),
      O => ram_ena_n_0
    );
\ram_ena_inferred__0/i_\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addra(13),
      I1 => addra(12),
      O => \ram_ena_inferred__0/i__n_0\
    );
\ramloop[0].ram.r\: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => ram_ena_n_0,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
\ramloop[1].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ram_ena_inferred__0/i__n_0\,
      DOADO(7) => \ramloop[1].ram.r_n_0\,
      DOADO(6) => \ramloop[1].ram.r_n_1\,
      DOADO(5) => \ramloop[1].ram.r_n_2\,
      DOADO(4) => \ramloop[1].ram.r_n_3\,
      DOADO(3) => \ramloop[1].ram.r_n_4\,
      DOADO(2) => \ramloop[1].ram.r_n_5\,
      DOADO(1) => \ramloop[1].ram.r_n_6\,
      DOADO(0) => \ramloop[1].ram.r_n_7\,
      DOPADOP(0) => \ramloop[1].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
\ramloop[2].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(15) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(14) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(13) => \ramloop[2].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(12) => \ramloop[2].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(11) => \ramloop[2].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(10) => \ramloop[2].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(9) => \ramloop[2].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(8) => \ramloop[2].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(7) => \ramloop[2].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(6) => \ramloop[2].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(5) => \ramloop[2].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(4) => \ramloop[2].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(3) => \ramloop[2].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(2) => \ramloop[2].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(1) => \ramloop[2].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(0) => \ramloop[2].ram.r_n_15\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      ena_array(0) => ena_array(8)
    );
\ramloop[3].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[3].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[3].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[3].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[3].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[3].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[3].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[3].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => ram_ena_n_0,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
\ramloop[4].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[4].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[4].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[4].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \ram_ena_inferred__0/i__n_0\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr__parameterized0\ : entity is "blk_mem_gen_generic_cstr";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr__parameterized0\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr__parameterized0\ is
  signal ena_array : STD_LOGIC_VECTOR ( 8 to 8 );
  signal ram_douta : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ram_ena_inferred__0/i__n_0\ : STD_LOGIC;
  signal ram_ena_n_0 : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.design_1_spatial_audio_top_0_0_bindec
     port map (
      addra(3 downto 0) => addra(13 downto 10),
      ena_array(0) => ena_array(8)
    );
\has_mux_a.A\: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_mux
     port map (
      DOADO(7) => \ramloop[1].ram.r_n_0\,
      DOADO(6) => \ramloop[1].ram.r_n_1\,
      DOADO(5) => \ramloop[1].ram.r_n_2\,
      DOADO(4) => \ramloop[1].ram.r_n_3\,
      DOADO(3) => \ramloop[1].ram.r_n_4\,
      DOADO(2) => \ramloop[1].ram.r_n_5\,
      DOADO(1) => \ramloop[1].ram.r_n_6\,
      DOADO(0) => \ramloop[1].ram.r_n_7\,
      DOPADOP(0) => \ramloop[1].ram.r_n_8\,
      accumulator_reg(15) => \ramloop[2].ram.r_n_0\,
      accumulator_reg(14) => \ramloop[2].ram.r_n_1\,
      accumulator_reg(13) => \ramloop[2].ram.r_n_2\,
      accumulator_reg(12) => \ramloop[2].ram.r_n_3\,
      accumulator_reg(11) => \ramloop[2].ram.r_n_4\,
      accumulator_reg(10) => \ramloop[2].ram.r_n_5\,
      accumulator_reg(9) => \ramloop[2].ram.r_n_6\,
      accumulator_reg(8) => \ramloop[2].ram.r_n_7\,
      accumulator_reg(7) => \ramloop[2].ram.r_n_8\,
      accumulator_reg(6) => \ramloop[2].ram.r_n_9\,
      accumulator_reg(5) => \ramloop[2].ram.r_n_10\,
      accumulator_reg(4) => \ramloop[2].ram.r_n_11\,
      accumulator_reg(3) => \ramloop[2].ram.r_n_12\,
      accumulator_reg(2) => \ramloop[2].ram.r_n_13\,
      accumulator_reg(1) => \ramloop[2].ram.r_n_14\,
      accumulator_reg(0) => \ramloop[2].ram.r_n_15\,
      accumulator_reg_0(6) => \ramloop[3].ram.r_n_0\,
      accumulator_reg_0(5) => \ramloop[3].ram.r_n_1\,
      accumulator_reg_0(4) => \ramloop[3].ram.r_n_2\,
      accumulator_reg_0(3) => \ramloop[3].ram.r_n_3\,
      accumulator_reg_0(2) => \ramloop[3].ram.r_n_4\,
      accumulator_reg_0(1) => \ramloop[3].ram.r_n_5\,
      accumulator_reg_0(0) => \ramloop[3].ram.r_n_6\,
      accumulator_reg_1(6) => \ramloop[4].ram.r_n_0\,
      accumulator_reg_1(5) => \ramloop[4].ram.r_n_1\,
      accumulator_reg_1(4) => \ramloop[4].ram.r_n_2\,
      accumulator_reg_1(3) => \ramloop[4].ram.r_n_3\,
      accumulator_reg_1(2) => \ramloop[4].ram.r_n_4\,
      accumulator_reg_1(1) => \ramloop[4].ram.r_n_5\,
      accumulator_reg_1(0) => \ramloop[4].ram.r_n_6\,
      addra(3 downto 0) => addra(13 downto 10),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
ram_ena: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(12),
      I1 => addra(13),
      O => ram_ena_n_0
    );
\ram_ena_inferred__0/i_\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addra(13),
      I1 => addra(12),
      O => \ram_ena_inferred__0/i__n_0\
    );
\ramloop[0].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => ram_ena_n_0,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ram_douta(8 downto 0) => ram_douta(8 downto 0)
    );
\ramloop[1].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ram_ena_inferred__0/i__n_0\,
      DOADO(7) => \ramloop[1].ram.r_n_0\,
      DOADO(6) => \ramloop[1].ram.r_n_1\,
      DOADO(5) => \ramloop[1].ram.r_n_2\,
      DOADO(4) => \ramloop[1].ram.r_n_3\,
      DOADO(3) => \ramloop[1].ram.r_n_4\,
      DOADO(2) => \ramloop[1].ram.r_n_5\,
      DOADO(1) => \ramloop[1].ram.r_n_6\,
      DOADO(0) => \ramloop[1].ram.r_n_7\,
      DOPADOP(0) => \ramloop[1].ram.r_n_8\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
\ramloop[2].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(15) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(14) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(13) => \ramloop[2].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(12) => \ramloop[2].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(11) => \ramloop[2].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(10) => \ramloop[2].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(9) => \ramloop[2].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(8) => \ramloop[2].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(7) => \ramloop[2].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(6) => \ramloop[2].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(5) => \ramloop[2].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(4) => \ramloop[2].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(3) => \ramloop[2].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(2) => \ramloop[2].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(1) => \ramloop[2].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(0) => \ramloop[2].ram.r_n_15\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka,
      ena_array(0) => ena_array(8)
    );
\ramloop[3].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[3].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[3].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[3].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[3].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[3].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[3].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[3].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => ram_ena_n_0,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
\ramloop[4].ram.r\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_prim_width__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[4].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[4].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[4].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \ram_ena_inferred__0/i__n_0\,
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end design_1_spatial_audio_top_0_0_blk_mem_gen_top;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_top__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_top__parameterized0\ : entity is "blk_mem_gen_top";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_top__parameterized0\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_top__parameterized0\ is
begin
\valid.cstr\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_generic_cstr__parameterized0\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth : entity is "blk_mem_gen_v8_4_2_synth";
end design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_top
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth__parameterized0\ : entity is "blk_mem_gen_v8_4_2_synth";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth__parameterized0\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth__parameterized0\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_top__parameterized0\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 13 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 14;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 14;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "Estimated Power for IP     :     4.286356 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "rom_hrtf_left.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "rom_hrtf_left.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 9216;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 9216;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 9216;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 9216;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "artix7";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 : entity is "blk_mem_gen_v8_4_2";
end design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 13 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 14;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 14;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "Estimated Power for IP     :     4.286356 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "rom_hrtf_right.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "rom_hrtf_right.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 9216;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 9216;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 9216;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 9216;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "artix7";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ : entity is "blk_mem_gen_v8_4_2";
end \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\;

architecture STRUCTURE of \design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2_synth__parameterized0\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_rom_hrtf_left is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spatial_audio_top_0_0_rom_hrtf_left : entity is "rom_hrtf_left,blk_mem_gen_v8_4_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_spatial_audio_top_0_0_rom_hrtf_left : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_rom_hrtf_left : entity is "rom_hrtf_left";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_spatial_audio_top_0_0_rom_hrtf_left : entity is "blk_mem_gen_v8_4_2,Vivado 2018.3";
end design_1_spatial_audio_top_0_0_rom_hrtf_left;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_rom_hrtf_left is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 14;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 14;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     4.286356 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "rom_hrtf_left.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "rom_hrtf_left.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 9216;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 9216;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 9216;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 9216;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => B"00000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(13 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(13 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(13 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(13 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_rom_hrtf_right is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spatial_audio_top_0_0_rom_hrtf_right : entity is "rom_hrtf_right,blk_mem_gen_v8_4_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_spatial_audio_top_0_0_rom_hrtf_right : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_rom_hrtf_right : entity is "rom_hrtf_right";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_spatial_audio_top_0_0_rom_hrtf_right : entity is "blk_mem_gen_v8_4_2,Vivado 2018.3";
end design_1_spatial_audio_top_0_0_rom_hrtf_right;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_rom_hrtf_right is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 14;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 14;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     4.286356 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "rom_hrtf_right.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "rom_hrtf_right.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 9216;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 9216;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 9216;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 9216;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.\design_1_spatial_audio_top_0_0_blk_mem_gen_v8_4_2__parameterized1\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => B"00000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(13 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(13 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(13 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(13 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0_spatial_audio_top is
  port (
    rx_sclk : out STD_LOGIC;
    tx_data : out STD_LOGIC;
    rx_lrck : out STD_LOGIC;
    locked : in STD_LOGIC;
    target_angle : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_audio : in STD_LOGIC;
    rx_data : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spatial_audio_top_0_0_spatial_audio_top : entity is "spatial_audio_top";
end design_1_spatial_audio_top_0_0_spatial_audio_top;

architecture STRUCTURE of design_1_spatial_audio_top_0_0_spatial_audio_top is
  signal RSTP : STD_LOGIC;
  signal addr_gen_n_1 : STD_LOGIC;
  signal addr_gen_n_2 : STD_LOGIC;
  signal audio_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal bram_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal coeff_l : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal coeff_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fir_left_n_7 : STD_LOGIC;
  signal fir_right_n_0 : STD_LOGIC;
  signal fir_right_n_10 : STD_LOGIC;
  signal fir_right_n_11 : STD_LOGIC;
  signal fir_right_n_12 : STD_LOGIC;
  signal fir_right_n_13 : STD_LOGIC;
  signal fir_right_n_14 : STD_LOGIC;
  signal fir_right_n_15 : STD_LOGIC;
  signal fir_right_n_16 : STD_LOGIC;
  signal fir_right_n_17 : STD_LOGIC;
  signal fir_right_n_18 : STD_LOGIC;
  signal fir_right_n_19 : STD_LOGIC;
  signal fir_right_n_2 : STD_LOGIC;
  signal fir_right_n_20 : STD_LOGIC;
  signal fir_right_n_21 : STD_LOGIC;
  signal fir_right_n_22 : STD_LOGIC;
  signal fir_right_n_23 : STD_LOGIC;
  signal fir_right_n_24 : STD_LOGIC;
  signal fir_right_n_25 : STD_LOGIC;
  signal fir_right_n_3 : STD_LOGIC;
  signal fir_right_n_4 : STD_LOGIC;
  signal fir_right_n_5 : STD_LOGIC;
  signal fir_right_n_6 : STD_LOGIC;
  signal fir_right_n_7 : STD_LOGIC;
  signal fir_right_n_8 : STD_LOGIC;
  signal fir_right_n_9 : STD_LOGIC;
  signal i2s_n_5 : STD_LOGIC;
  signal i2s_n_6 : STD_LOGIC;
  signal i2s_n_8 : STD_LOGIC;
  signal l_data_rx : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal new_sample : STD_LOGIC;
  signal pipe_audio_s1 : STD_LOGIC;
  signal r_data_rx : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal read_ptr_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_audio : STD_LOGIC;
  signal write_ptr_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rom_l : label is "rom_hrtf_left,blk_mem_gen_v8_4_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of rom_l : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of rom_l : label is "blk_mem_gen_v8_4_2,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of rom_r : label is "rom_hrtf_right,blk_mem_gen_v8_4_2,{}";
  attribute downgradeipidentifiedwarnings of rom_r : label is "yes";
  attribute x_core_info of rom_r : label is "blk_mem_gen_v8_4_2,Vivado 2018.3";
begin
addr_gen: entity work.design_1_spatial_audio_top_0_0_hrtf_address_generator
     port map (
      Q(13 downto 0) => bram_addr(13 downto 0),
      clk_audio => clk_audio,
      conv_en_reg_0 => addr_gen_n_1,
      conv_en_reg_1 => addr_gen_n_2,
      locked => locked,
      new_sample => new_sample,
      pipe_audio_s1 => pipe_audio_s1,
      rst_audio => rst_audio,
      target_angle(6 downto 0) => target_angle(6 downto 0)
    );
fir_left: entity work.design_1_spatial_audio_top_0_0_dsp_fir_folded
     port map (
      Q(6 downto 0) => write_ptr_reg(6 downto 0),
      RSTP => RSTP,
      accumulator_reg_0 => i2s_n_6,
      accumulator_reg_1 => fir_right_n_0,
      accumulator_reg_2(23 downto 0) => l_data_rx(23 downto 0),
      accumulator_reg_3 => i2s_n_5,
      accumulator_reg_4 => i2s_n_8,
      \audio_out_reg[23]_0\(23 downto 0) => audio_out(23 downto 0),
      clk_audio => clk_audio,
      douta(15 downto 0) => coeff_l(15 downto 0),
      new_sample => new_sample,
      pipe_audio_s1 => pipe_audio_s1,
      read_ptr_reg(0) => read_ptr_reg(0),
      \read_ptr_reg[0]_0\ => addr_gen_n_1,
      rst_audio => rst_audio,
      \write_ptr_reg[0]_0\ => fir_left_n_7
    );
fir_right: entity work.design_1_spatial_audio_top_0_0_dsp_fir_folded_0
     port map (
      Q(6 downto 0) => write_ptr_reg(6 downto 0),
      RSTP => RSTP,
      SR(0) => rst_audio,
      accumulator_reg_0 => i2s_n_6,
      accumulator_reg_1(23 downto 0) => r_data_rx(23 downto 0),
      accumulator_reg_2 => i2s_n_5,
      accumulator_reg_3 => i2s_n_8,
      \audio_out_reg[23]_0\(23) => fir_right_n_2,
      \audio_out_reg[23]_0\(22) => fir_right_n_3,
      \audio_out_reg[23]_0\(21) => fir_right_n_4,
      \audio_out_reg[23]_0\(20) => fir_right_n_5,
      \audio_out_reg[23]_0\(19) => fir_right_n_6,
      \audio_out_reg[23]_0\(18) => fir_right_n_7,
      \audio_out_reg[23]_0\(17) => fir_right_n_8,
      \audio_out_reg[23]_0\(16) => fir_right_n_9,
      \audio_out_reg[23]_0\(15) => fir_right_n_10,
      \audio_out_reg[23]_0\(14) => fir_right_n_11,
      \audio_out_reg[23]_0\(13) => fir_right_n_12,
      \audio_out_reg[23]_0\(12) => fir_right_n_13,
      \audio_out_reg[23]_0\(11) => fir_right_n_14,
      \audio_out_reg[23]_0\(10) => fir_right_n_15,
      \audio_out_reg[23]_0\(9) => fir_right_n_16,
      \audio_out_reg[23]_0\(8) => fir_right_n_17,
      \audio_out_reg[23]_0\(7) => fir_right_n_18,
      \audio_out_reg[23]_0\(6) => fir_right_n_19,
      \audio_out_reg[23]_0\(5) => fir_right_n_20,
      \audio_out_reg[23]_0\(4) => fir_right_n_21,
      \audio_out_reg[23]_0\(3) => fir_right_n_22,
      \audio_out_reg[23]_0\(2) => fir_right_n_23,
      \audio_out_reg[23]_0\(1) => fir_right_n_24,
      \audio_out_reg[23]_0\(0) => fir_right_n_25,
      clk_audio => clk_audio,
      douta(15 downto 0) => coeff_r(15 downto 0),
      locked => locked,
      new_sample => new_sample,
      pipe_audio_s1 => pipe_audio_s1,
      pipe_valid_s1_reg_0 => addr_gen_n_2,
      pipe_valid_s2_reg_0 => fir_right_n_0,
      \read_ptr_reg[0]_0\(0) => read_ptr_reg(0),
      \read_ptr_reg[0]_1\ => fir_left_n_7,
      \read_ptr_reg[5]_0\ => addr_gen_n_1
    );
i2s: entity work.design_1_spatial_audio_top_0_0_i2s_controller
     port map (
      Q(0) => write_ptr_reg(6),
      RSTP => RSTP,
      SR(0) => rst_audio,
      clk_audio => clk_audio,
      \l_data_rx_reg[23]_0\(23 downto 0) => l_data_rx(23 downto 0),
      locked => locked,
      locked_0 => i2s_n_5,
      locked_1 => i2s_n_8,
      new_sample => new_sample,
      new_sample_pulse_reg_0 => i2s_n_6,
      \r_data_rx_reg[23]_0\(23 downto 0) => r_data_rx(23 downto 0),
      rx_data => rx_data,
      rx_lrck => rx_lrck,
      sclk_reg_0 => rx_sclk,
      tx_data => tx_data,
      \tx_shift_reg[23]_0\(23) => fir_right_n_2,
      \tx_shift_reg[23]_0\(22) => fir_right_n_3,
      \tx_shift_reg[23]_0\(21) => fir_right_n_4,
      \tx_shift_reg[23]_0\(20) => fir_right_n_5,
      \tx_shift_reg[23]_0\(19) => fir_right_n_6,
      \tx_shift_reg[23]_0\(18) => fir_right_n_7,
      \tx_shift_reg[23]_0\(17) => fir_right_n_8,
      \tx_shift_reg[23]_0\(16) => fir_right_n_9,
      \tx_shift_reg[23]_0\(15) => fir_right_n_10,
      \tx_shift_reg[23]_0\(14) => fir_right_n_11,
      \tx_shift_reg[23]_0\(13) => fir_right_n_12,
      \tx_shift_reg[23]_0\(12) => fir_right_n_13,
      \tx_shift_reg[23]_0\(11) => fir_right_n_14,
      \tx_shift_reg[23]_0\(10) => fir_right_n_15,
      \tx_shift_reg[23]_0\(9) => fir_right_n_16,
      \tx_shift_reg[23]_0\(8) => fir_right_n_17,
      \tx_shift_reg[23]_0\(7) => fir_right_n_18,
      \tx_shift_reg[23]_0\(6) => fir_right_n_19,
      \tx_shift_reg[23]_0\(5) => fir_right_n_20,
      \tx_shift_reg[23]_0\(4) => fir_right_n_21,
      \tx_shift_reg[23]_0\(3) => fir_right_n_22,
      \tx_shift_reg[23]_0\(2) => fir_right_n_23,
      \tx_shift_reg[23]_0\(1) => fir_right_n_24,
      \tx_shift_reg[23]_0\(0) => fir_right_n_25,
      \tx_shift_reg[23]_1\(23 downto 0) => audio_out(23 downto 0)
    );
rom_l: entity work.design_1_spatial_audio_top_0_0_rom_hrtf_left
     port map (
      addra(13 downto 0) => bram_addr(13 downto 0),
      clka => clk_audio,
      douta(15 downto 0) => coeff_l(15 downto 0)
    );
rom_r: entity work.design_1_spatial_audio_top_0_0_rom_hrtf_right
     port map (
      addra(13 downto 0) => bram_addr(13 downto 0),
      clka => clk_audio,
      douta(15 downto 0) => coeff_r(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spatial_audio_top_0_0 is
  port (
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
    target_angle : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spatial_audio_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spatial_audio_top_0_0 : entity is "design_1_spatial_audio_top_0_0,spatial_audio_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_spatial_audio_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_spatial_audio_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_spatial_audio_top_0_0 : entity is "spatial_audio_top,Vivado 2018.3";
end design_1_spatial_audio_top_0_0;

architecture STRUCTURE of design_1_spatial_audio_top_0_0 is
  signal \^clk_audio\ : STD_LOGIC;
  signal \^rx_lrck\ : STD_LOGIC;
  signal \^tx_sclk\ : STD_LOGIC;
begin
  \^clk_audio\ <= clk_audio;
  rx_lrck <= \^rx_lrck\;
  rx_mclk <= \^clk_audio\;
  rx_sclk <= \^tx_sclk\;
  tx_lrck <= \^rx_lrck\;
  tx_mclk <= \^clk_audio\;
  tx_sclk <= \^tx_sclk\;
inst: entity work.design_1_spatial_audio_top_0_0_spatial_audio_top
     port map (
      clk_audio => \^clk_audio\,
      locked => locked,
      rx_data => rx_data,
      rx_lrck => \^rx_lrck\,
      rx_sclk => \^tx_sclk\,
      target_angle(6 downto 0) => target_angle(6 downto 0),
      tx_data => tx_data
    );
end STRUCTURE;
