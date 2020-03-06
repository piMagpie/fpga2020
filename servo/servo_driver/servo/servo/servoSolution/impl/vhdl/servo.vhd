-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity servo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_up : IN STD_LOGIC_VECTOR (7 downto 0);
    p_down : IN STD_LOGIC_VECTOR (7 downto 0);
    p_left : IN STD_LOGIC_VECTOR (7 downto 0);
    p_right : IN STD_LOGIC_VECTOR (7 downto 0);
    p_dutyCycle : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dutyCycle_ap_vld : OUT STD_LOGIC;
    p_speed : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_speed_ap_vld : OUT STD_LOGIC );
end;


architecture behav of servo is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "servo,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.668250,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=44,HLS_SYN_LUT=265,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv9_63 : STD_LOGIC_VECTOR (8 downto 0) := "001100011";
    constant ap_const_lv9_C9 : STD_LOGIC_VECTOR (8 downto 0) := "011001001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal current_speed : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal current_duty_cycle : STD_LOGIC_VECTOR (7 downto 0) := "10010110";
    signal select_ln13_fu_172_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln13_reg_313 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln17_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln17_reg_320 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln17_1_fu_200_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln17_1_reg_333 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln17_fu_204_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln17_reg_338 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln13_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln21_1_fu_295_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal or_ln21_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln9_fu_84_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln9_1_fu_94_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln9_1_fu_112_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln9_fu_100_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln10_fu_106_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln9_fu_124_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_138_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln13_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln13_1_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln13_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln9_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln14_fu_160_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln17_fu_196_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln17_1_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln18_fu_215_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln17_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln17_fu_219_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln17_1_fu_237_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln21_fu_249_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln21_fu_253_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln21_1_fu_258_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln22_fu_264_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln21_fu_243_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln21_fu_277_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln17_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln21_fu_283_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln21_fu_269_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((or_ln21_fu_289_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                current_duty_cycle <= select_ln21_1_fu_295_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (or_ln13_fu_166_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                current_speed <= select_ln13_fu_172_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                icmp_ln17_reg_320 <= icmp_ln17_fu_180_p2;
                select_ln13_reg_313 <= select_ln13_fu_172_p3;
                sub_ln17_reg_338 <= sub_ln17_fu_204_p2;
                    zext_ln17_1_reg_333(7 downto 0) <= zext_ln17_1_fu_200_p1(7 downto 0);
            end if;
        end if;
    end process;
    zext_ln17_1_reg_333(8) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln10_fu_106_p2 <= std_logic_vector(unsigned(current_speed) + unsigned(ap_const_lv8_FF));
    add_ln14_fu_160_p2 <= std_logic_vector(unsigned(select_ln9_fu_124_p3) + unsigned(ap_const_lv8_1));
    add_ln21_fu_253_p2 <= std_logic_vector(unsigned(zext_ln21_fu_249_p1) + unsigned(zext_ln17_1_reg_333));
    add_ln22_fu_264_p2 <= std_logic_vector(unsigned(select_ln17_1_fu_237_p3) + unsigned(select_ln13_reg_313));
    and_ln13_fu_154_p2 <= (icmp_ln13_fu_132_p2 and icmp_ln13_1_fu_148_p2);
    and_ln17_fu_231_p2 <= (xor_ln17_fu_226_p2 and icmp_ln17_1_fu_210_p2);
    and_ln21_fu_283_p2 <= (xor_ln21_fu_277_p2 and icmp_ln21_1_fu_258_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_done_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln13_1_fu_148_p2 <= "1" when (tmp_fu_138_p4 = ap_const_lv5_0) else "0";
    icmp_ln13_fu_132_p2 <= "0" when (p_up = ap_const_lv8_0) else "1";
    icmp_ln17_1_fu_210_p2 <= "1" when (signed(sub_ln17_reg_338) > signed(ap_const_lv9_63)) else "0";
    icmp_ln17_fu_180_p2 <= "1" when (p_left = ap_const_lv8_0) else "0";
    icmp_ln21_1_fu_258_p2 <= "1" when (unsigned(add_ln21_fu_253_p2) < unsigned(ap_const_lv9_C9)) else "0";
    icmp_ln21_fu_243_p2 <= "1" when (p_right = ap_const_lv8_0) else "0";
    icmp_ln9_1_fu_94_p2 <= "1" when (current_speed = ap_const_lv8_0) else "0";
    icmp_ln9_fu_84_p2 <= "1" when (p_down = ap_const_lv8_0) else "0";
    or_ln13_fu_166_p2 <= (xor_ln9_fu_118_p2 or and_ln13_fu_154_p2);
    or_ln21_fu_289_p2 <= (and_ln21_fu_283_p2 or and_ln17_fu_231_p2);
    or_ln9_1_fu_112_p2 <= (icmp_ln9_fu_84_p2 or icmp_ln9_1_fu_94_p2);
    or_ln9_fu_100_p2 <= (icmp_ln9_fu_84_p2 or icmp_ln9_1_fu_94_p2);
    p_dutyCycle <= 
        select_ln17_1_fu_237_p3 when (icmp_ln21_fu_243_p2(0) = '1') else 
        select_ln21_fu_269_p3;

    p_dutyCycle_ap_vld_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            p_dutyCycle_ap_vld <= ap_const_logic_1;
        else 
            p_dutyCycle_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_speed <= select_ln13_reg_313;

    p_speed_ap_vld_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            p_speed_ap_vld <= ap_const_logic_1;
        else 
            p_speed_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    select_ln13_fu_172_p3 <= 
        add_ln14_fu_160_p2 when (and_ln13_fu_154_p2(0) = '1') else 
        select_ln9_fu_124_p3;
    select_ln17_1_fu_237_p3 <= 
        current_duty_cycle when (icmp_ln17_reg_320(0) = '1') else 
        select_ln17_fu_219_p3;
    select_ln17_fu_219_p3 <= 
        sub_ln18_fu_215_p2 when (icmp_ln17_1_fu_210_p2(0) = '1') else 
        current_duty_cycle;
    select_ln21_1_fu_295_p3 <= 
        select_ln17_1_fu_237_p3 when (icmp_ln21_fu_243_p2(0) = '1') else 
        select_ln21_fu_269_p3;
    select_ln21_fu_269_p3 <= 
        add_ln22_fu_264_p2 when (icmp_ln21_1_fu_258_p2(0) = '1') else 
        select_ln17_1_fu_237_p3;
    select_ln9_fu_124_p3 <= 
        current_speed when (or_ln9_fu_100_p2(0) = '1') else 
        add_ln10_fu_106_p2;
    sub_ln17_fu_204_p2 <= std_logic_vector(unsigned(zext_ln17_fu_196_p1) - unsigned(zext_ln17_1_fu_200_p1));
    sub_ln18_fu_215_p2 <= std_logic_vector(unsigned(current_duty_cycle) - unsigned(select_ln13_reg_313));
    tmp_fu_138_p4 <= select_ln9_fu_124_p3(7 downto 3);
    xor_ln17_fu_226_p2 <= (icmp_ln17_reg_320 xor ap_const_lv1_1);
    xor_ln21_fu_277_p2 <= (icmp_ln21_fu_243_p2 xor ap_const_lv1_1);
    xor_ln9_fu_118_p2 <= (or_ln9_1_fu_112_p2 xor ap_const_lv1_1);
    zext_ln17_1_fu_200_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln13_fu_172_p3),9));
    zext_ln17_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(current_duty_cycle),9));
    zext_ln21_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln17_1_fu_237_p3),9));
end behav;