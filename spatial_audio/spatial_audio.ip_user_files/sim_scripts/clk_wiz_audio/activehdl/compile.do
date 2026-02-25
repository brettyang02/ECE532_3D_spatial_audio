vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ECE532_SpatialAudio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/Vivado_WorkDir/spatial_audio.srcs/sources_1/ip/clk_wiz_audio" "+incdir+../../../../ECE532_SpatialAudio.srcs/sources_1/ip/clk_wiz_audio" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

