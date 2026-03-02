connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292646056A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292646056A"} -index 0
dow C:/Users/andyl/Desktop/ECE532_3D_spatial_audio/Joystick_test/joystick_test/joystick_test.sdk/jstk_reader/Debug/jstk_reader.elf
bpadd -addr &main
