## Clock Signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk_100mhz }];

## ---- Pmod I2S2 on JA ----
## DAC (pins 1-4)
set_property PACKAGE_PIN C17 [get_ports tx_mclk]   ;# JA1
set_property PACKAGE_PIN D18 [get_ports tx_lrck]   ;# JA2
set_property PACKAGE_PIN E18 [get_ports tx_sclk]   ;# JA3
set_property PACKAGE_PIN G17 [get_ports tx_data]   ;# JA4

## ADC (pins 7-10)
set_property PACKAGE_PIN D17 [get_ports rx_mclk]   ;# JA7
set_property PACKAGE_PIN E17 [get_ports rx_lrck]   ;# JA8
set_property PACKAGE_PIN F18 [get_ports rx_sclk]   ;# JA9
set_property PACKAGE_PIN G18 [get_ports rx_data]  ;# JA10

set_property IOSTANDARD LVCMOS33 [get_ports {tx_mclk tx_lrck tx_sclk tx_data rx_mclk rx_lrck rx_sclk rx_data}]


## ----------------------------------------------------------------------------
## Switches (SW0 - SW7) -> Controls 'target_angle'
## ----------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { target_angle[0] }];
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { target_angle[1] }];
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { target_angle[2] }];
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { target_angle[3] }];
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { target_angle[4] }];
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { target_angle[5] }];
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { target_angle[6] }];
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { target_angle[7] }];

## ----------------------------------------------------------------------------
## Reset Button (BTNC - Center Button)
## ----------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { reset_btn }];