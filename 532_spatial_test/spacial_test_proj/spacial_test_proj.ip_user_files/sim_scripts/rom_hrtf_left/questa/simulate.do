onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom_hrtf_left_opt

do {wave.do}

view wave
view structure
view signals

do {rom_hrtf_left.udo}

run -all

quit -force
