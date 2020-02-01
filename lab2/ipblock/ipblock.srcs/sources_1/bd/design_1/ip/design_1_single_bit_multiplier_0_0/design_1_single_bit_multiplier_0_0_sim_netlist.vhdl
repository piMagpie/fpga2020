-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Jan 29 09:54:49 2020
-- Host        : agazorPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_single_bit_multiplier_0_0 -prefix
--               design_1_single_bit_multiplier_0_0_ design_1_single_bit_multiplier_1_0_sim_netlist.vhdl
-- Design      : design_1_single_bit_multiplier_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_single_bit_multiplier_0_0_single_bit_multiplier is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    s_in : in STD_LOGIC;
    c_in : in STD_LOGIC;
    s_out : out STD_LOGIC;
    c_out : out STD_LOGIC
  );
end design_1_single_bit_multiplier_0_0_single_bit_multiplier;

architecture STRUCTURE of design_1_single_bit_multiplier_0_0_single_bit_multiplier is
  signal c_out_i_1_n_0 : STD_LOGIC;
  signal s_out_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of c_out_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_out_i_1 : label is "soft_lutpair0";
begin
c_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => y,
      I1 => x,
      I2 => c_in,
      I3 => s_in,
      O => c_out_i_1_n_0
    );
c_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => c_out_i_1_n_0,
      Q => c_out,
      R => '0'
    );
s_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => c_in,
      I1 => x,
      I2 => y,
      I3 => s_in,
      O => s_out_i_1_n_0
    );
s_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_out_i_1_n_0,
      Q => s_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_single_bit_multiplier_0_0 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    s_in : in STD_LOGIC;
    c_in : in STD_LOGIC;
    s_out : out STD_LOGIC;
    c_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_single_bit_multiplier_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_single_bit_multiplier_0_0 : entity is "design_1_single_bit_multiplier_1_0,single_bit_multiplier,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_single_bit_multiplier_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_single_bit_multiplier_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_single_bit_multiplier_0_0 : entity is "single_bit_multiplier,Vivado 2019.2";
end design_1_single_bit_multiplier_0_0;

architecture STRUCTURE of design_1_single_bit_multiplier_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
begin
U0: entity work.design_1_single_bit_multiplier_0_0_single_bit_multiplier
     port map (
      c_in => c_in,
      c_out => c_out,
      clk => clk,
      s_in => s_in,
      s_out => s_out,
      x => x,
      y => y
    );
end STRUCTURE;
