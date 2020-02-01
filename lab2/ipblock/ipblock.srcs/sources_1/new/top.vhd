----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/29/2020 07:03:52 AM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( CLK : in STD_LOGIC;
           SWA1 : in STD_LOGIC;
           SWA2 : in STD_LOGIC;
           SWB1 : in STD_LOGIC;
           SWB2 : in STD_LOGIC;
           LED1 : out STD_LOGIC;
           LED2 : out STD_LOGIC;
           LED3 : out STD_LOGIC;
           LED4 : out STD_LOGIC);
end top;

architecture Behavioral of top is
component design_1_wrapper is
  port (
    c_out_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC;
    s_out_0 : out STD_LOGIC;
    s_out_1 : out STD_LOGIC;
    s_out_2 : out STD_LOGIC;
    x_0 : in STD_LOGIC;
    x_1 : in STD_LOGIC;
    y_0 : in STD_LOGIC;
    y_1 : in STD_LOGIC
  );
end component;
    
begin
 -- Insert values for generic parameters !!
  bitwise: design_1_wrapper port map ( c_out_0 => LED4,
                                          clk_0 => CLK,
                                          s_out_0 => LED1,
                                          s_out_1 => LED2,
                                          s_out_2 => LED3,
                                          x_0 => SWA1,
                                          x_1 => SWA2,
                                          y_0 => SWB1,
                                          y_1 => SWB2
                                           );

end Behavioral;
