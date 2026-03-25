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

## 7-Segment Display Constraints

# Channel 1: Segments (Matches gpio_io_o_0)
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[0] }]; # CA
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[1] }]; # CB
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[2] }]; # CC
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[3] }]; # CD
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[4] }]; # CE
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[5] }]; # CF
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[6] }]; # CG
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[7] }]; # DP

# Channel 2: Anodes (Matches gpio2_io_o_0)
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[0] }]; # AN0 (Right-most)
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[1] }]; # AN1
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[2] }]; # AN2
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[3] }]; # AN3
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[4] }]; # AN4
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[5] }]; # AN5
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[6] }]; # AN6
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { gpio2_io_o_0[7] }]; # AN7 (Left-most)