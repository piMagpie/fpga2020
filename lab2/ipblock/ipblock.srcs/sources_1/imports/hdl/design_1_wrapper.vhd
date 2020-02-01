--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Wed Jan 29 09:48:01 2020
--Host        : agazorPC running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    c_out_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC;
    s_out_0 : out STD_LOGIC;
    s_out_1 : out STD_LOGIC;
    s_out_2 : out STD_LOGIC;
    x_0 : in STD_LOGIC;
    x_1 : in STD_LOGIC;
    y_0 : in STD_LOGIC;
    y_1 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk_0 : in STD_LOGIC;
    x_0 : in STD_LOGIC;
    x_1 : in STD_LOGIC;
    s_out_0 : out STD_LOGIC;
    s_out_1 : out STD_LOGIC;
    s_out_2 : out STD_LOGIC;
    y_0 : in STD_LOGIC;
    y_1 : in STD_LOGIC;
    c_out_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      c_out_0 => c_out_0,
      clk_0 => clk_0,
      s_out_0 => s_out_0,
      s_out_1 => s_out_1,
      s_out_2 => s_out_2,
      x_0 => x_0,
      x_1 => x_1,
      y_0 => y_0,
      y_1 => y_1
    );
end STRUCTURE;
