## Clock Signal
#  -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz }];
# create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk_100mhz }];

# CDC
set_false_path -from [get_clocks -of_objects [get_pins design_1_i/clk_wiz_1/inst/clk_out1]] -to [get_clocks -of_objects [get_pins design_1_i/clk_wiz_1/inst/clk_out2]]

## ---- Pmod I2S2 on JA ----
## DAC (pins 1-4)
set_property PACKAGE_PIN C17 [get_ports tx_mclk]
set_property PACKAGE_PIN D18 [get_ports tx_lrck]
set_property PACKAGE_PIN E18 [get_ports tx_sclk]
set_property PACKAGE_PIN G17 [get_ports tx_data]

## ADC (pins 7-10)
set_property PACKAGE_PIN D17 [get_ports rx_mclk]
set_property PACKAGE_PIN E17 [get_ports rx_lrck]
set_property PACKAGE_PIN F18 [get_ports rx_sclk]
set_property PACKAGE_PIN G18 [get_ports rx_data]

set_property IOSTANDARD LVCMOS33 [get_ports tx_mclk]
set_property IOSTANDARD LVCMOS33 [get_ports tx_lrck]
set_property IOSTANDARD LVCMOS33 [get_ports tx_sclk]
set_property IOSTANDARD LVCMOS33 [get_ports tx_data]
set_property IOSTANDARD LVCMOS33 [get_ports rx_mclk]
set_property IOSTANDARD LVCMOS33 [get_ports rx_lrck]
set_property IOSTANDARD LVCMOS33 [get_ports rx_sclk]
set_property IOSTANDARD LVCMOS33 [get_ports rx_data]

##USB-RS232 Interface
set_property-dict { PACKAGE_PIN C4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_rxd }];
set_property-dict { PACKAGE_PIN D4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_txd }];

## ----------------------------------------------------------------------------
## Switches (SW0 - SW7) -> Controls 'target_angle'
## ----------------------------------------------------------------------------
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { target_angle[0] }];
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { target_angle[1] }];
#set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { target_angle[2] }];
#set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { target_angle[3] }];
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { target_angle[4] }];
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { target_angle[5] }];
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { target_angle[6] }];
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { target_angle[7] }];

## ----------------------------------------------------------------------------
## Reset Button (CPU Reset)
## ----------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports reset_btn]
