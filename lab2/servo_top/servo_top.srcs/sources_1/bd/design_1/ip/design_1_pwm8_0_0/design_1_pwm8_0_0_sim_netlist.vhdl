-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Feb 17 19:55:59 2020
-- Host        : agazorPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/fpga/lab2/servo_top/servo_top.srcs/sources_1/bd/design_1/ip/design_1_pwm8_0_0/design_1_pwm8_0_0_sim_netlist.vhdl
-- Design      : design_1_pwm8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm8_0_0_pwm8 is
  port (
    pwmout : out STD_LOGIC;
    pwm : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pwm8_0_0_pwm8 : entity is "pwm8";
end design_1_pwm8_0_0_pwm8;

architecture STRUCTURE of design_1_pwm8_0_0_pwm8 is
  signal eqOp : STD_LOGIC;
  signal eqOp_0 : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_i_5_n_0 : STD_LOGIC;
  signal eqOp_carry_i_6_n_0 : STD_LOGIC;
  signal eqOp_carry_i_7_n_0 : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \pwm_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal pwm_cnt_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^pwmout\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_4_n_0 : STD_LOGIC;
  signal state_i_5_n_0 : STD_LOGIC;
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of eqOp_carry_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of eqOp_carry_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm_cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm_cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pwm_cnt[9]_i_1\ : label is "soft_lutpair0";
begin
  pwmout <= \^pwmout\;
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp_carry_n_0,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
eqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_cnt_reg(9),
      I1 => pwm_cnt_reg(10),
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0120201010020201"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => pwm_cnt_reg(8),
      I2 => pwm(7),
      I3 => pwm(6),
      I4 => eqOp_carry_i_5_n_0,
      I5 => pwm_cnt_reg(7),
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880022020088002"
    )
        port map (
      I0 => eqOp_carry_i_6_n_0,
      I1 => pwm(5),
      I2 => pwm(4),
      I3 => eqOp_carry_i_7_n_0,
      I4 => pwm_cnt_reg(5),
      I5 => pwm_cnt_reg(4),
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0480012010084002"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm(2),
      I2 => pwm(1),
      I3 => pwm(0),
      I4 => pwm_cnt_reg(2),
      I5 => pwm_cnt_reg(1),
      O => eqOp_carry_i_4_n_0
    );
eqOp_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pwm(5),
      I1 => pwm(3),
      I2 => pwm(1),
      I3 => pwm(0),
      I4 => pwm(2),
      I5 => pwm(4),
      O => eqOp_carry_i_5_n_0
    );
eqOp_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA9555"
    )
        port map (
      I0 => pwm(3),
      I1 => pwm(2),
      I2 => pwm(0),
      I3 => pwm(1),
      I4 => pwm_cnt_reg(3),
      O => eqOp_carry_i_6_n_0
    );
eqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => pwm(3),
      I1 => pwm(1),
      I2 => pwm(0),
      I3 => pwm(2),
      O => eqOp_carry_i_7_n_0
    );
\pwm_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      O => plusOp(0)
    );
\pwm_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => pwm_cnt_reg(8),
      I1 => pwm_cnt_reg(6),
      I2 => \pwm_cnt[10]_i_2_n_0\,
      I3 => pwm_cnt_reg(7),
      I4 => pwm_cnt_reg(9),
      I5 => pwm_cnt_reg(10),
      O => plusOp(10)
    );
\pwm_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(2),
      I5 => pwm_cnt_reg(4),
      O => \pwm_cnt[10]_i_2_n_0\
    );
\pwm_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      O => plusOp(1)
    );
\pwm_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(2),
      O => plusOp(2)
    );
\pwm_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(2),
      I3 => pwm_cnt_reg(3),
      O => plusOp(3)
    );
\pwm_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(3),
      I4 => pwm_cnt_reg(4),
      O => plusOp(4)
    );
\pwm_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(2),
      I4 => pwm_cnt_reg(4),
      I5 => pwm_cnt_reg(5),
      O => plusOp(5)
    );
\pwm_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pwm_cnt[10]_i_2_n_0\,
      I1 => pwm_cnt_reg(6),
      O => plusOp(6)
    );
\pwm_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \pwm_cnt[10]_i_2_n_0\,
      I1 => pwm_cnt_reg(6),
      I2 => pwm_cnt_reg(7),
      O => plusOp(7)
    );
\pwm_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => \pwm_cnt[10]_i_2_n_0\,
      I2 => pwm_cnt_reg(7),
      I3 => pwm_cnt_reg(8),
      O => plusOp(8)
    );
\pwm_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => pwm_cnt_reg(7),
      I1 => \pwm_cnt[10]_i_2_n_0\,
      I2 => pwm_cnt_reg(6),
      I3 => pwm_cnt_reg(8),
      I4 => pwm_cnt_reg(9),
      O => plusOp(9)
    );
\pwm_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(0),
      Q => pwm_cnt_reg(0),
      R => '0'
    );
\pwm_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(10),
      Q => pwm_cnt_reg(10),
      R => '0'
    );
\pwm_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(1),
      Q => pwm_cnt_reg(1),
      R => '0'
    );
\pwm_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(2),
      Q => pwm_cnt_reg(2),
      R => '0'
    );
\pwm_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(3),
      Q => pwm_cnt_reg(3),
      R => '0'
    );
\pwm_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(4),
      Q => pwm_cnt_reg(4),
      R => '0'
    );
\pwm_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(5),
      Q => pwm_cnt_reg(5),
      R => '0'
    );
\pwm_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(6),
      Q => pwm_cnt_reg(6),
      R => '0'
    );
\pwm_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(7),
      Q => pwm_cnt_reg(7),
      R => '0'
    );
\pwm_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(8),
      Q => pwm_cnt_reg(8),
      R => '0'
    );
\pwm_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => plusOp(9),
      Q => pwm_cnt_reg(9),
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => \^pwmout\,
      I1 => eqOp_carry_n_0,
      I2 => eqOp_0,
      I3 => eqOp,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pwm_cnt_reg(8),
      I1 => pwm_cnt_reg(7),
      I2 => pwm_cnt_reg(6),
      I3 => pwm_cnt_reg(10),
      I4 => pwm_cnt_reg(9),
      I5 => state_i_4_n_0,
      O => eqOp_0
    );
state_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => pwm(4),
      I1 => pwm(5),
      I2 => pwm(7),
      I3 => pwm(6),
      I4 => state_i_5_n_0,
      O => eqOp
    );
state_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(5),
      I4 => pwm_cnt_reg(3),
      I5 => pwm_cnt_reg(4),
      O => state_i_4_n_0
    );
state_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pwm(1),
      I1 => pwm(0),
      I2 => pwm(3),
      I3 => pwm(2),
      O => state_i_5_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => state_i_1_n_0,
      Q => \^pwmout\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm8_0_0 is
  port (
    pwm : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    pwmout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pwm8_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pwm8_0_0 : entity is "design_1_pwm8_0_0,pwm8,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pwm8_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pwm8_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pwm8_0_0 : entity is "pwm8,Vivado 2019.2";
end design_1_pwm8_0_0;

architecture STRUCTURE of design_1_pwm8_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.design_1_pwm8_0_0_pwm8
     port map (
      clock => clock,
      pwm(7 downto 0) => pwm(7 downto 0),
      pwmout => pwmout
    );
end STRUCTURE;
