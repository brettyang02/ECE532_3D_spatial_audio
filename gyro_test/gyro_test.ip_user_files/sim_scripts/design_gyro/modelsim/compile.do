vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/lib_fifo_v1_0_12
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_quad_spi_v3_2_17
vlib modelsim_lib/msim/axi_gpio_v2_0_20
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/microblaze_v11_0_0
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/axi_intc_v4_1_12
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/mdm_v3_2_15
vlib modelsim_lib/msim/axi_uartlite_v2_0_22

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 modelsim_lib/msim/lib_fifo_v1_0_12
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_17 modelsim_lib/msim/axi_quad_spi_v3_2_17
vmap axi_gpio_v2_0_20 modelsim_lib/msim/axi_gpio_v2_0_20
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap microblaze_v11_0_0 modelsim_lib/msim/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap axi_intc_v4_1_12 modelsim_lib/msim/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap mdm_v3_2_15 modelsim_lib/msim/mdm_v3_2_15
vmap axi_uartlite_v2_0_22 modelsim_lib/msim/axi_uartlite_v2_0_22

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_pmod_bridge_0_0/src/pmod_concat.v" \
"../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_pmod_bridge_0_0/sim/PmodGYRO_pmod_bridge_0_0.v" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_17 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/sim/PmodGYRO_axi_quad_spi_0_0.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_gpio_0_0/sim/PmodGYRO_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/6951/src/PmodGYRO.v" \
"../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/sim/design_gyro_PmodGYRO_0_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_proc_sys_reset_0_0/sim/design_gyro_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../bd/design_gyro/sim/design_gyro.v" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_microblaze_0_0/sim/design_gyro_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_dlmb_v10_2/sim/design_gyro_dlmb_v10_2.vhd" \
"../../../bd/design_gyro/ip/design_gyro_ilmb_v10_2/sim/design_gyro_ilmb_v10_2.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_dlmb_bram_if_cntlr_2/sim/design_gyro_dlmb_bram_if_cntlr_2.vhd" \
"../../../bd/design_gyro/ip/design_gyro_ilmb_bram_if_cntlr_2/sim/design_gyro_ilmb_bram_if_cntlr_2.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../bd/design_gyro/ip/design_gyro_lmb_bram_2/sim/design_gyro_lmb_bram_2.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../bd/design_gyro/ip/design_gyro_xbar_1/sim/design_gyro_xbar_1.v" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_microblaze_0_axi_intc_1/sim/design_gyro_microblaze_0_axi_intc_1.vhd" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../bd/design_gyro/ip/design_gyro_microblaze_0_xlconcat_1/sim/design_gyro_microblaze_0_xlconcat_1.v" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_mdm_1_2/sim/design_gyro_mdm_1_2.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl" "+incdir+../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/85a3" \
"../../../bd/design_gyro/ip/design_gyro_clk_wiz_1_0/design_gyro_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_gyro/ip/design_gyro_clk_wiz_1_0/design_gyro_clk_wiz_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_rst_clk_wiz_1_100M_1/sim/design_gyro_rst_clk_wiz_1_100M_1.vhd" \

vcom -work axi_uartlite_v2_0_22 -64 -93 \
"../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_gyro/ip/design_gyro_axi_uartlite_0_0/sim/design_gyro_axi_uartlite_0_0.vhd" \
"../../../bd/design_gyro/ip/design_gyro_axi_quad_spi_0_0/sim/design_gyro_axi_quad_spi_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

