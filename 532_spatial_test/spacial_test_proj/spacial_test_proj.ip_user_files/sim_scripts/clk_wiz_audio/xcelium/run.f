-makelib xcelium_lib/xil_defaultlib -sv \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../spacial_test_proj.srcs/sources_1/ip/clk_wiz_audio/clk_wiz_audio_clk_wiz.v" \
  "../../../../spacial_test_proj.srcs/sources_1/ip/clk_wiz_audio/clk_wiz_audio.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

