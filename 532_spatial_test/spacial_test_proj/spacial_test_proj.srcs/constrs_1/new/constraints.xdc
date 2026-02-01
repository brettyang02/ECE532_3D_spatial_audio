## Clock Signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk_100mhz }];

## Reset Button (Use Center Button - BTNC)
## We use BTNC because it is Active High (Press = 1), matching your Verilog logic.
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { reset_btn }];

## Switches (SW0 - SW7) -> Controls 'target_angle'
## SW0 is LSB, SW7 is MSB.
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { target_angle[0] }];
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { target_angle[1] }];
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { target_angle[2] }];
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { target_angle[3] }];
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { target_angle[4] }];
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { target_angle[5] }];
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { target_angle[6] }];
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { target_angle[7] }];

## Pmod Header JA (For I2S Audio Pmod)
## We map the I2S signals here so you can eventually plug the Pmod in.
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { tx_mclk }]; # JA[1]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { tx_lrck }]; # JA[2]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { tx_sclk }]; # JA[3]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { tx_data }]; # JA[4]
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { rx_data }]; # JA[7]

## Configuration Properties (Standard for Nexys 4 DDR)
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]