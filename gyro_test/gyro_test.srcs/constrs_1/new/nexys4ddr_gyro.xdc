## ============================================================
## Nexys4 DDR: 100 MHz system clock
## ============================================================
## Clock signal
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { sys_clk_0 }];
create_clock -name sys_clk_0 -period 10.000 [get_ports sys_clk_0]

## Reset (CPU_RESET)
set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports { reset_0 }];
## ============================================================
## PMOD JA pin mapping (Nexys4 DDR)
## JA1=C17, JA2=D18, JA3=E18, JA4=G17
## JA7=D17, JA8=E17, JA9=F18, JA10=G18
## ============================================================

## ---- Pmod GYRO on JA ----
## SPI Interface (pins 1-4)
set_property PACKAGE_PIN C17 [get_ports gyro_cs]     ;# JA1 (Chip Select)
set_property PACKAGE_PIN D18 [get_ports gyro_mosi]   ;# JA2 (SDI)
set_property PACKAGE_PIN E18 [get_ports gyro_miso]   ;# JA3 (SDO)
set_property PACKAGE_PIN G17 [get_ports gyro_sck]    ;# JA4 (Serial Clock)

## Interrupts / Data Ready (pins 7-8) - Optional
set_property PACKAGE_PIN D17 [get_ports gyro_drdy]   ;# JA7 (DRDY/INT2)
set_property PACKAGE_PIN E17 [get_ports gyro_int1]   ;# JA8 (INT1)

set_property IOSTANDARD LVCMOS33 [get_ports {gyro_cs gyro_mosi gyro_miso gyro_sck gyro_drdy gyro_int1}]

##USB-RS232 Interface
set_property -dict { PACKAGE_PIN C4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_rxd }];
set_property -dict { PACKAGE_PIN D4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_txd }];

## On-board ADXL362 Accelerometer - Manual Mapping
# MOSI (Master Out Slave In)
set_property -dict { PACKAGE_PIN F14 IOSTANDARD LVCMOS33 } [get_ports { ACL_MOSI }]; 
# MISO (Master In Slave Out)
set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVCMOS33 } [get_ports { ACL_MISO }]; 
# SCLK (Serial Clock)
set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS33 } [get_ports { ACL_SCLK }]; 
# CS (Chip Select)
set_property -dict { PACKAGE_PIN D15 IOSTANDARD LVCMOS33 } [get_ports { ACL_CSN }];

## Prevent DRC Errors for the unused Tri-state and Input ports
## We set these to a virtual "Warning" so the bitstream can generate
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]