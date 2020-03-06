-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Feb 17 18:11:05 2020
-- Host        : agazorPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_servo_0_0_sim_netlist.vhdl
-- Design      : design_1_servo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo is
  port (
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
    p_dutyCycle_ap_vld : out STD_LOGIC;
    p_speed : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_speed_ap_vld : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo is
  signal \<const0>\ : STD_LOGIC;
  signal add_ln21_fu_253_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal current_duty_cycle : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal current_duty_cycle0 : STD_LOGIC;
  signal current_speed : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \current_speed[6]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln17_reg_320[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln17_reg_320[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln17_reg_320[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln17_reg_320_reg_n_0_[0]\ : STD_LOGIC;
  signal \^p_dutycycle\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_dutyCycle[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_n_1\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_n_2\ : STD_LOGIC;
  signal \p_dutyCycle[0]_INST_0_n_3\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_12_n_1\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_12_n_2\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_12_n_3\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_9_n_1\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_9_n_2\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_i_9_n_3\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_n_1\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_n_2\ : STD_LOGIC;
  signal \p_dutyCycle[4]_INST_0_n_3\ : STD_LOGIC;
  signal \^p_speed\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal select_ln13_fu_172_p3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \select_ln13_reg_313[1]_i_1_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[3]_i_2_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[3]_i_3_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[3]_i_4_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[3]_i_5_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[3]_i_6_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[3]_i_7_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[3]_i_8_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[4]_i_2_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[5]_i_2_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[5]_i_3_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[5]_i_4_n_0\ : STD_LOGIC;
  signal \select_ln13_reg_313[6]_i_3_n_0\ : STD_LOGIC;
  signal select_ln17_1_fu_237_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sub_ln17_fu_204_p2 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal sub_ln17_reg_338 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal \sub_ln17_reg_338[3]_i_2_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[3]_i_3_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[3]_i_4_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[3]_i_5_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[3]_i_6_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[3]_i_7_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[3]_i_8_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[3]_i_9_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[7]_i_2_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[7]_i_3_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[7]_i_4_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[7]_i_5_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338[7]_i_6_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sub_ln17_reg_338_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_p_dutyCycle[4]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_dutyCycle[4]_INST_0_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_p_dutyCycle[4]_INST_0_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sub_ln17_reg_338_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sub_ln17_reg_338_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sub_ln17_reg_338_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \icmp_ln17_reg_320[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \select_ln13_reg_313[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \select_ln13_reg_313[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \select_ln13_reg_313[3]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \select_ln13_reg_313[5]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sub_ln17_reg_338[3]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sub_ln17_reg_338[3]_i_8\ : label is "soft_lutpair0";
begin
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
  p_dutyCycle(7 downto 0) <= \^p_dutycycle\(7 downto 0);
  p_dutyCycle_ap_vld <= \^ap_done\;
  p_speed(7) <= \<const0>\;
  p_speed(6 downto 0) <= \^p_speed\(6 downto 0);
  p_speed_ap_vld <= \^ap_done\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_rst,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^ap_done\,
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_rst,
      O => \ap_CS_fsm[1]_i_1_n_0\
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
\current_duty_cycle[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888AAAAAAA"
    )
        port map (
      I0 => \^ap_done\,
      I1 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      I2 => add_ln21_fu_253_p2(7),
      I3 => add_ln21_fu_253_p2(6),
      I4 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I5 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      O => current_duty_cycle0
    );
\current_duty_cycle_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_duty_cycle0,
      D => \^p_dutycycle\(0),
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
      D => \^p_dutycycle\(1),
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
      D => \^p_dutycycle\(2),
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
      D => \^p_dutycycle\(3),
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
      D => \^p_dutycycle\(4),
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
      D => \^p_dutycycle\(5),
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
      D => \^p_dutycycle\(6),
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
      D => \^p_dutycycle\(7),
      Q => current_duty_cycle(7),
      R => '0'
    );
\current_speed[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => \select_ln13_reg_313[3]_i_2_n_0\,
      I3 => \select_ln13_reg_313[4]_i_2_n_0\,
      O => \current_speed[6]_i_1_n_0\
    );
\current_speed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \current_speed[6]_i_1_n_0\,
      D => select_ln13_fu_172_p3(0),
      Q => current_speed(0),
      R => '0'
    );
\current_speed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \current_speed[6]_i_1_n_0\,
      D => \select_ln13_reg_313[1]_i_1_n_0\,
      Q => current_speed(1),
      R => '0'
    );
\current_speed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \current_speed[6]_i_1_n_0\,
      D => select_ln13_fu_172_p3(2),
      Q => current_speed(2),
      R => '0'
    );
\current_speed_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \current_speed[6]_i_1_n_0\,
      D => select_ln13_fu_172_p3(3),
      Q => current_speed(3),
      R => '0'
    );
\current_speed_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \current_speed[6]_i_1_n_0\,
      D => select_ln13_fu_172_p3(4),
      Q => current_speed(4),
      R => '0'
    );
\current_speed_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \current_speed[6]_i_1_n_0\,
      D => select_ln13_fu_172_p3(5),
      Q => current_speed(5),
      R => '0'
    );
\current_speed_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \current_speed[6]_i_1_n_0\,
      D => select_ln13_fu_172_p3(6),
      Q => current_speed(6),
      R => '0'
    );
\icmp_ln17_reg_320[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF7070"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \icmp_ln17_reg_320_reg_n_0_[0]\,
      I3 => \icmp_ln17_reg_320[0]_i_2_n_0\,
      I4 => \icmp_ln17_reg_320[0]_i_3_n_0\,
      O => \icmp_ln17_reg_320[0]_i_1_n_0\
    );
\icmp_ln17_reg_320[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => p_left(0),
      I1 => p_left(2),
      I2 => p_left(1),
      I3 => p_left(3),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_start,
      O => \icmp_ln17_reg_320[0]_i_2_n_0\
    );
\icmp_ln17_reg_320[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_left(7),
      I1 => p_left(4),
      I2 => p_left(6),
      I3 => p_left(5),
      O => \icmp_ln17_reg_320[0]_i_3_n_0\
    );
\icmp_ln17_reg_320_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln17_reg_320[0]_i_1_n_0\,
      Q => \icmp_ln17_reg_320_reg_n_0_[0]\,
      R => '0'
    );
\p_dutyCycle[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_dutyCycle[0]_INST_0_n_0\,
      CO(2) => \p_dutyCycle[0]_INST_0_n_1\,
      CO(1) => \p_dutyCycle[0]_INST_0_n_2\,
      CO(0) => \p_dutyCycle[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => select_ln17_1_fu_237_p3(3 downto 0),
      O(3 downto 0) => \^p_dutycycle\(3 downto 0),
      S(3) => \p_dutyCycle[0]_INST_0_i_2_n_0\,
      S(2) => \p_dutyCycle[0]_INST_0_i_3_n_0\,
      S(1) => \p_dutyCycle[0]_INST_0_i_4_n_0\,
      S(0) => \p_dutyCycle[0]_INST_0_i_5_n_0\
    );
\p_dutyCycle[0]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_dutyCycle[0]_INST_0_i_1_n_0\,
      CO(2) => \p_dutyCycle[0]_INST_0_i_1_n_1\,
      CO(1) => \p_dutyCycle[0]_INST_0_i_1_n_2\,
      CO(0) => \p_dutyCycle[0]_INST_0_i_1_n_3\,
      CYINIT => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      DI(3 downto 0) => current_duty_cycle(3 downto 0),
      O(3 downto 0) => select_ln17_1_fu_237_p3(3 downto 0),
      S(3) => \p_dutyCycle[0]_INST_0_i_7_n_0\,
      S(2) => \p_dutyCycle[0]_INST_0_i_8_n_0\,
      S(1) => \p_dutyCycle[0]_INST_0_i_9_n_0\,
      S(0) => \p_dutyCycle[0]_INST_0_i_10_n_0\
    );
\p_dutyCycle[0]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => current_duty_cycle(0),
      I1 => \^p_speed\(0),
      I2 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[0]_INST_0_i_10_n_0\
    );
\p_dutyCycle[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FFFFFF"
    )
        port map (
      I0 => sub_ln17_reg_338(2),
      I1 => sub_ln17_reg_338(4),
      I2 => sub_ln17_reg_338(3),
      I3 => sub_ln17_reg_338(5),
      I4 => sub_ln17_reg_338(6),
      I5 => sub_ln17_reg_338(7),
      O => \p_dutyCycle[0]_INST_0_i_11_n_0\
    );
\p_dutyCycle[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9555AAAAAAAA"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(3),
      I1 => add_ln21_fu_253_p2(7),
      I2 => add_ln21_fu_253_p2(6),
      I3 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I4 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      I5 => \^p_speed\(3),
      O => \p_dutyCycle[0]_INST_0_i_2_n_0\
    );
\p_dutyCycle[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9555AAAAAAAA"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(2),
      I1 => add_ln21_fu_253_p2(7),
      I2 => add_ln21_fu_253_p2(6),
      I3 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I4 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      I5 => \^p_speed\(2),
      O => \p_dutyCycle[0]_INST_0_i_3_n_0\
    );
\p_dutyCycle[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9555AAAAAAAA"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(1),
      I1 => add_ln21_fu_253_p2(7),
      I2 => add_ln21_fu_253_p2(6),
      I3 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I4 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      I5 => \^p_speed\(1),
      O => \p_dutyCycle[0]_INST_0_i_4_n_0\
    );
\p_dutyCycle[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9555AAAAAAAA"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(0),
      I1 => add_ln21_fu_253_p2(7),
      I2 => add_ln21_fu_253_p2(6),
      I3 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I4 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      I5 => \^p_speed\(0),
      O => \p_dutyCycle[0]_INST_0_i_5_n_0\
    );
\p_dutyCycle[0]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sub_ln17_reg_338(8),
      I1 => \icmp_ln17_reg_320_reg_n_0_[0]\,
      I2 => \p_dutyCycle[0]_INST_0_i_11_n_0\,
      O => \p_dutyCycle[0]_INST_0_i_6_n_0\
    );
\p_dutyCycle[0]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => current_duty_cycle(3),
      I1 => \^p_speed\(3),
      I2 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[0]_INST_0_i_7_n_0\
    );
\p_dutyCycle[0]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => current_duty_cycle(2),
      I1 => \^p_speed\(2),
      I2 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[0]_INST_0_i_8_n_0\
    );
\p_dutyCycle[0]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => current_duty_cycle(1),
      I1 => \^p_speed\(1),
      I2 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[0]_INST_0_i_9_n_0\
    );
\p_dutyCycle[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_dutyCycle[0]_INST_0_n_0\,
      CO(3) => \NLW_p_dutyCycle[4]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \p_dutyCycle[4]_INST_0_n_1\,
      CO(1) => \p_dutyCycle[4]_INST_0_n_2\,
      CO(0) => \p_dutyCycle[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => select_ln17_1_fu_237_p3(6 downto 4),
      O(3 downto 0) => \^p_dutycycle\(7 downto 4),
      S(3) => select_ln17_1_fu_237_p3(7),
      S(2) => \p_dutyCycle[4]_INST_0_i_2_n_0\,
      S(1) => \p_dutyCycle[4]_INST_0_i_3_n_0\,
      S(0) => \p_dutyCycle[4]_INST_0_i_4_n_0\
    );
\p_dutyCycle[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_dutyCycle[0]_INST_0_i_1_n_0\,
      CO(3) => \NLW_p_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED\(3),
      CO(2) => \p_dutyCycle[4]_INST_0_i_1_n_1\,
      CO(1) => \p_dutyCycle[4]_INST_0_i_1_n_2\,
      CO(0) => \p_dutyCycle[4]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => current_duty_cycle(6 downto 4),
      O(3 downto 0) => select_ln17_1_fu_237_p3(7 downto 4),
      S(3) => \p_dutyCycle[4]_INST_0_i_5_n_0\,
      S(2) => \p_dutyCycle[4]_INST_0_i_6_n_0\,
      S(1) => \p_dutyCycle[4]_INST_0_i_7_n_0\,
      S(0) => \p_dutyCycle[4]_INST_0_i_8_n_0\
    );
\p_dutyCycle[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFE00"
    )
        port map (
      I0 => add_ln21_fu_253_p2(0),
      I1 => add_ln21_fu_253_p2(1),
      I2 => add_ln21_fu_253_p2(2),
      I3 => add_ln21_fu_253_p2(3),
      I4 => add_ln21_fu_253_p2(4),
      I5 => add_ln21_fu_253_p2(5),
      O => \p_dutyCycle[4]_INST_0_i_10_n_0\
    );
\p_dutyCycle[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => add_ln21_fu_253_p2(8),
      I1 => \p_dutyCycle[4]_INST_0_i_17_n_0\,
      I2 => p_right(3),
      I3 => p_right(1),
      I4 => p_right(7),
      I5 => p_right(4),
      O => \p_dutyCycle[4]_INST_0_i_11_n_0\
    );
\p_dutyCycle[4]_INST_0_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_dutyCycle[4]_INST_0_i_12_n_0\,
      CO(2) => \p_dutyCycle[4]_INST_0_i_12_n_1\,
      CO(1) => \p_dutyCycle[4]_INST_0_i_12_n_2\,
      CO(0) => \p_dutyCycle[4]_INST_0_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => select_ln17_1_fu_237_p3(3 downto 0),
      O(3 downto 0) => add_ln21_fu_253_p2(3 downto 0),
      S(3) => \p_dutyCycle[4]_INST_0_i_18_n_0\,
      S(2) => \p_dutyCycle[4]_INST_0_i_19_n_0\,
      S(1) => \p_dutyCycle[4]_INST_0_i_20_n_0\,
      S(0) => \p_dutyCycle[4]_INST_0_i_21_n_0\
    );
\p_dutyCycle[4]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(6),
      I1 => \^p_speed\(6),
      O => \p_dutyCycle[4]_INST_0_i_13_n_0\
    );
\p_dutyCycle[4]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(5),
      I1 => \^p_speed\(5),
      O => \p_dutyCycle[4]_INST_0_i_14_n_0\
    );
\p_dutyCycle[4]_INST_0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(4),
      I1 => \^p_speed\(4),
      O => \p_dutyCycle[4]_INST_0_i_15_n_0\
    );
\p_dutyCycle[4]_INST_0_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_dutyCycle[4]_INST_0_i_9_n_0\,
      CO(3 downto 1) => \NLW_p_dutyCycle[4]_INST_0_i_16_CO_UNCONNECTED\(3 downto 1),
      CO(0) => add_ln21_fu_253_p2(8),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_p_dutyCycle[4]_INST_0_i_16_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\p_dutyCycle[4]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_right(6),
      I1 => p_right(5),
      I2 => p_right(2),
      I3 => p_right(0),
      O => \p_dutyCycle[4]_INST_0_i_17_n_0\
    );
\p_dutyCycle[4]_INST_0_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(3),
      I1 => \^p_speed\(3),
      O => \p_dutyCycle[4]_INST_0_i_18_n_0\
    );
\p_dutyCycle[4]_INST_0_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(2),
      I1 => \^p_speed\(2),
      O => \p_dutyCycle[4]_INST_0_i_19_n_0\
    );
\p_dutyCycle[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9555AAAAAAAA"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(6),
      I1 => add_ln21_fu_253_p2(7),
      I2 => add_ln21_fu_253_p2(6),
      I3 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I4 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      I5 => \^p_speed\(6),
      O => \p_dutyCycle[4]_INST_0_i_2_n_0\
    );
\p_dutyCycle[4]_INST_0_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(1),
      I1 => \^p_speed\(1),
      O => \p_dutyCycle[4]_INST_0_i_20_n_0\
    );
\p_dutyCycle[4]_INST_0_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(0),
      I1 => \^p_speed\(0),
      O => \p_dutyCycle[4]_INST_0_i_21_n_0\
    );
\p_dutyCycle[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9555AAAAAAAA"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(5),
      I1 => add_ln21_fu_253_p2(7),
      I2 => add_ln21_fu_253_p2(6),
      I3 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I4 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      I5 => \^p_speed\(5),
      O => \p_dutyCycle[4]_INST_0_i_3_n_0\
    );
\p_dutyCycle[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9555AAAAAAAA"
    )
        port map (
      I0 => select_ln17_1_fu_237_p3(4),
      I1 => add_ln21_fu_253_p2(7),
      I2 => add_ln21_fu_253_p2(6),
      I3 => \p_dutyCycle[4]_INST_0_i_10_n_0\,
      I4 => \p_dutyCycle[4]_INST_0_i_11_n_0\,
      I5 => \^p_speed\(4),
      O => \p_dutyCycle[4]_INST_0_i_4_n_0\
    );
\p_dutyCycle[4]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_duty_cycle(7),
      I1 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[4]_INST_0_i_5_n_0\
    );
\p_dutyCycle[4]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => current_duty_cycle(6),
      I1 => \^p_speed\(6),
      I2 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[4]_INST_0_i_6_n_0\
    );
\p_dutyCycle[4]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => current_duty_cycle(5),
      I1 => \^p_speed\(5),
      I2 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[4]_INST_0_i_7_n_0\
    );
\p_dutyCycle[4]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => current_duty_cycle(4),
      I1 => \^p_speed\(4),
      I2 => \p_dutyCycle[0]_INST_0_i_6_n_0\,
      O => \p_dutyCycle[4]_INST_0_i_8_n_0\
    );
\p_dutyCycle[4]_INST_0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_dutyCycle[4]_INST_0_i_12_n_0\,
      CO(3) => \p_dutyCycle[4]_INST_0_i_9_n_0\,
      CO(2) => \p_dutyCycle[4]_INST_0_i_9_n_1\,
      CO(1) => \p_dutyCycle[4]_INST_0_i_9_n_2\,
      CO(0) => \p_dutyCycle[4]_INST_0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => select_ln17_1_fu_237_p3(7 downto 4),
      O(3 downto 0) => add_ln21_fu_253_p2(7 downto 4),
      S(3) => select_ln17_1_fu_237_p3(7),
      S(2) => \p_dutyCycle[4]_INST_0_i_13_n_0\,
      S(1) => \p_dutyCycle[4]_INST_0_i_14_n_0\,
      S(0) => \p_dutyCycle[4]_INST_0_i_15_n_0\
    );
\select_ln13_reg_313[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_speed(0),
      I1 => \select_ln13_reg_313[4]_i_2_n_0\,
      I2 => \select_ln13_reg_313[3]_i_2_n_0\,
      O => select_ln13_fu_172_p3(0)
    );
\select_ln13_reg_313[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \select_ln13_reg_313[3]_i_2_n_0\,
      I1 => current_speed(0),
      I2 => \select_ln13_reg_313[4]_i_2_n_0\,
      I3 => current_speed(1),
      O => \select_ln13_reg_313[1]_i_1_n_0\
    );
\select_ln13_reg_313[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => \select_ln13_reg_313[3]_i_2_n_0\,
      I1 => current_speed(1),
      I2 => \select_ln13_reg_313[4]_i_2_n_0\,
      I3 => current_speed(0),
      I4 => current_speed(2),
      O => select_ln13_fu_172_p3(2)
    );
\select_ln13_reg_313[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE80000003"
    )
        port map (
      I0 => \select_ln13_reg_313[3]_i_2_n_0\,
      I1 => current_speed(1),
      I2 => \select_ln13_reg_313[4]_i_2_n_0\,
      I3 => current_speed(0),
      I4 => current_speed(2),
      I5 => current_speed(3),
      O => select_ln13_fu_172_p3(3)
    );
\select_ln13_reg_313[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000041"
    )
        port map (
      I0 => current_speed(6),
      I1 => \select_ln13_reg_313[3]_i_3_n_0\,
      I2 => current_speed(5),
      I3 => \select_ln13_reg_313[3]_i_4_n_0\,
      I4 => \select_ln13_reg_313[3]_i_5_n_0\,
      O => \select_ln13_reg_313[3]_i_2_n_0\
    );
\select_ln13_reg_313[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110000011101110"
    )
        port map (
      I0 => \select_ln13_reg_313[5]_i_4_n_0\,
      I1 => current_speed(4),
      I2 => current_speed(6),
      I3 => current_speed(5),
      I4 => \select_ln13_reg_313[5]_i_3_n_0\,
      I5 => \select_ln13_reg_313[5]_i_2_n_0\,
      O => \select_ln13_reg_313[3]_i_3_n_0\
    );
\select_ln13_reg_313[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => current_speed(4),
      I1 => \select_ln13_reg_313[3]_i_6_n_0\,
      I2 => p_up(2),
      I3 => p_up(0),
      I4 => p_up(6),
      I5 => p_up(5),
      O => \select_ln13_reg_313[3]_i_4_n_0\
    );
\select_ln13_reg_313[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF22FF00000D00"
    )
        port map (
      I0 => \select_ln13_reg_313[5]_i_2_n_0\,
      I1 => \select_ln13_reg_313[5]_i_3_n_0\,
      I2 => \select_ln13_reg_313[3]_i_7_n_0\,
      I3 => \select_ln13_reg_313[3]_i_8_n_0\,
      I4 => current_speed(0),
      I5 => current_speed(3),
      O => \select_ln13_reg_313[3]_i_5_n_0\
    );
\select_ln13_reg_313[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_up(7),
      I1 => p_up(4),
      I2 => p_up(3),
      I3 => p_up(1),
      O => \select_ln13_reg_313[3]_i_6_n_0\
    );
\select_ln13_reg_313[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => current_speed(4),
      I1 => current_speed(6),
      I2 => current_speed(5),
      O => \select_ln13_reg_313[3]_i_7_n_0\
    );
\select_ln13_reg_313[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_speed(1),
      I1 => current_speed(2),
      O => \select_ln13_reg_313[3]_i_8_n_0\
    );
\select_ln13_reg_313[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => current_speed(1),
      I1 => current_speed(2),
      I2 => current_speed(0),
      I3 => current_speed(3),
      I4 => \select_ln13_reg_313[4]_i_2_n_0\,
      I5 => current_speed(4),
      O => select_ln13_fu_172_p3(4)
    );
\select_ln13_reg_313[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010001"
    )
        port map (
      I0 => \select_ln13_reg_313[5]_i_4_n_0\,
      I1 => current_speed(4),
      I2 => current_speed(6),
      I3 => current_speed(5),
      I4 => \select_ln13_reg_313[5]_i_3_n_0\,
      I5 => \select_ln13_reg_313[5]_i_2_n_0\,
      O => \select_ln13_reg_313[4]_i_2_n_0\
    );
\select_ln13_reg_313[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F02D20"
    )
        port map (
      I0 => \select_ln13_reg_313[5]_i_2_n_0\,
      I1 => \select_ln13_reg_313[5]_i_3_n_0\,
      I2 => current_speed(5),
      I3 => current_speed(6),
      I4 => current_speed(4),
      I5 => \select_ln13_reg_313[5]_i_4_n_0\,
      O => select_ln13_fu_172_p3(5)
    );
\select_ln13_reg_313[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_down(6),
      I1 => p_down(5),
      I2 => p_down(2),
      I3 => p_down(0),
      O => \select_ln13_reg_313[5]_i_2_n_0\
    );
\select_ln13_reg_313[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_down(3),
      I1 => p_down(1),
      I2 => p_down(7),
      I3 => p_down(4),
      O => \select_ln13_reg_313[5]_i_3_n_0\
    );
\select_ln13_reg_313[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => current_speed(3),
      I1 => current_speed(0),
      I2 => current_speed(2),
      I3 => current_speed(1),
      O => \select_ln13_reg_313[5]_i_4_n_0\
    );
\select_ln13_reg_313[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm1
    );
\select_ln13_reg_313[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \select_ln13_reg_313[6]_i_3_n_0\,
      O => select_ln13_fu_172_p3(6)
    );
\select_ln13_reg_313[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555555555F7"
    )
        port map (
      I0 => current_speed(6),
      I1 => \select_ln13_reg_313[5]_i_2_n_0\,
      I2 => \select_ln13_reg_313[5]_i_3_n_0\,
      I3 => current_speed(4),
      I4 => \select_ln13_reg_313[5]_i_4_n_0\,
      I5 => current_speed(5),
      O => \select_ln13_reg_313[6]_i_3_n_0\
    );
\select_ln13_reg_313_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => select_ln13_fu_172_p3(0),
      Q => \^p_speed\(0),
      R => '0'
    );
\select_ln13_reg_313_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \select_ln13_reg_313[1]_i_1_n_0\,
      Q => \^p_speed\(1),
      R => '0'
    );
\select_ln13_reg_313_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => select_ln13_fu_172_p3(2),
      Q => \^p_speed\(2),
      R => '0'
    );
\select_ln13_reg_313_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => select_ln13_fu_172_p3(3),
      Q => \^p_speed\(3),
      R => '0'
    );
\select_ln13_reg_313_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => select_ln13_fu_172_p3(4),
      Q => \^p_speed\(4),
      R => '0'
    );
\select_ln13_reg_313_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => select_ln13_fu_172_p3(5),
      Q => \^p_speed\(5),
      R => '0'
    );
\select_ln13_reg_313_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => select_ln13_fu_172_p3(6),
      Q => \^p_speed\(6),
      R => '0'
    );
\sub_ln17_reg_338[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA99995555A"
    )
        port map (
      I0 => current_duty_cycle(3),
      I1 => \sub_ln17_reg_338[3]_i_6_n_0\,
      I2 => current_speed(1),
      I3 => \sub_ln17_reg_338[3]_i_7_n_0\,
      I4 => current_speed(2),
      I5 => current_speed(3),
      O => \sub_ln17_reg_338[3]_i_2_n_0\
    );
\sub_ln17_reg_338[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999996"
    )
        port map (
      I0 => current_duty_cycle(2),
      I1 => current_speed(2),
      I2 => current_speed(0),
      I3 => \select_ln13_reg_313[4]_i_2_n_0\,
      I4 => current_speed(1),
      I5 => \select_ln13_reg_313[3]_i_2_n_0\,
      O => \sub_ln17_reg_338[3]_i_3_n_0\
    );
\sub_ln17_reg_338[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999996"
    )
        port map (
      I0 => current_duty_cycle(1),
      I1 => current_speed(1),
      I2 => \select_ln13_reg_313[4]_i_2_n_0\,
      I3 => current_speed(0),
      I4 => \select_ln13_reg_313[3]_i_2_n_0\,
      O => \sub_ln17_reg_338[3]_i_4_n_0\
    );
\sub_ln17_reg_338[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => current_duty_cycle(0),
      I1 => current_speed(0),
      I2 => \select_ln13_reg_313[4]_i_2_n_0\,
      I3 => \select_ln13_reg_313[3]_i_2_n_0\,
      O => \sub_ln17_reg_338[3]_i_5_n_0\
    );
\sub_ln17_reg_338[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \sub_ln17_reg_338[3]_i_8_n_0\,
      I1 => \select_ln13_reg_313[6]_i_3_n_0\,
      I2 => select_ln13_fu_172_p3(5),
      I3 => \select_ln13_reg_313[3]_i_4_n_0\,
      I4 => \select_ln13_reg_313[3]_i_5_n_0\,
      I5 => \sub_ln17_reg_338[3]_i_9_n_0\,
      O => \sub_ln17_reg_338[3]_i_6_n_0\
    );
\sub_ln17_reg_338[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => current_speed(0),
      I1 => \select_ln13_reg_313[5]_i_2_n_0\,
      I2 => \select_ln13_reg_313[5]_i_3_n_0\,
      I3 => \select_ln13_reg_313[3]_i_7_n_0\,
      I4 => \select_ln13_reg_313[5]_i_4_n_0\,
      O => \sub_ln17_reg_338[3]_i_7_n_0\
    );
\sub_ln17_reg_338[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A655A6"
    )
        port map (
      I0 => current_speed(0),
      I1 => \select_ln13_reg_313[5]_i_2_n_0\,
      I2 => \select_ln13_reg_313[5]_i_3_n_0\,
      I3 => \select_ln13_reg_313[3]_i_7_n_0\,
      I4 => \select_ln13_reg_313[5]_i_4_n_0\,
      O => \sub_ln17_reg_338[3]_i_8_n_0\
    );
\sub_ln17_reg_338[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555559A559A9A"
    )
        port map (
      I0 => current_speed(1),
      I1 => \select_ln13_reg_313[5]_i_4_n_0\,
      I2 => \select_ln13_reg_313[3]_i_7_n_0\,
      I3 => \select_ln13_reg_313[5]_i_3_n_0\,
      I4 => \select_ln13_reg_313[5]_i_2_n_0\,
      I5 => current_speed(0),
      O => \sub_ln17_reg_338[3]_i_9_n_0\
    );
\sub_ln17_reg_338[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_duty_cycle(7),
      O => \sub_ln17_reg_338[7]_i_2_n_0\
    );
\sub_ln17_reg_338[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_duty_cycle(6),
      I1 => \select_ln13_reg_313[6]_i_3_n_0\,
      O => \sub_ln17_reg_338[7]_i_3_n_0\
    );
\sub_ln17_reg_338[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_duty_cycle(5),
      I1 => select_ln13_fu_172_p3(5),
      O => \sub_ln17_reg_338[7]_i_4_n_0\
    );
\sub_ln17_reg_338[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_duty_cycle(4),
      I1 => \sub_ln17_reg_338[7]_i_6_n_0\,
      O => \sub_ln17_reg_338[7]_i_5_n_0\
    );
\sub_ln17_reg_338[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => current_speed(4),
      I1 => \select_ln13_reg_313[4]_i_2_n_0\,
      I2 => current_speed(3),
      I3 => current_speed(0),
      I4 => current_speed(2),
      I5 => current_speed(1),
      O => \sub_ln17_reg_338[7]_i_6_n_0\
    );
\sub_ln17_reg_338_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln17_fu_204_p2(2),
      Q => sub_ln17_reg_338(2),
      R => '0'
    );
\sub_ln17_reg_338_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln17_fu_204_p2(3),
      Q => sub_ln17_reg_338(3),
      R => '0'
    );
\sub_ln17_reg_338_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sub_ln17_reg_338_reg[3]_i_1_n_0\,
      CO(2) => \sub_ln17_reg_338_reg[3]_i_1_n_1\,
      CO(1) => \sub_ln17_reg_338_reg[3]_i_1_n_2\,
      CO(0) => \sub_ln17_reg_338_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => current_duty_cycle(3 downto 0),
      O(3 downto 2) => sub_ln17_fu_204_p2(3 downto 2),
      O(1 downto 0) => \NLW_sub_ln17_reg_338_reg[3]_i_1_O_UNCONNECTED\(1 downto 0),
      S(3) => \sub_ln17_reg_338[3]_i_2_n_0\,
      S(2) => \sub_ln17_reg_338[3]_i_3_n_0\,
      S(1) => \sub_ln17_reg_338[3]_i_4_n_0\,
      S(0) => \sub_ln17_reg_338[3]_i_5_n_0\
    );
\sub_ln17_reg_338_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln17_fu_204_p2(4),
      Q => sub_ln17_reg_338(4),
      R => '0'
    );
\sub_ln17_reg_338_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln17_fu_204_p2(5),
      Q => sub_ln17_reg_338(5),
      R => '0'
    );
\sub_ln17_reg_338_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln17_fu_204_p2(6),
      Q => sub_ln17_reg_338(6),
      R => '0'
    );
\sub_ln17_reg_338_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln17_fu_204_p2(7),
      Q => sub_ln17_reg_338(7),
      R => '0'
    );
\sub_ln17_reg_338_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_ln17_reg_338_reg[3]_i_1_n_0\,
      CO(3) => \sub_ln17_reg_338_reg[7]_i_1_n_0\,
      CO(2) => \sub_ln17_reg_338_reg[7]_i_1_n_1\,
      CO(1) => \sub_ln17_reg_338_reg[7]_i_1_n_2\,
      CO(0) => \sub_ln17_reg_338_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_duty_cycle(7 downto 4),
      O(3 downto 0) => sub_ln17_fu_204_p2(7 downto 4),
      S(3) => \sub_ln17_reg_338[7]_i_2_n_0\,
      S(2) => \sub_ln17_reg_338[7]_i_3_n_0\,
      S(1) => \sub_ln17_reg_338[7]_i_4_n_0\,
      S(0) => \sub_ln17_reg_338[7]_i_5_n_0\
    );
\sub_ln17_reg_338_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => sub_ln17_fu_204_p2(8),
      Q => sub_ln17_reg_338(8),
      R => '0'
    );
\sub_ln17_reg_338_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_ln17_reg_338_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_sub_ln17_reg_338_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sub_ln17_reg_338_reg[8]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => sub_ln17_fu_204_p2(8),
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_servo_0_0,servo,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "servo,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute x_interface_info of p_down : signal is "xilinx.com:signal:data:1.0 p_down DATA";
  attribute x_interface_parameter of p_down : signal is "XIL_INTERFACENAME p_down, LAYERED_METADATA undef";
  attribute x_interface_info of p_dutyCycle : signal is "xilinx.com:signal:data:1.0 p_dutyCycle DATA";
  attribute x_interface_parameter of p_dutyCycle : signal is "XIL_INTERFACENAME p_dutyCycle, LAYERED_METADATA undef";
  attribute x_interface_info of p_left : signal is "xilinx.com:signal:data:1.0 p_left DATA";
  attribute x_interface_parameter of p_left : signal is "XIL_INTERFACENAME p_left, LAYERED_METADATA undef";
  attribute x_interface_info of p_right : signal is "xilinx.com:signal:data:1.0 p_right DATA";
  attribute x_interface_parameter of p_right : signal is "XIL_INTERFACENAME p_right, LAYERED_METADATA undef";
  attribute x_interface_info of p_speed : signal is "xilinx.com:signal:data:1.0 p_speed DATA";
  attribute x_interface_parameter of p_speed : signal is "XIL_INTERFACENAME p_speed, LAYERED_METADATA undef";
  attribute x_interface_info of p_up : signal is "xilinx.com:signal:data:1.0 p_up DATA";
  attribute x_interface_parameter of p_up : signal is "XIL_INTERFACENAME p_up, LAYERED_METADATA undef";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      p_down(7 downto 0) => p_down(7 downto 0),
      p_dutyCycle(7 downto 0) => p_dutyCycle(7 downto 0),
      p_dutyCycle_ap_vld => p_dutyCycle_ap_vld,
      p_left(7 downto 0) => p_left(7 downto 0),
      p_right(7 downto 0) => p_right(7 downto 0),
      p_speed(7 downto 0) => p_speed(7 downto 0),
      p_speed_ap_vld => p_speed_ap_vld,
      p_up(7 downto 0) => p_up(7 downto 0)
    );
end STRUCTURE;
