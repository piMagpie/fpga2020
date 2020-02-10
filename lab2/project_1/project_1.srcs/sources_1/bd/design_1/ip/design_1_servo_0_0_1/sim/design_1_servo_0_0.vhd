-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:servo:1.0
-- IP Revision: 2002100932

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_servo_0_0 IS
  PORT (
    dutyCycle_ap_vld : OUT STD_LOGIC;
    speed_ap_vld : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    up : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    down : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    left_r : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    right_r : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dutyCycle : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    speed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END design_1_servo_0_0;

ARCHITECTURE design_1_servo_0_0_arch OF design_1_servo_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_servo_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT servo IS
    PORT (
      dutyCycle_ap_vld : OUT STD_LOGIC;
      speed_ap_vld : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      up : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      down : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      left_r : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      right_r : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dutyCycle : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      speed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT servo;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_servo_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF speed: SIGNAL IS "XIL_INTERFACENAME speed, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF speed: SIGNAL IS "xilinx.com:signal:data:1.0 speed DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dutyCycle: SIGNAL IS "XIL_INTERFACENAME dutyCycle, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF dutyCycle: SIGNAL IS "xilinx.com:signal:data:1.0 dutyCycle DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF right_r: SIGNAL IS "XIL_INTERFACENAME right_r, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF right_r: SIGNAL IS "xilinx.com:signal:data:1.0 right_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF left_r: SIGNAL IS "XIL_INTERFACENAME left_r, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF left_r: SIGNAL IS "xilinx.com:signal:data:1.0 left_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF down: SIGNAL IS "XIL_INTERFACENAME down, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF down: SIGNAL IS "xilinx.com:signal:data:1.0 down DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF up: SIGNAL IS "XIL_INTERFACENAME up, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF up: SIGNAL IS "xilinx.com:signal:data:1.0 up DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : servo
    PORT MAP (
      dutyCycle_ap_vld => dutyCycle_ap_vld,
      speed_ap_vld => speed_ap_vld,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      up => up,
      down => down,
      left_r => left_r,
      right_r => right_r,
      dutyCycle => dutyCycle,
      speed => speed
    );
END design_1_servo_0_0_arch;
