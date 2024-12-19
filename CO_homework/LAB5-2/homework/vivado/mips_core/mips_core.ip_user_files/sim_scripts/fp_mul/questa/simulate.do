onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp_mul_opt

do {wave.do}

view wave
view structure
view signals

do {fp_mul.udo}

run -all

quit -force
