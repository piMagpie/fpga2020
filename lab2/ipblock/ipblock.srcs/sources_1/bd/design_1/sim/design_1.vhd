--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Wed Jan 29 09:53:56 2020
--Host        : agazorPC running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_single_bit_multiplier_0_0 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    s_in : in STD_LOGIC;
    c_in : in STD_LOGIC;
    s_out : out STD_LOGIC;
    c_out : out STD_LOGIC
  );
  end component design_1_single_bit_multiplier_0_0;
  component design_1_single_bit_multiplier_0_1 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    s_in : in STD_LOGIC;
    c_in : in STD_LOGIC;
    s_out : out STD_LOGIC;
    c_out : out STD_LOGIC
  );
  end component design_1_single_bit_multiplier_0_1;
  component design_1_single_bit_multiplier_1_0 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    s_in : in STD_LOGIC;
    c_in : in STD_LOGIC;
    s_out : out STD_LOGIC;
    c_out : out STD_LOGIC
  );
  end component design_1_single_bit_multiplier_1_0;
  component design_1_single_bit_multiplier_2_0 is
  port (
    clk : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    s_in : in STD_LOGIC;
    c_in : in STD_LOGIC;
    s_out : out STD_LOGIC;
    c_out : out STD_LOGIC
  );
  end component design_1_single_bit_multiplier_2_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal single_bit_multiplier_0_c_out : STD_LOGIC;
  signal single_bit_multiplier_0_s_out : STD_LOGIC;
  signal single_bit_multiplier_1_c_out : STD_LOGIC;
  signal single_bit_multiplier_1_s_out : STD_LOGIC;
  signal single_bit_multiplier_2_s_out : STD_LOGIC;
  signal single_bit_multiplier_3_c_out : STD_LOGIC;
  signal single_bit_multiplier_3_s_out : STD_LOGIC;
  signal x_0_1 : STD_LOGIC;
  signal x_1_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal y_0_1 : STD_LOGIC;
  signal y_1_1 : STD_LOGIC;
  signal NLW_single_bit_multiplier_2_c_out_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  c_out_0 <= single_bit_multiplier_3_c_out;
  clk_0_1 <= clk_0;
  s_out_0 <= single_bit_multiplier_0_s_out;
  s_out_1 <= single_bit_multiplier_2_s_out;
  s_out_2 <= single_bit_multiplier_3_s_out;
  x_0_1 <= x_0;
  x_1_1 <= x_1;
  y_0_1 <= y_0;
  y_1_1 <= y_1;
single_bit_multiplier_0: component design_1_single_bit_multiplier_0_0
     port map (
      c_in => xlconstant_0_dout(0),
      c_out => single_bit_multiplier_0_c_out,
      clk => clk_0_1,
      s_in => xlconstant_0_dout(0),
      s_out => single_bit_multiplier_0_s_out,
      x => x_0_1,
      y => y_0_1
    );
single_bit_multiplier_1: component design_1_single_bit_multiplier_0_1
     port map (
      c_in => xlconstant_0_dout(0),
      c_out => single_bit_multiplier_1_c_out,
      clk => clk_0_1,
      s_in => xlconstant_0_dout(0),
      s_out => single_bit_multiplier_1_s_out,
      x => x_1_1,
      y => y_0_1
    );
single_bit_multiplier_2: component design_1_single_bit_multiplier_1_0
     port map (
      c_in => single_bit_multiplier_0_c_out,
      c_out => NLW_single_bit_multiplier_2_c_out_UNCONNECTED,
      clk => clk_0_1,
      s_in => single_bit_multiplier_1_s_out,
      s_out => single_bit_multiplier_2_s_out,
      x => x_0_1,
      y => y_1_1
    );
single_bit_multiplier_3: component design_1_single_bit_multiplier_2_0
     port map (
      c_in => single_bit_multiplier_1_c_out,
      c_out => single_bit_multiplier_3_c_out,
      clk => clk_0_1,
      s_in => xlconstant_0_dout(0),
      s_out => single_bit_multiplier_3_s_out,
      x => x_1_1,
      y => y_1_1
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
