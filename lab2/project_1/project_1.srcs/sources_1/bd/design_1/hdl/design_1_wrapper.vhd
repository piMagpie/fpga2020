--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Wed Feb  5 09:54:42 2020
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
    down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dutyCycle_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    left_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    right_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    left_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dutyCycle_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    right_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      ap_clk_0 => ap_clk_0,
      down_0(7 downto 0) => down_0(7 downto 0),
      dutyCycle_0(7 downto 0) => dutyCycle_0(7 downto 0),
      left_r_0(7 downto 0) => left_r_0(7 downto 0),
      right_r_0(7 downto 0) => right_r_0(7 downto 0),
      speed_0(7 downto 0) => speed_0(7 downto 0),
      up_0(7 downto 0) => up_0(7 downto 0)
    );
end STRUCTURE;
