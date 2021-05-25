// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Apr  2 16:50:16 2021
// Host        : yurigagarin running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jose/Xilinx/Vivado-Projects/class5-Microblaze-booting-from-qspi-flash/class5-Microblaze-booting-from-qspi-flash.srcs/sources_1/bd/design_microblaze_flash/ip/design_microblaze_flash_clk_wiz_1_1/design_microblaze_flash_clk_wiz_1_1_stub.v
// Design      : design_microblaze_flash_clk_wiz_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_microblaze_flash_clk_wiz_1_1(clk_out1, clk_out2, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,reset,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;
endmodule
