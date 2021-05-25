# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 3
create_project -in_memory -part xc7a50tftg256-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.cache/wt [current_project]
set_property parent.project_path /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:7a50t:part0:1.0 [current_project]
set_property ip_output_repo /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/hdl/design_microblaze_flash_wrapper.vhd
add_files /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/design_microblaze_flash.bd
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_microblaze_0_0/design_microblaze_flash_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_microblaze_0_0/design_microblaze_flash_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_microblaze_0_0/design_microblaze_flash_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_dlmb_v10_1/design_microblaze_flash_dlmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_dlmb_v10_1/design_microblaze_flash_dlmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_ilmb_v10_1/design_microblaze_flash_ilmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_ilmb_v10_1/design_microblaze_flash_ilmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_dlmb_bram_if_cntlr_1/design_microblaze_flash_dlmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_ilmb_bram_if_cntlr_1/design_microblaze_flash_ilmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_lmb_bram_1/design_microblaze_flash_lmb_bram_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_xbar_0/design_microblaze_flash_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_microblaze_0_axi_intc_0/design_microblaze_flash_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_microblaze_0_axi_intc_0/design_microblaze_flash_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_microblaze_0_axi_intc_0/design_microblaze_flash_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_mdm_1_1/design_microblaze_flash_mdm_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_mdm_1_1/design_microblaze_flash_mdm_1_1_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_clk_wiz_1_1/design_microblaze_flash_clk_wiz_1_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_clk_wiz_1_1/design_microblaze_flash_clk_wiz_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_clk_wiz_1_1/design_microblaze_flash_clk_wiz_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_rst_clk_wiz_1_100M_1/design_microblaze_flash_rst_clk_wiz_1_100M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_rst_clk_wiz_1_100M_1/design_microblaze_flash_rst_clk_wiz_1_100M_1.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_rst_clk_wiz_1_100M_1/design_microblaze_flash_rst_clk_wiz_1_100M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_uartlite_0_0/design_microblaze_flash_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_uartlite_0_0/design_microblaze_flash_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_uartlite_0_0/design_microblaze_flash_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_timer_0_1/design_microblaze_flash_axi_timer_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_timer_0_1/design_microblaze_flash_axi_timer_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_quad_spi_0_0/design_microblaze_flash_axi_quad_spi_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_quad_spi_0_0/design_microblaze_flash_axi_quad_spi_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_quad_spi_0_0/design_microblaze_flash_axi_quad_spi_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_axi_quad_spi_0_0/design_microblaze_flash_axi_quad_spi_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/design_microblaze_flash_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_microblaze_0_0/data/mb_bootloop_le.elf]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_microblaze_flash_wrapper -part xc7a50tftg256-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_microblaze_flash_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_microblaze_flash_wrapper_utilization_synth.rpt -pb design_microblaze_flash_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]