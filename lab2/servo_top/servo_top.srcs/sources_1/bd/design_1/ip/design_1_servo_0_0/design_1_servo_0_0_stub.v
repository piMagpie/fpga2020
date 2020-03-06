// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 17 18:11:05 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/fpga/lab2/servo_top/servo_top.srcs/sources_1/bd/design_1/ip/design_1_servo_0_0/design_1_servo_0_0_stub.v
// Design      : design_1_servo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "servo,Vivado 2019.2" *)
module design_1_servo_0_0(p_dutyCycle_ap_vld, p_speed_ap_vld, ap_clk, 
  ap_rst, ap_start, ap_done, ap_idle, ap_ready, p_up, p_down, p_left, p_right, p_dutyCycle, p_speed)
/* synthesis syn_black_box black_box_pad_pin="p_dutyCycle_ap_vld,p_speed_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_up[7:0],p_down[7:0],p_left[7:0],p_right[7:0],p_dutyCycle[7:0],p_speed[7:0]" */;
  output p_dutyCycle_ap_vld;
  output p_speed_ap_vld;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]p_up;
  input [7:0]p_down;
  input [7:0]p_left;
  input [7:0]p_right;
  output [7:0]p_dutyCycle;
  output [7:0]p_speed;
endmodule
