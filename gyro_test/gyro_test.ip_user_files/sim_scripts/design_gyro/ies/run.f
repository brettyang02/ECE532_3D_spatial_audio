-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_pmod_bridge_0_0/src/pmod_concat.v" \
  "../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_pmod_bridge_0_0/sim/PmodGYRO_pmod_bridge_0_0.v" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_12 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_12 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_quad_spi_v3_2_17 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_quad_spi_0_0/sim/PmodGYRO_axi_quad_spi_0_0.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_20 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/src/PmodGYRO_axi_gpio_0_0/sim/PmodGYRO_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/6951/src/PmodGYRO.v" \
  "../../../bd/design_gyro/ip/design_gyro_PmodGYRO_0_0/sim/design_gyro_PmodGYRO_0_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_proc_sys_reset_0_0/sim/design_gyro_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/sim/design_gyro.v" \
-endlib
-makelib ies_lib/microblaze_v11_0_0 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_microblaze_0_0/sim/design_gyro_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_dlmb_v10_2/sim/design_gyro_dlmb_v10_2.vhd" \
  "../../../bd/design_gyro/ip/design_gyro_ilmb_v10_2/sim/design_gyro_ilmb_v10_2.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_dlmb_bram_if_cntlr_2/sim/design_gyro_dlmb_bram_if_cntlr_2.vhd" \
  "../../../bd/design_gyro/ip/design_gyro_ilmb_bram_if_cntlr_2/sim/design_gyro_ilmb_bram_if_cntlr_2.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_lmb_bram_2/sim/design_gyro_lmb_bram_2.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_19 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_xbar_1/sim/design_gyro_xbar_1.v" \
-endlib
-makelib ies_lib/axi_intc_v4_1_12 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_microblaze_0_axi_intc_1/sim/design_gyro_microblaze_0_axi_intc_1.vhd" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_microblaze_0_xlconcat_1/sim/design_gyro_microblaze_0_xlconcat_1.v" \
-endlib
-makelib ies_lib/mdm_v3_2_15 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_mdm_1_2/sim/design_gyro_mdm_1_2.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_clk_wiz_1_0/design_gyro_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/design_gyro/ip/design_gyro_clk_wiz_1_0/design_gyro_clk_wiz_1_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_rst_clk_wiz_1_100M_1/sim/design_gyro_rst_clk_wiz_1_100M_1.vhd" \
-endlib
-makelib ies_lib/axi_uartlite_v2_0_22 \
  "../../../../gyro_test.srcs/sources_1/bd/design_gyro/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_gyro/ip/design_gyro_axi_uartlite_0_0/sim/design_gyro_axi_uartlite_0_0.vhd" \
  "../../../bd/design_gyro/ip/design_gyro_axi_quad_spi_0_0/sim/design_gyro_axi_quad_spi_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

