## ============================================================
## Nexys4 DDR: 100 MHz system clock
## ============================================================
set_property PACKAGE_PIN E3 [get_ports clk_100mhz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100mhz]
create_clock -name clk_100mhz -period 10.000 [get_ports clk_100mhz]

## ============================================================
## PMOD JA pin mapping (Nexys4 DDR)
## JA1=C17, JA2=D18, JA3=E18, JA4=G17
## JA7=D17, JA8=E17, JA9=F18, JA10=G18
## ============================================================

## ---- Pmod I2S2 on JA ----
## DAC (pins 1-4)
set_property PACKAGE_PIN C17 [get_ports da_mclk]   ;# JA1
set_property PACKAGE_PIN D18 [get_ports da_lrck]   ;# JA2
set_property PACKAGE_PIN E18 [get_ports da_sclk]   ;# JA3
set_property PACKAGE_PIN G17 [get_ports da_sdin]   ;# JA4

## ADC (pins 7-10)
set_property PACKAGE_PIN D17 [get_ports ad_mclk]   ;# JA7
set_property PACKAGE_PIN E17 [get_ports ad_lrck]   ;# JA8
set_property PACKAGE_PIN F18 [get_ports ad_sclk]   ;# JA9
set_property PACKAGE_PIN G18 [get_ports ad_sdout]  ;# JA10

set_property IOSTANDARD LVCMOS33 [get_ports {da_mclk da_lrck da_sclk da_sdin ad_mclk ad_lrck ad_sclk ad_sdout}]
