--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon Feb 10 09:38:11 2020
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
    down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dutyCycle_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    left_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    right_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_1_0;
  component design_1_servo_0_0 is
  port (
    dutyCycle_ap_vld : out STD_LOGIC;
    speed_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    up : in STD_LOGIC_VECTOR ( 7 downto 0 );
    down : in STD_LOGIC_VECTOR ( 7 downto 0 );
    left_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    right_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dutyCycle : out STD_LOGIC_VECTOR ( 7 downto 0 );
    speed : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_servo_0_0;
  signal ap_clk_0_1 : STD_LOGIC;
  signal down_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal left_r_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal right_r_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal servo_0_dutyCycle : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal servo_0_speed : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal up_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_servo_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_dutyCycle_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_servo_0_speed_ap_vld_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk_0 : signal is "XIL_INTERFACENAME CLK.AP_CLK_0, CLK_DOMAIN design_1_ap_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of down_0 : signal is "xilinx.com:signal:data:1.0 DATA.DOWN_0 DATA";
  attribute X_INTERFACE_PARAMETER of down_0 : signal is "XIL_INTERFACENAME DATA.DOWN_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dutyCycle_0 : signal is "xilinx.com:signal:data:1.0 DATA.DUTYCYCLE_0 DATA";
  attribute X_INTERFACE_PARAMETER of dutyCycle_0 : signal is "XIL_INTERFACENAME DATA.DUTYCYCLE_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of left_r_0 : signal is "xilinx.com:signal:data:1.0 DATA.LEFT_R_0 DATA";
  attribute X_INTERFACE_PARAMETER of left_r_0 : signal is "XIL_INTERFACENAME DATA.LEFT_R_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of right_r_0 : signal is "xilinx.com:signal:data:1.0 DATA.RIGHT_R_0 DATA";
  attribute X_INTERFACE_PARAMETER of right_r_0 : signal is "XIL_INTERFACENAME DATA.RIGHT_R_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of speed_0 : signal is "xilinx.com:signal:data:1.0 DATA.SPEED_0 DATA";
  attribute X_INTERFACE_PARAMETER of speed_0 : signal is "XIL_INTERFACENAME DATA.SPEED_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of up_0 : signal is "xilinx.com:signal:data:1.0 DATA.UP_0 DATA";
  attribute X_INTERFACE_PARAMETER of up_0 : signal is "XIL_INTERFACENAME DATA.UP_0, LAYERED_METADATA undef";
begin
  ap_clk_0_1 <= ap_clk_0;
  down_0_1(7 downto 0) <= down_0(7 downto 0);
  dutyCycle_0(7 downto 0) <= servo_0_dutyCycle(7 downto 0);
  left_r_0_1(7 downto 0) <= left_r_0(7 downto 0);
  right_r_0_1(7 downto 0) <= right_r_0(7 downto 0);
  speed_0(7 downto 0) <= servo_0_speed(7 downto 0);
  up_0_1(7 downto 0) <= up_0(7 downto 0);
servo_0: component design_1_servo_0_0
     port map (
      ap_clk => ap_clk_0_1,
      ap_done => NLW_servo_0_ap_done_UNCONNECTED,
      ap_idle => NLW_servo_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_servo_0_ap_ready_UNCONNECTED,
      ap_rst => xlconstant_0_dout(0),
      ap_start => xlconstant_1_dout(0),
      down(7 downto 0) => down_0_1(7 downto 0),
      dutyCycle(7 downto 0) => servo_0_dutyCycle(7 downto 0),
      dutyCycle_ap_vld => NLW_servo_0_dutyCycle_ap_vld_UNCONNECTED,
      left_r(7 downto 0) => left_r_0_1(7 downto 0),
      right_r(7 downto 0) => right_r_0_1(7 downto 0),
      speed(7 downto 0) => servo_0_speed(7 downto 0),
      speed_ap_vld => NLW_servo_0_speed_ap_vld_UNCONNECTED,
      up(7 downto 0) => up_0_1(7 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
