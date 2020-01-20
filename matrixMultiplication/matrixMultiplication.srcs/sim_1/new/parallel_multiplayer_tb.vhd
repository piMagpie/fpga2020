library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity parallel_multiplayer_tb is
end;

architecture bench of parallel_multiplayer_tb is

  component parallel_multiplayer
  generic(n :natural);
  Port ( 
         clk : in std_ulogic;
         x : in std_ulogic_vector(n - 1 downto 0);
         y : in std_ulogic_vector(n - 1 downto 0);
         s : out std_ulogic_vector(n - 1 downto 0)
  );
  end component;
  
      constant CLK_PERIOD : time := 10 ns;


  signal CLK : std_ulogic := '0';
   
  constant n : natural := 8;
  signal x: std_ulogic_vector(n - 1 downto 0);
  signal y: std_ulogic_vector(n - 1 downto 0);
  signal s: std_ulogic_vector(n -1 downto 0) ;

begin

  -- Insert values for generic parameters !!
  uut: parallel_multiplayer generic map ( n =>  n)
                               port map ( clk => CLK,
                                          x => x,
                                          y => y,
                                          s => s );

  stimulus: process
  begin
  x <= "00000011";
  y <= "00000011";
  wait for 1ms;
  -- Put initialisation code here


   -- Put test bench stimulus code here

    wait;
  end process;

CLK_generation: process
begin
    CLK <='1';
    wait for CLK_PERIOD/2;
    CLK <= '0';
    wait for CLK_PERIOD/2;
end process CLK_generation;

end;