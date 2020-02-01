// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jan 29 09:54:49 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_single_bit_multiplier_0_1 -prefix
//               design_1_single_bit_multiplier_0_1_ design_1_single_bit_multiplier_1_0_stub.v
// Design      : design_1_single_bit_multiplier_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "single_bit_multiplier,Vivado 2019.2" *)
module design_1_single_bit_multiplier_0_1(clk, x, y, s_in, c_in, s_out, c_out)
/* synthesis syn_black_box black_box_pad_pin="clk,x,y,s_in,c_in,s_out,c_out" */;
  input clk;
  input x;
  input y;
  input s_in;
  input c_in;
  output s_out;
  output c_out;
endmodule
