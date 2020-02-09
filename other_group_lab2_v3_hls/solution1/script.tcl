############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab2_v3_hls
set_top servo_v3
add_files lab2_v3_hls/servo_v3.cpp
add_files lab2_v3_hls/servo_v3.h
add_files -tb lab2_v3_hls/servo_v3_testbench.cpp
open_solution "solution1"
set_part {xc7k70tfbv676-1}
create_clock -period 10 -name default
#source "./lab2_v3_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog
