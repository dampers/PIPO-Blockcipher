transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/PIPO_Definitions.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/xorKey.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/xorData.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/S-layer.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/R-layer.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/make_FirstData.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/Buffer.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/PIPO_blockcipher_verilog.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/setCounter.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/runRound.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/expandKey_0.sv}
vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/expandKey_1.sv}

vlog -sv -work work +incdir+D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog {D:/documents/PIPO_system_verilog/PIPO_blockcipher_verilog/tb_PIPO.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_PIPO

add wave *
view structure
view signals
run -all
