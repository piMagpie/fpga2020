----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2020 08:23:36 PM
-- Design Name: 
-- Module Name: servo_test - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity servo_test is
--  Port ( );
end servo_test;

architecture Behavioral of servo_test is

 component design_1_wrapper
 port (
    ap_clk_0 : in STD_LOGIC;
    down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dutyCycle_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    left_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    right_r_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component;
  
  signal CLK : std_ulogic := '0';
   
   constant CLK_PERIOD : time := 10 ns;
  
   SIGNAL DUTY_CYCLE_V : std_logic_vector(7 downto 0);
   SIGNAL SPEED_LEDS_V : std_logic_vector(7 downto 0);
   
   SIGNAL UP_BTN_V, DOWN_BTN_V, LEFT_BTN_V, RIGHT_BTN_V : std_logic_vector(7 downto 0);
begin
MULT: design_1_wrapper port map ( ap_clk_0 => CLK,
                                          up_0 => UP_BTN_V,
                                          down_0 => DOWN_BTN_V,
                                          left_r_0 => LEFT_BTN_V,
                                          right_r_0 => RIGHT_BTN_V,
                                          speed_0 =>  SPEED_LEDS_V,
                                          dutyCycle_0 => DUTY_CYCLE_V);

CLK_generation: process
begin
    CLK <='1';
    wait for CLK_PERIOD/2;
    CLK <= '0';
    wait for CLK_PERIOD/2;
end process CLK_generation;

end;
end Behavioral;
