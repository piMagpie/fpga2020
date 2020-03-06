--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon Feb 17 18:10:01 2020
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
    ap_clk_0 : in STD_LOGIC;
    p_down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dutyCycle_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_left_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_right_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_1;
  component design_1_servo_0_0 is
  port (
    p_dutyCycle_ap_vld : out STD_LOGIC;
    p_speed_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    p_up : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_down : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_left : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_right : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dutyCycle : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_speed : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_servo_0_0;
  signal ap_clk_0_1 : STD_LOGIC;
  signal p_down_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_left_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_right_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_up_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal servo_0_p_dutyCycle : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal servo_0_p_speed : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_servo_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_p_dutyCycle_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_p_speed_ap_vld_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk_0 : signal is "XIL_INTERFACENAME CLK.AP_CLK_0, CLK_DOMAIN design_1_ap_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of p_down_0 : signal is "xilinx.com:signal:data:1.0 DATA.P_DOWN_0 DATA";
  attribute X_INTERFACE_PARAMETER of p_down_0 : signal is "XIL_INTERFACENAME DATA.P_DOWN_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of p_dutyCycle_0 : signal is "xilinx.com:signal:data:1.0 DATA.P_DUTYCYCLE_0 DATA";
  attribute X_INTERFACE_PARAMETER of p_dutyCycle_0 : signal is "XIL_INTERFACENAME DATA.P_DUTYCYCLE_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of p_left_0 : signal is "xilinx.com:signal:data:1.0 DATA.P_LEFT_0 DATA";
  attribute X_INTERFACE_PARAMETER of p_left_0 : signal is "XIL_INTERFACENAME DATA.P_LEFT_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of p_right_0 : signal is "xilinx.com:signal:data:1.0 DATA.P_RIGHT_0 DATA";
  attribute X_INTERFACE_PARAMETER of p_right_0 : signal is "XIL_INTERFACENAME DATA.P_RIGHT_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of p_speed_0 : signal is "xilinx.com:signal:data:1.0 DATA.P_SPEED_0 DATA";
  attribute X_INTERFACE_PARAMETER of p_speed_0 : signal is "XIL_INTERFACENAME DATA.P_SPEED_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of p_up_0 : signal is "xilinx.com:signal:data:1.0 DATA.P_UP_0 DATA";
  attribute X_INTERFACE_PARAMETER of p_up_0 : signal is "XIL_INTERFACENAME DATA.P_UP_0, LAYERED_METADATA undef";
begin
  ap_clk_0_1 <= ap_clk_0;
  p_down_0_1(7 downto 0) <= p_down_0(7 downto 0);
  p_dutyCycle_0(7 downto 0) <= servo_0_p_dutyCycle(7 downto 0);
  p_left_0_1(7 downto 0) <= p_left_0(7 downto 0);
  p_right_0_1(7 downto 0) <= p_right_0(7 downto 0);
  p_speed_0(7 downto 0) <= servo_0_p_speed(7 downto 0);
  p_up_0_1(7 downto 0) <= p_up_0(7 downto 0);
servo_0: component design_1_servo_0_0
     port map (
      ap_clk => ap_clk_0_1,
      ap_done => NLW_servo_0_ap_done_UNCONNECTED,
      ap_idle => NLW_servo_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_servo_0_ap_ready_UNCONNECTED,
      ap_rst => xlconstant_0_dout(0),
      ap_start => xlconstant_1_dout(0),
      p_down(7 downto 0) => p_down_0_1(7 downto 0),
      p_dutyCycle(7 downto 0) => servo_0_p_dutyCycle(7 downto 0),
      p_dutyCycle_ap_vld => NLW_servo_0_p_dutyCycle_ap_vld_UNCONNECTED,
      p_left(7 downto 0) => p_left_0_1(7 downto 0),
      p_right(7 downto 0) => p_right_0_1(7 downto 0),
      p_speed(7 downto 0) => servo_0_p_speed(7 downto 0),
      p_speed_ap_vld => NLW_servo_0_p_speed_ap_vld_UNCONNECTED,
      p_up(7 downto 0) => p_up_0_1(7 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_0_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
