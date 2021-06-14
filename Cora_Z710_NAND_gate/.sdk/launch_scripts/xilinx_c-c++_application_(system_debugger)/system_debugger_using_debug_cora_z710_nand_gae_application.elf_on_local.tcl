connect -url tcp:127.0.0.1:3121
source /home/jose/Xilinx/Vivado-Projects/Cora_Z710_NAND_gate/cora_z710_design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Cora Z7 - 7010 210370AFD567A"} -index 0
loadhw -hw /home/jose/Xilinx/Vivado-Projects/Cora_Z710_NAND_gate/cora_z710_design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Cora Z7 - 7010 210370AFD567A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Cora Z7 - 7010 210370AFD567A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Cora Z7 - 7010 210370AFD567A"} -index 0
dow /home/jose/Xilinx/Vivado-Projects/Cora_Z710_NAND_gate/Cora_Z710_NAND_gae_Application/Debug/Cora_Z710_NAND_gae_Application.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Cora Z7 - 7010 210370AFD567A"} -index 0
con
