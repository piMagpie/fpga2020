-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Feb 16 16:06:30 2020
-- Host        : agazorPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_servo_0_0_stub.vhdl
-- Design      : design_1_servo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "p_dutyCycle_ap_vld,p_speed_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_up[7:0],p_down[7:0],p_left[7:0],p_right[7:0],p_dutyCycle[7:0],p_speed[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "servo,Vivado 2019.2";
begin
end;
