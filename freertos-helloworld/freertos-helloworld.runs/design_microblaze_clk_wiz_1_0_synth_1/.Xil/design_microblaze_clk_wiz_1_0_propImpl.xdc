set_property SRC_FILE_INFO {cfile:/home/jose/Xilinx/Vivado-Projects/freertos-helloworld/freertos-helloworld.srcs/sources_1/bd/design_microblaze/ip/design_microblaze_clk_wiz_1_0/design_microblaze_clk_wiz_1_0.xdc rfile:../../../freertos-helloworld.srcs/sources_1/bd/design_microblaze/ip/design_microblaze_clk_wiz_1_0/design_microblaze_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.05
