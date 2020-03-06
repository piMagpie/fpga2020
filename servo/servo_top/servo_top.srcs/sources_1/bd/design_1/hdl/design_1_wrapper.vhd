--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon Feb 17 20:01:23 2020
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
    ap_clk_0 : in STD_LOGIC;
    p_down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dutyCycle_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_left_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_right_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ap_clk_0 : in STD_LOGIC;
    p_left_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_right_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dutyCycle_0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      ap_clk_0 => ap_clk_0,
      p_down_0(7 downto 0) => p_down_0(7 downto 0),
      p_dutyCycle_0(0) => p_dutyCycle_0(0),
      p_left_0(7 downto 0) => p_left_0(7 downto 0),
      p_right_0(7 downto 0) => p_right_0(7 downto 0),
      p_speed_0(7 downto 0) => p_speed_0(7 downto 0),
      p_up_0(7 downto 0) => p_up_0(7 downto 0)
    );
end STRUCTURE;
