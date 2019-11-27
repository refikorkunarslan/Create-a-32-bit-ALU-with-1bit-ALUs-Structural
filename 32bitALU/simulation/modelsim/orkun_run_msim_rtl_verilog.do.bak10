transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.1/zhadi {C:/altera/13.1/zhadi/alu1.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.1/zhadi {C:/altera/13.1/zhadi/mux1.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.1/zhadi {C:/altera/13.1/zhadi/ALU.v}

vlog -vlog01compat -work work +incdir+C:/altera/13.1/zhadi/simulation/modelsim {C:/altera/13.1/zhadi/simulation/modelsim/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
