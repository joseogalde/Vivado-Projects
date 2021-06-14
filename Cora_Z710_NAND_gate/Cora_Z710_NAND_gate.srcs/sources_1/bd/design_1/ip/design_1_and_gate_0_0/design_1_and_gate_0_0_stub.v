// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 26 16:31:01 2021
// Host        : yurigagarin running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jose/Xilinx/Vivado-Projects/Cora_Z710_NAND_gate/Cora_Z710_NAND_gate.srcs/sources_1/bd/design_1/ip/design_1_and_gate_0_0/design_1_and_gate_0_0_stub.v
// Design      : design_1_and_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "and_gate,Vivado 2019.2" *)
module design_1_and_gate_0_0(a, b, y)
/* synthesis syn_black_box black_box_pad_pin="a,b,y" */;
  input a;
  input b;
  output y;
endmodule
