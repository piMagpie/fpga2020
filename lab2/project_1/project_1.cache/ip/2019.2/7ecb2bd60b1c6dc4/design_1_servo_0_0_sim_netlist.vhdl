-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Feb 10 09:39:17 2020
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
    up : in STD_LOGIC_VECTOR ( 7 downto 0 );
    down : in STD_LOGIC_VECTOR ( 7 downto 0 );
    left_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    right_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dutyCycle : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dutyCycle_ap_vld : out STD_LOGIC;
    speed : out STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_ap_vld : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal current_duty_cycle : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal current_speed : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^dutycycle\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dutyCycle[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_n_1\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_n_2\ : STD_LOGIC;
  signal \dutyCycle[7]_INST_0_n_3\ : STD_LOGIC;
  signal \^dutycycle_ap_vld\ : STD_LOGIC;
  signal \icmp_ln16_reg_299[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln16_reg_299[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln16_reg_299_reg_n_0_[0]\ : STD_LOGIC;
  signal select_ln12_fu_168_p3 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal select_ln16_fu_235_p3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal select_ln20_fu_251_p3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sext_ln12_reg_294 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sext_ln12_reg_294[0]_i_1_n_0\ : STD_LOGIC;
  signal \sext_ln12_reg_294[3]_i_1_n_0\ : STD_LOGIC;
  signal \^speed\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \speed[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \speed[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \speed[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \speed[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \speed[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \^speed_ap_vld\ : STD_LOGIC;
  signal sub_ln17_fu_194_p20_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sub_ln17_reg_309 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sub_ln17_reg_309[3]_i_10_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_2_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_3_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_4_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_5_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_6_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_7_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_8_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[3]_i_9_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[7]_i_2_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[7]_i_3_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[7]_i_4_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309[7]_i_5_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sub_ln17_reg_309_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sub_ln17_reg_309_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sub_ln17_reg_309_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sub_ln17_reg_309_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sub_ln17_reg_309_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sub_ln17_reg_309_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_dutyCycle[7]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sub_ln17_reg_309_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \dutyCycle[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dutyCycle[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dutyCycle[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dutyCycle[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dutyCycle[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dutyCycle[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sub_ln17_reg_309[3]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sub_ln17_reg_309[3]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sub_ln17_reg_309[3]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sub_ln17_reg_309[3]_i_9\ : label is "soft_lutpair1";
begin
  ap_done <= \^dutycycle_ap_vld\;
  ap_ready <= \^dutycycle_ap_vld\;
  dutyCycle(7 downto 0) <= \^dutycycle\(7 downto 0);
  dutyCycle_ap_vld <= \^dutycycle_ap_vld\;
  speed(7) <= \<const0>\;
  speed(6) <= \<const0>\;
  speed(5) <= \<const0>\;
  speed(4) <= \<const0>\;
  speed(3 downto 0) <= \^speed\(3 downto 0);
  speed_ap_vld <= \^speed_ap_vld\;
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
      I0 => \^dutycycle_ap_vld\,
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
      Q => \^dutycycle_ap_vld\,
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
\current_duty_cycle_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(0),
      Q => current_duty_cycle(0),
      R => '0'
    );
\current_duty_cycle_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(1),
      Q => current_duty_cycle(1),
      R => '0'
    );
\current_duty_cycle_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(2),
      Q => current_duty_cycle(2),
      R => '0'
    );
\current_duty_cycle_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(3),
      Q => current_duty_cycle(3),
      R => '0'
    );
\current_duty_cycle_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(4),
      Q => current_duty_cycle(4),
      R => '0'
    );
\current_duty_cycle_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(5),
      Q => current_duty_cycle(5),
      R => '0'
    );
\current_duty_cycle_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(6),
      Q => current_duty_cycle(6),
      R => '0'
    );
\current_duty_cycle_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \^dutycycle_ap_vld\,
      D => \^dutycycle\(7),
      Q => current_duty_cycle(7),
      R => '0'
    );
\current_speed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => \^speed\(0),
      Q => current_speed(0),
      R => '0'
    );
\current_speed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => \^speed\(1),
      Q => current_speed(1),
      R => '0'
    );
\current_speed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => \^speed\(2),
      Q => current_speed(2),
      R => '0'
    );
\current_speed_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => \^speed\(3),
      Q => current_speed(3),
      R => '0'
    );
\dutyCycle[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => select_ln20_fu_251_p3(0),
      I1 => \dutyCycle[1]_INST_0_i_1_n_0\,
      O => \^dutycycle\(0)
    );
\dutyCycle[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => select_ln20_fu_251_p3(1),
      I1 => \dutyCycle[1]_INST_0_i_1_n_0\,
      O => \^dutycycle\(1)
    );
\dutyCycle[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3F3C3F3C3F3D333"
    )
        port map (
      I0 => select_ln20_fu_251_p3(2),
      I1 => \^dutycycle\(7),
      I2 => select_ln20_fu_251_p3(6),
      I3 => select_ln20_fu_251_p3(5),
      I4 => select_ln20_fu_251_p3(3),
      I5 => select_ln20_fu_251_p3(4),
      O => \dutyCycle[1]_INST_0_i_1_n_0\
    );
\dutyCycle[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFF00001FFF"
    )
        port map (
      I0 => select_ln20_fu_251_p3(4),
      I1 => select_ln20_fu_251_p3(3),
      I2 => select_ln20_fu_251_p3(5),
      I3 => select_ln20_fu_251_p3(6),
      I4 => \^dutycycle\(7),
      I5 => select_ln20_fu_251_p3(2),
      O => \^dutycycle\(2)
    );
\dutyCycle[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECCC000"
    )
        port map (
      I0 => select_ln20_fu_251_p3(4),
      I1 => select_ln20_fu_251_p3(3),
      I2 => select_ln20_fu_251_p3(5),
      I3 => select_ln20_fu_251_p3(6),
      I4 => \^dutycycle\(7),
      O => \^dutycycle\(3)
    );
\dutyCycle[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A80"
    )
        port map (
      I0 => select_ln20_fu_251_p3(4),
      I1 => select_ln20_fu_251_p3(5),
      I2 => select_ln20_fu_251_p3(6),
      I3 => \^dutycycle\(7),
      O => \^dutycycle\(4)
    );
\dutyCycle[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => select_ln20_fu_251_p3(6),
      I1 => select_ln20_fu_251_p3(5),
      I2 => \^dutycycle\(7),
      O => \^dutycycle\(5)
    );
\dutyCycle[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => select_ln20_fu_251_p3(6),
      I1 => \^dutycycle\(7),
      O => \^dutycycle\(6)
    );
\dutyCycle[7]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dutyCycle[7]_INST_0_i_1_n_0\,
      CO(3) => \NLW_dutyCycle[7]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \dutyCycle[7]_INST_0_n_1\,
      CO(1) => \dutyCycle[7]_INST_0_n_2\,
      CO(0) => \dutyCycle[7]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => select_ln16_fu_235_p3(6 downto 4),
      O(3) => \^dutycycle\(7),
      O(2 downto 0) => select_ln20_fu_251_p3(6 downto 4),
      S(3) => \dutyCycle[7]_INST_0_i_5_n_0\,
      S(2) => \dutyCycle[7]_INST_0_i_6_n_0\,
      S(1) => \dutyCycle[7]_INST_0_i_7_n_0\,
      S(0) => \dutyCycle[7]_INST_0_i_8_n_0\
    );
\dutyCycle[7]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dutyCycle[7]_INST_0_i_1_n_0\,
      CO(2) => \dutyCycle[7]_INST_0_i_1_n_1\,
      CO(1) => \dutyCycle[7]_INST_0_i_1_n_2\,
      CO(0) => \dutyCycle[7]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => select_ln16_fu_235_p3(3 downto 0),
      O(3 downto 0) => select_ln20_fu_251_p3(3 downto 0),
      S(3) => \dutyCycle[7]_INST_0_i_13_n_0\,
      S(2) => \dutyCycle[7]_INST_0_i_14_n_0\,
      S(1) => \dutyCycle[7]_INST_0_i_15_n_0\,
      S(0) => \dutyCycle[7]_INST_0_i_16_n_0\
    );
\dutyCycle[7]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_duty_cycle(2),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => sub_ln17_reg_309(2),
      O => select_ln16_fu_235_p3(2)
    );
\dutyCycle[7]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_duty_cycle(1),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => sub_ln17_reg_309(1),
      O => select_ln16_fu_235_p3(1)
    );
\dutyCycle[7]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_duty_cycle(0),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => sub_ln17_reg_309(0),
      O => select_ln16_fu_235_p3(0)
    );
\dutyCycle[7]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21DE2E2"
    )
        port map (
      I0 => sub_ln17_reg_309(3),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => current_duty_cycle(3),
      I3 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I4 => sext_ln12_reg_294(3),
      O => \dutyCycle[7]_INST_0_i_13_n_0\
    );
\dutyCycle[7]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21DE2E2"
    )
        port map (
      I0 => sub_ln17_reg_309(2),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => current_duty_cycle(2),
      I3 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I4 => sext_ln12_reg_294(2),
      O => \dutyCycle[7]_INST_0_i_14_n_0\
    );
\dutyCycle[7]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21DE2E2"
    )
        port map (
      I0 => sub_ln17_reg_309(1),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => current_duty_cycle(1),
      I3 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I4 => sext_ln12_reg_294(1),
      O => \dutyCycle[7]_INST_0_i_15_n_0\
    );
\dutyCycle[7]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21DE2E2"
    )
        port map (
      I0 => sub_ln17_reg_309(0),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => current_duty_cycle(0),
      I3 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I4 => sext_ln12_reg_294(0),
      O => \dutyCycle[7]_INST_0_i_16_n_0\
    );
\dutyCycle[7]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => right_r(3),
      I1 => right_r(1),
      I2 => right_r(4),
      I3 => right_r(6),
      I4 => \dutyCycle[7]_INST_0_i_18_n_0\,
      O => \dutyCycle[7]_INST_0_i_17_n_0\
    );
\dutyCycle[7]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => right_r(0),
      I1 => right_r(2),
      I2 => right_r(7),
      I3 => right_r(5),
      O => \dutyCycle[7]_INST_0_i_18_n_0\
    );
\dutyCycle[7]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_duty_cycle(6),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => sub_ln17_reg_309(6),
      O => select_ln16_fu_235_p3(6)
    );
\dutyCycle[7]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_duty_cycle(5),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => sub_ln17_reg_309(5),
      O => select_ln16_fu_235_p3(5)
    );
\dutyCycle[7]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_duty_cycle(4),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => sub_ln17_reg_309(4),
      O => select_ln16_fu_235_p3(4)
    );
\dutyCycle[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD222D2"
    )
        port map (
      I0 => sext_ln12_reg_294(4),
      I1 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I2 => sub_ln17_reg_309(7),
      I3 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I4 => current_duty_cycle(7),
      O => \dutyCycle[7]_INST_0_i_5_n_0\
    );
\dutyCycle[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD222D2"
    )
        port map (
      I0 => sext_ln12_reg_294(4),
      I1 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I2 => sub_ln17_reg_309(6),
      I3 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I4 => current_duty_cycle(6),
      O => \dutyCycle[7]_INST_0_i_6_n_0\
    );
\dutyCycle[7]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD222D2"
    )
        port map (
      I0 => sext_ln12_reg_294(4),
      I1 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I2 => sub_ln17_reg_309(5),
      I3 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I4 => current_duty_cycle(5),
      O => \dutyCycle[7]_INST_0_i_7_n_0\
    );
\dutyCycle[7]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD222D2"
    )
        port map (
      I0 => sext_ln12_reg_294(4),
      I1 => \dutyCycle[7]_INST_0_i_17_n_0\,
      I2 => sub_ln17_reg_309(4),
      I3 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I4 => current_duty_cycle(4),
      O => \dutyCycle[7]_INST_0_i_8_n_0\
    );
\dutyCycle[7]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_duty_cycle(3),
      I1 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      I2 => sub_ln17_reg_309(3),
      O => select_ln16_fu_235_p3(3)
    );
\icmp_ln16_reg_299[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFFFF04000000"
    )
        port map (
      I0 => left_r(7),
      I1 => \icmp_ln16_reg_299[0]_i_2_n_0\,
      I2 => left_r(6),
      I3 => ap_start,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => \icmp_ln16_reg_299_reg_n_0_[0]\,
      O => \icmp_ln16_reg_299[0]_i_1_n_0\
    );
\icmp_ln16_reg_299[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => left_r(5),
      I1 => left_r(3),
      I2 => left_r(1),
      I3 => left_r(0),
      I4 => left_r(2),
      I5 => left_r(4),
      O => \icmp_ln16_reg_299[0]_i_2_n_0\
    );
\icmp_ln16_reg_299_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln16_reg_299[0]_i_1_n_0\,
      Q => \icmp_ln16_reg_299_reg_n_0_[0]\,
      R => '0'
    );
\sext_ln12_reg_294[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5AA5A5A5A6"
    )
        port map (
      I0 => \speed[3]_INST_0_i_2_n_0\,
      I1 => current_speed(1),
      I2 => current_speed(0),
      I3 => current_speed(2),
      I4 => current_speed(3),
      I5 => \speed[3]_INST_0_i_1_n_0\,
      O => \sext_ln12_reg_294[0]_i_1_n_0\
    );
\sext_ln12_reg_294[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AAAAAAAAAAAA54"
    )
        port map (
      I0 => current_speed(1),
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => \speed[3]_INST_0_i_1_n_0\,
      I5 => \speed[3]_INST_0_i_2_n_0\,
      O => select_ln12_fu_168_p3(1)
    );
\sext_ln12_reg_294[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFC000FFFC0002"
    )
        port map (
      I0 => current_speed(3),
      I1 => \speed[3]_INST_0_i_1_n_0\,
      I2 => current_speed(0),
      I3 => current_speed(1),
      I4 => current_speed(2),
      I5 => \speed[3]_INST_0_i_2_n_0\,
      O => select_ln12_fu_168_p3(2)
    );
\sext_ln12_reg_294[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECCCCCCCCCCCCCC8"
    )
        port map (
      I0 => \speed[3]_INST_0_i_2_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      I5 => \speed[3]_INST_0_i_1_n_0\,
      O => \sext_ln12_reg_294[3]_i_1_n_0\
    );
\sext_ln12_reg_294[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => \speed[3]_INST_0_i_1_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      O => select_ln12_fu_168_p3(4)
    );
\sext_ln12_reg_294_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => \sext_ln12_reg_294[0]_i_1_n_0\,
      Q => sext_ln12_reg_294(0),
      R => '0'
    );
\sext_ln12_reg_294_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => select_ln12_fu_168_p3(1),
      Q => sext_ln12_reg_294(1),
      R => '0'
    );
\sext_ln12_reg_294_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => select_ln12_fu_168_p3(2),
      Q => sext_ln12_reg_294(2),
      R => '0'
    );
\sext_ln12_reg_294_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => \sext_ln12_reg_294[3]_i_1_n_0\,
      Q => sext_ln12_reg_294(3),
      R => '0'
    );
\sext_ln12_reg_294_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => select_ln12_fu_168_p3(4),
      Q => sext_ln12_reg_294(4),
      R => '0'
    );
\speed[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1122112222112216"
    )
        port map (
      I0 => \speed[3]_INST_0_i_2_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      I5 => \speed[3]_INST_0_i_1_n_0\,
      O => \^speed\(0)
    );
\speed[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1133220033220014"
    )
        port map (
      I0 => \speed[3]_INST_0_i_2_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      I5 => \speed[3]_INST_0_i_1_n_0\,
      O => \^speed\(1)
    );
\speed[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1230303030303024"
    )
        port map (
      I0 => \speed[3]_INST_0_i_2_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      I5 => \speed[3]_INST_0_i_1_n_0\,
      O => \^speed\(2)
    );
\speed[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8000FFFE0000"
    )
        port map (
      I0 => \speed[3]_INST_0_i_1_n_0\,
      I1 => current_speed(1),
      I2 => current_speed(0),
      I3 => current_speed(2),
      I4 => current_speed(3),
      I5 => \speed[3]_INST_0_i_2_n_0\,
      O => \^speed\(3)
    );
\speed[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => down(3),
      I1 => down(1),
      I2 => down(4),
      I3 => down(6),
      I4 => \speed[3]_INST_0_i_3_n_0\,
      O => \speed[3]_INST_0_i_1_n_0\
    );
\speed[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => current_speed(3),
      I1 => current_speed(2),
      I2 => current_speed(0),
      I3 => current_speed(1),
      I4 => \speed[3]_INST_0_i_1_n_0\,
      I5 => \speed[3]_INST_0_i_4_n_0\,
      O => \speed[3]_INST_0_i_2_n_0\
    );
\speed[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => down(0),
      I1 => down(2),
      I2 => down(7),
      I3 => down(5),
      O => \speed[3]_INST_0_i_3_n_0\
    );
\speed[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => up(5),
      I1 => up(7),
      I2 => up(2),
      I3 => up(0),
      I4 => \speed[3]_INST_0_i_5_n_0\,
      O => \speed[3]_INST_0_i_4_n_0\
    );
\speed[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up(6),
      I1 => up(4),
      I2 => up(1),
      I3 => up(3),
      O => \speed[3]_INST_0_i_5_n_0\
    );
speed_ap_vld_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      O => \^speed_ap_vld\
    );
\sub_ln17_reg_309[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => current_speed(1),
      I1 => current_speed(0),
      I2 => current_speed(2),
      I3 => current_speed(3),
      O => \sub_ln17_reg_309[3]_i_10_n_0\
    );
\sub_ln17_reg_309[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666A66"
    )
        port map (
      I0 => current_duty_cycle(3),
      I1 => \sub_ln17_reg_309[3]_i_6_n_0\,
      I2 => \sub_ln17_reg_309[3]_i_7_n_0\,
      I3 => \speed[3]_INST_0_i_2_n_0\,
      I4 => \sub_ln17_reg_309[3]_i_8_n_0\,
      I5 => \sub_ln17_reg_309[3]_i_9_n_0\,
      O => \sub_ln17_reg_309[3]_i_2_n_0\
    );
\sub_ln17_reg_309[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666966"
    )
        port map (
      I0 => current_duty_cycle(2),
      I1 => \sub_ln17_reg_309[3]_i_9_n_0\,
      I2 => \sub_ln17_reg_309[3]_i_8_n_0\,
      I3 => \speed[3]_INST_0_i_2_n_0\,
      I4 => \sub_ln17_reg_309[3]_i_7_n_0\,
      O => \sub_ln17_reg_309[3]_i_3_n_0\
    );
\sub_ln17_reg_309[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6699995999999956"
    )
        port map (
      I0 => current_duty_cycle(1),
      I1 => current_speed(1),
      I2 => \sub_ln17_reg_309[3]_i_10_n_0\,
      I3 => current_speed(0),
      I4 => \speed[3]_INST_0_i_1_n_0\,
      I5 => \speed[3]_INST_0_i_2_n_0\,
      O => \sub_ln17_reg_309[3]_i_4_n_0\
    );
\sub_ln17_reg_309[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => current_duty_cycle(0),
      I1 => \sub_ln17_reg_309[3]_i_8_n_0\,
      I2 => \speed[3]_INST_0_i_2_n_0\,
      O => \sub_ln17_reg_309[3]_i_5_n_0\
    );
\sub_ln17_reg_309[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \speed[3]_INST_0_i_1_n_0\,
      I1 => current_speed(1),
      I2 => current_speed(0),
      I3 => current_speed(2),
      I4 => current_speed(3),
      O => \sub_ln17_reg_309[3]_i_6_n_0\
    );
\sub_ln17_reg_309[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555555AB"
    )
        port map (
      I0 => current_speed(1),
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => \speed[3]_INST_0_i_1_n_0\,
      O => \sub_ln17_reg_309[3]_i_7_n_0\
    );
\sub_ln17_reg_309[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55AA55AB"
    )
        port map (
      I0 => \speed[3]_INST_0_i_1_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      O => \sub_ln17_reg_309[3]_i_8_n_0\
    );
\sub_ln17_reg_309[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0003FFFD"
    )
        port map (
      I0 => current_speed(3),
      I1 => \speed[3]_INST_0_i_1_n_0\,
      I2 => current_speed(0),
      I3 => current_speed(1),
      I4 => current_speed(2),
      O => \sub_ln17_reg_309[3]_i_9_n_0\
    );
\sub_ln17_reg_309[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_duty_cycle(6),
      I1 => current_duty_cycle(7),
      O => \sub_ln17_reg_309[7]_i_2_n_0\
    );
\sub_ln17_reg_309[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_duty_cycle(5),
      I1 => current_duty_cycle(6),
      O => \sub_ln17_reg_309[7]_i_3_n_0\
    );
\sub_ln17_reg_309[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440BBBBBBBF"
    )
        port map (
      I0 => \speed[3]_INST_0_i_1_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      I5 => current_duty_cycle(5),
      O => \sub_ln17_reg_309[7]_i_4_n_0\
    );
\sub_ln17_reg_309[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440BBBBBBBF"
    )
        port map (
      I0 => \speed[3]_INST_0_i_1_n_0\,
      I1 => current_speed(3),
      I2 => current_speed(2),
      I3 => current_speed(0),
      I4 => current_speed(1),
      I5 => current_duty_cycle(4),
      O => \sub_ln17_reg_309[7]_i_5_n_0\
    );
\sub_ln17_reg_309_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(0),
      Q => sub_ln17_reg_309(0),
      R => '0'
    );
\sub_ln17_reg_309_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(1),
      Q => sub_ln17_reg_309(1),
      R => '0'
    );
\sub_ln17_reg_309_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(2),
      Q => sub_ln17_reg_309(2),
      R => '0'
    );
\sub_ln17_reg_309_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(3),
      Q => sub_ln17_reg_309(3),
      R => '0'
    );
\sub_ln17_reg_309_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sub_ln17_reg_309_reg[3]_i_1_n_0\,
      CO(2) => \sub_ln17_reg_309_reg[3]_i_1_n_1\,
      CO(1) => \sub_ln17_reg_309_reg[3]_i_1_n_2\,
      CO(0) => \sub_ln17_reg_309_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => current_duty_cycle(3 downto 0),
      O(3 downto 0) => sub_ln17_fu_194_p20_out(3 downto 0),
      S(3) => \sub_ln17_reg_309[3]_i_2_n_0\,
      S(2) => \sub_ln17_reg_309[3]_i_3_n_0\,
      S(1) => \sub_ln17_reg_309[3]_i_4_n_0\,
      S(0) => \sub_ln17_reg_309[3]_i_5_n_0\
    );
\sub_ln17_reg_309_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(4),
      Q => sub_ln17_reg_309(4),
      R => '0'
    );
\sub_ln17_reg_309_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(5),
      Q => sub_ln17_reg_309(5),
      R => '0'
    );
\sub_ln17_reg_309_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(6),
      Q => sub_ln17_reg_309(6),
      R => '0'
    );
\sub_ln17_reg_309_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^speed_ap_vld\,
      D => sub_ln17_fu_194_p20_out(7),
      Q => sub_ln17_reg_309(7),
      R => '0'
    );
\sub_ln17_reg_309_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_ln17_reg_309_reg[3]_i_1_n_0\,
      CO(3) => \NLW_sub_ln17_reg_309_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sub_ln17_reg_309_reg[7]_i_1_n_1\,
      CO(1) => \sub_ln17_reg_309_reg[7]_i_1_n_2\,
      CO(0) => \sub_ln17_reg_309_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => current_duty_cycle(5),
      DI(1) => select_ln12_fu_168_p3(4),
      DI(0) => current_duty_cycle(4),
      O(3 downto 0) => sub_ln17_fu_194_p20_out(7 downto 4),
      S(3) => \sub_ln17_reg_309[7]_i_2_n_0\,
      S(2) => \sub_ln17_reg_309[7]_i_3_n_0\,
      S(1) => \sub_ln17_reg_309[7]_i_4_n_0\,
      S(0) => \sub_ln17_reg_309[7]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo
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
