----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2020 10:20:46 PM
-- Design Name: 
-- Module Name: pwm8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pwm8 is
    Port ( pwm : in STD_LOGIC_VECTOR (7 downto 0);
           clock : in STD_LOGIC;
           pwmout : out STD_LOGIC);
end pwm8;

architecture Behavioral of pwm8 is

begin
    process(clock)
    variable pwm_cnt: STD_LOGIC_VECTOR (10 downto 0):="00000000000";
    variable state:  STD_LOGIC:='0';
    begin
        if rising_edge(clock) then
           -- pwm_duty:= pwduty;
            if pwm_cnt=pwm+1 then
                state := '0';
            end if;
            if pwm_cnt="00000000000" then 
                state := '1';
            end if;
            if pwm="00000000000" then 
                state := '0';
            end if;
            pwm_cnt:=pwm_cnt+1;
            pwmout <= state;
        end if;
end process;

end Behavioral;
