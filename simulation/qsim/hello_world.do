onerror {quit -f}
vlib work
vlog -work work hello_world.vo
vlog -work work hello_world.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.hello_world_vlg_vec_tst
vcd file -direction hello_world.msim.vcd
vcd add -internal hello_world_vlg_vec_tst/*
vcd add -internal hello_world_vlg_vec_tst/i1/*
add wave /*
run -all
