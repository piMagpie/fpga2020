-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Feb  5 09:55:57 2020
-- Host        : agazorPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/fpga/lab2/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_servo_0_0_1/design_1_servo_0_0_sim_netlist.vhdl
-- Design      : design_1_servo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_servo_0_0_servo is
  port (
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
    dutyCycle_ap_vld : out STD_LOGIC;
    speed : out STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_servo_0_0_servo : entity is "servo";
end design_1_servo_0_0_servo;

architecture STRUCTURE of design_1_servo_0_0_servo is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal current_duty_cycle : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal current_duty_cycle0 : STD_LOGIC;
  signal current_speed : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal current_speed0 : STD_LOGIC;
  signal \current_speed[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_speed[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_speed[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_speed[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_speed[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_speed[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_speed[4]_i_3_n_0\ : STD_LOGIC;
  signal \current_speed[4]_i_4_n_0\ : STD_LOGIC;
  signal \current_speed[5]_i_1_n_0\ : STD_LOGIC;
  signal \current_speed[5]_i_2_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_10_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_11_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_12_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_13_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_2_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_3_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_4_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_5_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_6_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_7_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_8_n_0\ : STD_LOGIC;
  signal \current_speed[6]_i_9_n_0\ : STD_LOGIC;
  signal \^dutycycle\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dutyCycle[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_4\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_5\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_6\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_1_n_7\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \dutyCycle[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_1_n_4\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_1_n_5\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_1_n_6\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_1_n_7\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \dutyCycle[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln16_reg_319[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln16_reg_319_reg_n_0_[0]\ : STD_LOGIC;
  signal \icmp_ln20_1_reg_329[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln20_1_reg_329[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln20_1_reg_329[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln20_1_reg_329[0]_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln20_1_reg_329[0]_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln20_1_reg_329_reg_n_0_[0]\ : STD_LOGIC;
  signal \icmp_ln20_reg_324[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln20_reg_324_reg_n_0_[0]\ : STD_LOGIC;
  signal \select_ln12_reg_306_reg_n_0_[0]\ : STD_LOGIC;
  signal \select_ln12_reg_306_reg_n_0_[1]\ : STD_LOGIC;
  signal \select_ln12_reg_306_reg_n_0_[2]\ : STD_LOGIC;
  signal select_ln16_fu_215_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal select_ln16_reg_333 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \select_ln16_reg_333[3]_i_2_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[3]_i_3_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[3]_i_4_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[3]_i_5_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[3]_i_6_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[7]_i_2_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[7]_i_3_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[7]_i_4_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333[7]_i_5_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \select_ln16_reg_333_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \select_ln16_reg_333_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \select_ln16_reg_333_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \select_ln16_reg_333_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \select_ln16_reg_333_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \select_ln16_reg_333_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \^speed\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp_1_fu_255_p4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_select_ln16_reg_333_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_speed[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_speed[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_speed[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_speed[4]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_speed[4]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_speed[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_speed[6]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_speed[6]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dutyCycle[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dutyCycle[1]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dutyCycle[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dutyCycle[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \icmp_ln20_1_reg_329[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \speed[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \speed[3]_INST_0\ : label is "soft_lutpair0";
begin
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
  dutyCycle(7) <= \<const0>\;
  dutyCycle(6) <= \<const1>\;
  dutyCycle(5) <= \<const1>\;
  dutyCycle(4 downto 0) <= \^dutycycle\(4 downto 0);
  dutyCycle_ap_vld <= \^ap_done\;
  speed(7) <= \<const0>\;
  speed(6) <= \<const0>\;
  speed(5) <= \<const0>\;
  speed(4) <= \<const0>\;
  speed(3 downto 0) <= \^speed\(3 downto 0);
  speed_ap_vld <= \^ap_done\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00F7"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => \^ap_done\,
      I3 => ap_CS_fsm_state2,
      I4 => ap_rst,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => \^ap_done\,
      I4 => ap_rst,
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_rst,
      O => \ap_CS_fsm[2]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_0\,
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      R => '0'
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => ap_CS_fsm_state2,
      R => '0'
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[2]_i_1_n_0\,
      Q => \^ap_done\,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
\current_duty_cycle[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ap_done\,
      I1 => \icmp_ln20_1_reg_329_reg_n_0_[0]\,
      O => current_duty_cycle0
    );
\current_duty_cycle_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[3]_INST_0_i_1_n_7\,
      Q => current_duty_cycle(0),
      R => '0'
    );
\current_duty_cycle_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[3]_INST_0_i_1_n_6\,
      Q => current_duty_cycle(1),
      R => '0'
    );
\current_duty_cycle_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[3]_INST_0_i_1_n_5\,
      Q => current_duty_cycle(2),
      R => '0'
    );
\current_duty_cycle_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[3]_INST_0_i_1_n_4\,
      Q => current_duty_cycle(3),
      R => '0'
    );
\current_duty_cycle_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[4]_INST_0_i_1_n_7\,
      Q => current_duty_cycle(4),
      R => '0'
    );
\current_duty_cycle_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[4]_INST_0_i_1_n_6\,
      Q => current_duty_cycle(5),
      R => '0'
    );
\current_duty_cycle_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[4]_INST_0_i_1_n_5\,
      Q => current_duty_cycle(6),
      R => '0'
    );
\current_duty_cycle_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \dutyCycle[4]_INST_0_i_1_n_4\,
      Q => current_duty_cycle(7),
      R => '0'
    );
\current_speed[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \current_speed[6]_i_3_n_0\,
      I1 => \current_speed[6]_i_4_n_0\,
      I2 => current_speed(0),
      O => \current_speed[0]_i_1_n_0\
    );
\current_speed[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD42"
    )
        port map (
      I0 => \current_speed[6]_i_3_n_0\,
      I1 => current_speed(0),
      I2 => \current_speed[6]_i_4_n_0\,
      I3 => current_speed(1),
      O => \current_speed[1]_i_1_n_0\
    );
\current_speed[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFD4002"
    )
        port map (
      I0 => \current_speed[6]_i_3_n_0\,
      I1 => current_speed(0),
      I2 => current_speed(1),
      I3 => \current_speed[6]_i_4_n_0\,
      I4 => current_speed(2),
      O => \current_speed[2]_i_1_n_0\
    );
\current_speed[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA96AAAAAAA"
    )
        port map (
      I0 => current_speed(3),
      I1 => current_speed(2),
      I2 => \current_speed[6]_i_4_n_0\,
      I3 => current_speed(1),
      I4 => current_speed(0),
      I5 => \current_speed[6]_i_3_n_0\,
      O => \current_speed[3]_i_1_n_0\
    );
\current_speed[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFBFFD44004002"
    )
        port map (
      I0 => \current_speed[4]_i_2_n_0\,
      I1 => current_speed(3),
      I2 => \current_speed[4]_i_3_n_0\,
      I3 => current_speed(2),
      I4 => \current_speed[6]_i_4_n_0\,
      I5 => current_speed(4),
      O => \current_speed[4]_i_1_n_0\
    );
\current_speed[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \current_speed[6]_i_8_n_0\,
      I1 => \current_speed[4]_i_4_n_0\,
      I2 => \current_speed[6]_i_6_n_0\,
      I3 => current_speed(0),
      I4 => \current_speed[6]_i_4_n_0\,
      I5 => current_speed(1),
      O => \current_speed[4]_i_2_n_0\
    );
\current_speed[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_speed(1),
      I1 => current_speed(0),
      O => \current_speed[4]_i_3_n_0\
    );
\current_speed[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => current_speed(6),
      I1 => current_speed(4),
      I2 => current_speed(5),
      O => \current_speed[4]_i_4_n_0\
    );
\current_speed[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFFDF44040020"
    )
        port map (
      I0 => \current_speed[6]_i_5_n_0\,
      I1 => current_speed(3),
      I2 => \current_speed[5]_i_2_n_0\,
      I3 => \current_speed[6]_i_4_n_0\,
      I4 => current_speed(4),
      I5 => current_speed(5),
      O => \current_speed[5]_i_1_n_0\
    );
\current_speed[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => current_speed(2),
      I1 => current_speed(0),
      I2 => current_speed(1),
      O => \current_speed[5]_i_2_n_0\
    );
\current_speed[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => \current_speed[6]_i_3_n_0\,
      I3 => \current_speed[6]_i_4_n_0\,
      O => current_speed0
    );
\current_speed[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => down(2),
      I1 => down(3),
      I2 => down(0),
      I3 => down(1),
      O => \current_speed[6]_i_10_n_0\
    );
\current_speed[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => down(7),
      I1 => down(6),
      I2 => down(4),
      I3 => down(5),
      O => \current_speed[6]_i_11_n_0\
    );
\current_speed[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000D0FF"
    )
        port map (
      I0 => \current_speed[6]_i_11_n_0\,
      I1 => \current_speed[6]_i_10_n_0\,
      I2 => \current_speed[5]_i_2_n_0\,
      I3 => current_speed(3),
      I4 => \current_speed[6]_i_9_n_0\,
      I5 => current_speed(6),
      O => \current_speed[6]_i_12_n_0\
    );
\current_speed[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up(3),
      I1 => up(7),
      I2 => up(5),
      I3 => up(0),
      O => \current_speed[6]_i_13_n_0\
    );
\current_speed[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFF1F01000010"
    )
        port map (
      I0 => \current_speed[6]_i_5_n_0\,
      I1 => \current_speed[6]_i_6_n_0\,
      I2 => \current_speed[6]_i_7_n_0\,
      I3 => current_speed(4),
      I4 => current_speed(5),
      I5 => current_speed(6),
      O => \current_speed[6]_i_2_n_0\
    );
\current_speed[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \current_speed[6]_i_8_n_0\,
      I1 => current_speed(6),
      I2 => current_speed(4),
      I3 => current_speed(5),
      I4 => \current_speed[6]_i_6_n_0\,
      O => \current_speed[6]_i_3_n_0\
    );
\current_speed[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000100"
    )
        port map (
      I0 => \current_speed[6]_i_9_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(6),
      I3 => \current_speed[5]_i_2_n_0\,
      I4 => \current_speed[6]_i_10_n_0\,
      I5 => \current_speed[6]_i_11_n_0\,
      O => \current_speed[6]_i_4_n_0\
    );
\current_speed[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \current_speed[6]_i_12_n_0\,
      I1 => \current_speed[6]_i_8_n_0\,
      I2 => current_speed(0),
      I3 => current_speed(1),
      I4 => \current_speed[6]_i_4_n_0\,
      I5 => current_speed(2),
      O => \current_speed[6]_i_5_n_0\
    );
\current_speed[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD333333CD33CD33"
    )
        port map (
      I0 => \current_speed[6]_i_9_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(6),
      I3 => \current_speed[5]_i_2_n_0\,
      I4 => \current_speed[6]_i_10_n_0\,
      I5 => \current_speed[6]_i_11_n_0\,
      O => \current_speed[6]_i_6_n_0\
    );
\current_speed[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \current_speed[6]_i_4_n_0\,
      I1 => current_speed(2),
      I2 => current_speed(0),
      I3 => current_speed(1),
      I4 => current_speed(3),
      O => \current_speed[6]_i_7_n_0\
    );
\current_speed[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => up(4),
      I1 => up(1),
      I2 => up(2),
      I3 => up(6),
      I4 => \current_speed[6]_i_13_n_0\,
      O => \current_speed[6]_i_8_n_0\
    );
\current_speed[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_speed(5),
      I1 => current_speed(4),
      O => \current_speed[6]_i_9_n_0\
    );
\current_speed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_speed0,
      D => \current_speed[0]_i_1_n_0\,
      Q => current_speed(0),
      R => '0'
    );
\current_speed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_speed0,
      D => \current_speed[1]_i_1_n_0\,
      Q => current_speed(1),
      R => '0'
    );
\current_speed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_speed0,
      D => \current_speed[2]_i_1_n_0\,
      Q => current_speed(2),
      R => '0'
    );
\current_speed_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_speed0,
      D => \current_speed[3]_i_1_n_0\,
      Q => current_speed(3),
      R => '0'
    );
\current_speed_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_speed0,
      D => \current_speed[4]_i_1_n_0\,
      Q => current_speed(4),
      R => '0'
    );
\current_speed_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_speed0,
      D => \current_speed[5]_i_1_n_0\,
      Q => current_speed(5),
      R => '0'
    );
\current_speed_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_speed0,
      D => \current_speed[6]_i_2_n_0\,
      Q => current_speed(6),
      R => '0'
    );
\dutyCycle[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dutyCycle[1]_INST_0_i_1_n_0\,
      I1 => \dutyCycle[3]_INST_0_i_1_n_7\,
      O => \^dutycycle\(0)
    );
\dutyCycle[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dutyCycle[1]_INST_0_i_1_n_0\,
      I1 => \dutyCycle[3]_INST_0_i_1_n_6\,
      O => \^dutycycle\(1)
    );
\dutyCycle[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA80000"
    )
        port map (
      I0 => \dutyCycle[4]_INST_0_i_1_n_5\,
      I1 => \dutyCycle[3]_INST_0_i_1_n_5\,
      I2 => \dutyCycle[4]_INST_0_i_1_n_7\,
      I3 => \dutyCycle[3]_INST_0_i_1_n_4\,
      I4 => \dutyCycle[4]_INST_0_i_1_n_6\,
      I5 => \dutyCycle[4]_INST_0_i_1_n_4\,
      O => \dutyCycle[1]_INST_0_i_1_n_0\
    );
\dutyCycle[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDDFFFFF"
    )
        port map (
      I0 => \dutyCycle[4]_INST_0_i_1_n_5\,
      I1 => \dutyCycle[3]_INST_0_i_1_n_5\,
      I2 => \dutyCycle[3]_INST_0_i_1_n_4\,
      I3 => \dutyCycle[4]_INST_0_i_1_n_7\,
      I4 => \dutyCycle[4]_INST_0_i_1_n_6\,
      I5 => \dutyCycle[4]_INST_0_i_1_n_4\,
      O => \^dutycycle\(2)
    );
\dutyCycle[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \dutyCycle[4]_INST_0_i_1_n_5\,
      I1 => \dutyCycle[3]_INST_0_i_1_n_4\,
      I2 => \dutyCycle[4]_INST_0_i_1_n_6\,
      I3 => \dutyCycle[4]_INST_0_i_1_n_4\,
      O => \^dutycycle\(3)
    );
\dutyCycle[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dutyCycle[3]_INST_0_i_1_n_0\,
      CO(2) => \dutyCycle[3]_INST_0_i_1_n_1\,
      CO(1) => \dutyCycle[3]_INST_0_i_1_n_2\,
      CO(0) => \dutyCycle[3]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => select_ln16_reg_333(3 downto 0),
      O(3) => \dutyCycle[3]_INST_0_i_1_n_4\,
      O(2) => \dutyCycle[3]_INST_0_i_1_n_5\,
      O(1) => \dutyCycle[3]_INST_0_i_1_n_6\,
      O(0) => \dutyCycle[3]_INST_0_i_1_n_7\,
      S(3) => \dutyCycle[3]_INST_0_i_2_n_0\,
      S(2) => \dutyCycle[3]_INST_0_i_3_n_0\,
      S(1) => \dutyCycle[3]_INST_0_i_4_n_0\,
      S(0) => \dutyCycle[3]_INST_0_i_5_n_0\
    );
\dutyCycle[3]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => select_ln16_reg_333(3),
      I1 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(0),
      O => \dutyCycle[3]_INST_0_i_2_n_0\
    );
\dutyCycle[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => select_ln16_reg_333(2),
      I1 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I2 => \select_ln12_reg_306_reg_n_0_[2]\,
      O => \dutyCycle[3]_INST_0_i_3_n_0\
    );
\dutyCycle[3]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => select_ln16_reg_333(1),
      I1 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I2 => \select_ln12_reg_306_reg_n_0_[1]\,
      O => \dutyCycle[3]_INST_0_i_4_n_0\
    );
\dutyCycle[3]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => select_ln16_reg_333(0),
      I1 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I2 => \select_ln12_reg_306_reg_n_0_[0]\,
      O => \dutyCycle[3]_INST_0_i_5_n_0\
    );
\dutyCycle[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \dutyCycle[4]_INST_0_i_1_n_5\,
      I1 => \dutyCycle[4]_INST_0_i_1_n_7\,
      I2 => \dutyCycle[4]_INST_0_i_1_n_6\,
      I3 => \dutyCycle[4]_INST_0_i_1_n_4\,
      O => \^dutycycle\(4)
    );
\dutyCycle[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyCycle[3]_INST_0_i_1_n_0\,
      CO(3) => \NLW_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED\(3),
      CO(2) => \dutyCycle[4]_INST_0_i_1_n_1\,
      CO(1) => \dutyCycle[4]_INST_0_i_1_n_2\,
      CO(0) => \dutyCycle[4]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => select_ln16_reg_333(6 downto 4),
      O(3) => \dutyCycle[4]_INST_0_i_1_n_4\,
      O(2) => \dutyCycle[4]_INST_0_i_1_n_5\,
      O(1) => \dutyCycle[4]_INST_0_i_1_n_6\,
      O(0) => \dutyCycle[4]_INST_0_i_1_n_7\,
      S(3) => select_ln16_reg_333(7),
      S(2) => \dutyCycle[4]_INST_0_i_2_n_0\,
      S(1) => \dutyCycle[4]_INST_0_i_3_n_0\,
      S(0) => \dutyCycle[4]_INST_0_i_4_n_0\
    );
\dutyCycle[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => select_ln16_reg_333(6),
      I1 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(3),
      O => \dutyCycle[4]_INST_0_i_2_n_0\
    );
\dutyCycle[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => select_ln16_reg_333(5),
      I1 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(2),
      O => \dutyCycle[4]_INST_0_i_3_n_0\
    );
\dutyCycle[4]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => select_ln16_reg_333(4),
      I1 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(1),
      O => \dutyCycle[4]_INST_0_i_4_n_0\
    );
\icmp_ln16_reg_319[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF70"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I3 => \icmp_ln20_1_reg_329[0]_i_2_n_0\,
      O => \icmp_ln16_reg_319[0]_i_1_n_0\
    );
\icmp_ln16_reg_319_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln16_reg_319[0]_i_1_n_0\,
      Q => \icmp_ln16_reg_319_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln20_1_reg_329[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \icmp_ln20_1_reg_329_reg_n_0_[0]\,
      I3 => \icmp_ln20_1_reg_329[0]_i_2_n_0\,
      I4 => \icmp_ln20_1_reg_329[0]_i_3_n_0\,
      O => \icmp_ln20_1_reg_329[0]_i_1_n_0\
    );
\icmp_ln20_1_reg_329[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => left_r(4),
      I1 => left_r(0),
      I2 => left_r(5),
      I3 => left_r(6),
      I4 => \icmp_ln20_1_reg_329[0]_i_4_n_0\,
      O => \icmp_ln20_1_reg_329[0]_i_2_n_0\
    );
\icmp_ln20_1_reg_329[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => right_r(6),
      I1 => right_r(3),
      I2 => right_r(0),
      I3 => right_r(5),
      I4 => \icmp_ln20_1_reg_329[0]_i_5_n_0\,
      O => \icmp_ln20_1_reg_329[0]_i_3_n_0\
    );
\icmp_ln20_1_reg_329[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => left_r(7),
      I1 => left_r(1),
      I2 => left_r(3),
      I3 => left_r(2),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_start,
      O => \icmp_ln20_1_reg_329[0]_i_4_n_0\
    );
\icmp_ln20_1_reg_329[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => right_r(1),
      I1 => right_r(4),
      I2 => right_r(7),
      I3 => right_r(2),
      O => \icmp_ln20_1_reg_329[0]_i_5_n_0\
    );
\icmp_ln20_1_reg_329_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln20_1_reg_329[0]_i_1_n_0\,
      Q => \icmp_ln20_1_reg_329_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln20_reg_324[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \icmp_ln20_reg_324_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => \icmp_ln20_1_reg_329[0]_i_3_n_0\,
      O => \icmp_ln20_reg_324[0]_i_1_n_0\
    );
\icmp_ln20_reg_324_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln20_reg_324[0]_i_1_n_0\,
      Q => \icmp_ln20_reg_324_reg_n_0_[0]\,
      R => '0'
    );
\select_ln12_reg_306[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm1
    );
\select_ln12_reg_306_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \current_speed[0]_i_1_n_0\,
      Q => \select_ln12_reg_306_reg_n_0_[0]\,
      R => '0'
    );
\select_ln12_reg_306_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \current_speed[1]_i_1_n_0\,
      Q => \select_ln12_reg_306_reg_n_0_[1]\,
      R => '0'
    );
\select_ln12_reg_306_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \current_speed[2]_i_1_n_0\,
      Q => \select_ln12_reg_306_reg_n_0_[2]\,
      R => '0'
    );
\select_ln12_reg_306_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \current_speed[3]_i_1_n_0\,
      Q => tmp_1_fu_255_p4(0),
      R => '0'
    );
\select_ln12_reg_306_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \current_speed[4]_i_1_n_0\,
      Q => tmp_1_fu_255_p4(1),
      R => '0'
    );
\select_ln12_reg_306_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \current_speed[5]_i_1_n_0\,
      Q => tmp_1_fu_255_p4(2),
      R => '0'
    );
\select_ln12_reg_306_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \current_speed[6]_i_2_n_0\,
      Q => tmp_1_fu_255_p4(3),
      R => '0'
    );
\select_ln16_reg_333[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      O => \select_ln16_reg_333[3]_i_2_n_0\
    );
\select_ln16_reg_333[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => current_duty_cycle(3),
      I1 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(0),
      O => \select_ln16_reg_333[3]_i_3_n_0\
    );
\select_ln16_reg_333[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => current_duty_cycle(2),
      I1 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I2 => \select_ln12_reg_306_reg_n_0_[2]\,
      O => \select_ln16_reg_333[3]_i_4_n_0\
    );
\select_ln16_reg_333[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => current_duty_cycle(1),
      I1 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I2 => \select_ln12_reg_306_reg_n_0_[1]\,
      O => \select_ln16_reg_333[3]_i_5_n_0\
    );
\select_ln16_reg_333[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => current_duty_cycle(0),
      I1 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I2 => \select_ln12_reg_306_reg_n_0_[0]\,
      O => \select_ln16_reg_333[3]_i_6_n_0\
    );
\select_ln16_reg_333[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I1 => current_duty_cycle(7),
      O => \select_ln16_reg_333[7]_i_2_n_0\
    );
\select_ln16_reg_333[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => current_duty_cycle(6),
      I1 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(3),
      O => \select_ln16_reg_333[7]_i_3_n_0\
    );
\select_ln16_reg_333[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => current_duty_cycle(5),
      I1 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(2),
      O => \select_ln16_reg_333[7]_i_4_n_0\
    );
\select_ln16_reg_333[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => current_duty_cycle(4),
      I1 => \icmp_ln16_reg_319_reg_n_0_[0]\,
      I2 => tmp_1_fu_255_p4(1),
      O => \select_ln16_reg_333[7]_i_5_n_0\
    );
\select_ln16_reg_333_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(0),
      Q => select_ln16_reg_333(0),
      R => '0'
    );
\select_ln16_reg_333_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(1),
      Q => select_ln16_reg_333(1),
      R => '0'
    );
\select_ln16_reg_333_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(2),
      Q => select_ln16_reg_333(2),
      R => '0'
    );
\select_ln16_reg_333_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(3),
      Q => select_ln16_reg_333(3),
      R => '0'
    );
\select_ln16_reg_333_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \select_ln16_reg_333_reg[3]_i_1_n_0\,
      CO(2) => \select_ln16_reg_333_reg[3]_i_1_n_1\,
      CO(1) => \select_ln16_reg_333_reg[3]_i_1_n_2\,
      CO(0) => \select_ln16_reg_333_reg[3]_i_1_n_3\,
      CYINIT => \select_ln16_reg_333[3]_i_2_n_0\,
      DI(3 downto 0) => current_duty_cycle(3 downto 0),
      O(3 downto 0) => select_ln16_fu_215_p3(3 downto 0),
      S(3) => \select_ln16_reg_333[3]_i_3_n_0\,
      S(2) => \select_ln16_reg_333[3]_i_4_n_0\,
      S(1) => \select_ln16_reg_333[3]_i_5_n_0\,
      S(0) => \select_ln16_reg_333[3]_i_6_n_0\
    );
\select_ln16_reg_333_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(4),
      Q => select_ln16_reg_333(4),
      R => '0'
    );
\select_ln16_reg_333_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(5),
      Q => select_ln16_reg_333(5),
      R => '0'
    );
\select_ln16_reg_333_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(6),
      Q => select_ln16_reg_333(6),
      R => '0'
    );
\select_ln16_reg_333_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => select_ln16_fu_215_p3(7),
      Q => select_ln16_reg_333(7),
      R => '0'
    );
\select_ln16_reg_333_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \select_ln16_reg_333_reg[3]_i_1_n_0\,
      CO(3) => \NLW_select_ln16_reg_333_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \select_ln16_reg_333_reg[7]_i_1_n_1\,
      CO(1) => \select_ln16_reg_333_reg[7]_i_1_n_2\,
      CO(0) => \select_ln16_reg_333_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => current_duty_cycle(6 downto 4),
      O(3 downto 0) => select_ln16_fu_215_p3(7 downto 4),
      S(3) => \select_ln16_reg_333[7]_i_2_n_0\,
      S(2) => \select_ln16_reg_333[7]_i_3_n_0\,
      S(1) => \select_ln16_reg_333[7]_i_4_n_0\,
      S(0) => \select_ln16_reg_333[7]_i_5_n_0\
    );
\speed[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => tmp_1_fu_255_p4(2),
      I1 => tmp_1_fu_255_p4(0),
      I2 => tmp_1_fu_255_p4(3),
      I3 => tmp_1_fu_255_p4(1),
      I4 => \select_ln12_reg_306_reg_n_0_[0]\,
      O => \^speed\(0)
    );
\speed[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => tmp_1_fu_255_p4(2),
      I1 => tmp_1_fu_255_p4(0),
      I2 => tmp_1_fu_255_p4(3),
      I3 => tmp_1_fu_255_p4(1),
      I4 => \select_ln12_reg_306_reg_n_0_[1]\,
      O => \^speed\(1)
    );
\speed[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => tmp_1_fu_255_p4(2),
      I1 => tmp_1_fu_255_p4(0),
      I2 => tmp_1_fu_255_p4(3),
      I3 => tmp_1_fu_255_p4(1),
      I4 => \select_ln12_reg_306_reg_n_0_[2]\,
      O => \^speed\(2)
    );
\speed[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tmp_1_fu_255_p4(1),
      I1 => tmp_1_fu_255_p4(0),
      I2 => tmp_1_fu_255_p4(3),
      I3 => tmp_1_fu_255_p4(2),
      O => \^speed\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_servo_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_servo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_servo_0_0 : entity is "design_1_servo_0_0,servo,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_servo_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_servo_0_0 : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of design_1_servo_0_0 : entity is "servo,Vivado 2019.2";
end design_1_servo_0_0;

architecture STRUCTURE of design_1_servo_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0";
  attribute x_interface_info of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute x_interface_info of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute x_interface_info of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute x_interface_info of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute x_interface_parameter of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute x_interface_info of down : signal is "xilinx.com:signal:data:1.0 down DATA";
  attribute x_interface_parameter of down : signal is "XIL_INTERFACENAME down, LAYERED_METADATA undef";
  attribute x_interface_info of dutyCycle : signal is "xilinx.com:signal:data:1.0 dutyCycle DATA";
  attribute x_interface_parameter of dutyCycle : signal is "XIL_INTERFACENAME dutyCycle, LAYERED_METADATA undef";
  attribute x_interface_info of left_r : signal is "xilinx.com:signal:data:1.0 left_r DATA";
  attribute x_interface_parameter of left_r : signal is "XIL_INTERFACENAME left_r, LAYERED_METADATA undef";
  attribute x_interface_info of right_r : signal is "xilinx.com:signal:data:1.0 right_r DATA";
  attribute x_interface_parameter of right_r : signal is "XIL_INTERFACENAME right_r, LAYERED_METADATA undef";
  attribute x_interface_info of speed : signal is "xilinx.com:signal:data:1.0 speed DATA";
  attribute x_interface_parameter of speed : signal is "XIL_INTERFACENAME speed, LAYERED_METADATA undef";
  attribute x_interface_info of up : signal is "xilinx.com:signal:data:1.0 up DATA";
  attribute x_interface_parameter of up : signal is "XIL_INTERFACENAME up, LAYERED_METADATA undef";
begin
U0: entity work.design_1_servo_0_0_servo
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      down(7 downto 0) => down(7 downto 0),
      dutyCycle(7 downto 0) => dutyCycle(7 downto 0),
      dutyCycle_ap_vld => dutyCycle_ap_vld,
      left_r(7 downto 0) => left_r(7 downto 0),
      right_r(7 downto 0) => right_r(7 downto 0),
      speed(7 downto 0) => speed(7 downto 0),
      speed_ap_vld => speed_ap_vld,
      up(7 downto 0) => up(7 downto 0)
    );
end STRUCTURE;
