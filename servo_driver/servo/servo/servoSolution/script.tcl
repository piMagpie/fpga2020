############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project servo
set_top servo
add_files servo/servo.h
add_files servo/servo.c
add_files -tb servo/servo_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "servoSolution"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl
#source "./servo/servoSolution/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl -tool xsim
export_design -rtl vhdl -format ip_catalog
