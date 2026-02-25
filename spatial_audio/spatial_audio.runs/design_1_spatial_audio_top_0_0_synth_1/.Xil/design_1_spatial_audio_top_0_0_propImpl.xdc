set_property SRC_FILE_INFO {cfile:d:/Vivado_Projects/ECE532_SpatialAudio/ECE532_SpatialAudio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/Src/Constraint/constraints.xdc rfile:../../../ECE532_SpatialAudio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/Src/Constraint/constraints.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:d:/Vivado_Projects/ECE532_SpatialAudio/ECE532_SpatialAudio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/Vivado_WorkDir/spatial_audio.srcs/sources_1/ip/clk_wiz_audio/clk_wiz_audio.xdc rfile:../../../ECE532_SpatialAudio.srcs/sources_1/bd/design_1/ip/design_1_spatial_audio_top_0_0/Vivado_WorkDir/spatial_audio.srcs/sources_1/ip/clk_wiz_audio/clk_wiz_audio.xdc id:2 order:EARLY scoped_inst:inst/clk_gen/inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz }];
set_property src_info {type:SCOPED_XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C17 [get_ports tx_mclk]   ;# JA1
set_property src_info {type:SCOPED_XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D18 [get_ports tx_lrck]   ;# JA2
set_property src_info {type:SCOPED_XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E18 [get_ports tx_sclk]   ;# JA3
set_property src_info {type:SCOPED_XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G17 [get_ports tx_data]   ;# JA4
set_property src_info {type:SCOPED_XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D17 [get_ports rx_mclk]   ;# JA7
set_property src_info {type:SCOPED_XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E17 [get_ports rx_lrck]   ;# JA8
set_property src_info {type:SCOPED_XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F18 [get_ports rx_sclk]   ;# JA9
set_property src_info {type:SCOPED_XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G18 [get_ports rx_data]  ;# JA10
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property-dict { PACKAGE_PIN C4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_rxd }];
set_property src_info {type:SCOPED_XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property-dict { PACKAGE_PIN D4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_txd }];
set_property src_info {type:SCOPED_XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { reset_btn }];
current_instance
current_instance inst/clk_gen/inst
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
