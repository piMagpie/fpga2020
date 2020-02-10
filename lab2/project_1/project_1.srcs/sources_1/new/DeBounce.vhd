library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DeBounce is
    port(   Clock : in std_logic;
            button_in : in std_logic;
            pulse_out : out std_logic
        );
end DeBounce;

architecture behav of DeBounce is

--the below constants decide the working parameters.
--the higher this is, the more longer time the user has to press the button.
constant COUNT_MAX : integer := 25000000;  -- 100 ms
--set it '1' if the button creates a high pulse when its pressed, otherwise '0'.

signal count : integer := 0;
type state_type is (active, wait_time); --state machine
signal state : state_type := active;

begin
  
process(Clock)
begin
    if(rising_edge(Clock)) then
        case (state) is
            when active =>
                if(button_in = '1') then  
                    state <= wait_time;
                    pulse_out <= '1';
                else
                    state <= active; --wait until button is pressed.
                    pulse_out <= '0';
                end if;
            when wait_time => 
                pulse_out <= '0';           
                if(count = COUNT_MAX) then
                    count <= 0; 
                    state <= active;  
                else
                    state <= wait_time; --wait until button is pressed.
                    count <= count + 1;
                end if; 
        end case;       
    end if;        
end process;                  
                                                                                
end architecture behav;