@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sun Feb 16 16:06:44 +0200 2020
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto c1d079bffb784d43a096faac14a129bb --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xlconstant_v1_1_6 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot servo_test_behav xil_defaultlib.servo_test xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto c1d079bffb784d43a096faac14a129bb --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xlconstant_v1_1_6 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot servo_test_behav xil_defaultlib.servo_test xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
