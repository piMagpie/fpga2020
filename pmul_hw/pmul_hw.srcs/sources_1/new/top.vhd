----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2020 03:54:51 PM
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
    Port ( SWA : in STD_ULOGIC_VECTOR (3 downto 0);
           SWB : in STD_ULOGIC_VECTOR (3 downto 0);
           led : out STD_ULOGIC_VECTOR (7 downto 0);
           GCLK : in STD_ULOGIC);
end top;

architecture Behavioral of top is
  constant n : natural := 8;

 component parallel_multiplayer
  generic(n :natural);
  Port ( 
         clk : in std_ulogic;
         x : in std_ulogic_vector(n - 1 downto 0);
         y : in std_ulogic_vector(n - 1 downto 0);
         s : out std_ulogic_vector(n - 1 downto 0)
  );
  end component;

    signal x : std_ulogic_vector(n-1 downto 0);
    signal y : std_ulogic_vector(n-1 downto 0);
begin


MULT: parallel_multiplayer generic map ( n =>  n)
                               port map ( clk => GCLK,
                                          x => x,
                                          y => y,
                                          s => led );
 process(GCLK)
 
 begin
    if rising_edge(GCLK) then
    
            -- replace using generators
            x(0) <= SWA(0);
            x(1) <= SWA(1);
            x(2) <= SWA(2);
            x(3) <= SWA(3);
            x(4) <= '0';
            x(5) <= '0';
            x(6) <= '0';
            x(7) <= '0';
            
            y(0) <= SWB(0);
            y(1) <= SWB(1);
            y(2) <= SWB(2);
            y(3) <= SWB(3);
            y(4) <= '0';
            y(5) <= '0';
            y(6) <= '0';
            y(7) <= '0';
    end if;
 end process;
end Behavioral;
