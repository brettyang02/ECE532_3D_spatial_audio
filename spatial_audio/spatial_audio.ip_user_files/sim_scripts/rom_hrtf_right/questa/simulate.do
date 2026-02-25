onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom_hrtf_right_opt

do {wave.do}

view wave
view structure
view signals

do {rom_hrtf_right.udo}

run -all

quit -force
