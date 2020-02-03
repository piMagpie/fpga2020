############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project servo
set_top servo
add_files servo/servo.c
add_files servo/servo.h
add_files -tb servo/servo_test.c
open_solution "servoSolution"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./servo/servoSolution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
