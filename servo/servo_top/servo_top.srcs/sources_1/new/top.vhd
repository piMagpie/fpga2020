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
    Port ( 
        CLK : in STD_LOGIC;
        UP_BTN, DOWN_BTN, LEFT_BTN, RIGHT_BTN : in STD_LOGIC;
        LD : out STD_LOGIC_VECTOR(7 downto 0);
        JA1 : out STD_LOGIC
        );
end top;

architecture Behavioral of top is

 component design_1_wrapper
 port (
    ap_clk_0 : in STD_LOGIC;
    p_down_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_dutyCycle_0 : out STD_LOGIC;
    p_left_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_right_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_speed_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_up_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  
  end component;

   -- SIGNAL SPEED_LEDS_V : std_logic_vector(7 downto 0);   
   SIGNAL UP_BTN_V, DOWN_BTN_V, LEFT_BTN_V, RIGHT_BTN_V : std_logic_vector(7 downto 0);
begin

   
MULT: design_1_wrapper port map ( ap_clk_0 => CLK,
                                          p_up_0 => UP_BTN_V,
                                          p_down_0 => DOWN_BTN_V,
                                          p_left_0 => LEFT_BTN_V,
                                          p_right_0 => RIGHT_BTN_V,
                                          p_speed_0 =>  LD,
                                          p_dutyCycle_0 => JA1);

 process(CLK)
 
 begin
    if rising_edge(CLK) then        
        UP_BTN_V <= (others => '0');
        DOWN_BTN_V <= (others => '0');
        RIGHT_BTN_V <= (others => '0');
        LEFT_BTN_V <= (others => '0');
        
        if UP_BTN = '1' then
            UP_BTN_V <= (others => '1');
        end if;
        if DOWN_BTN = '1' then
            DOWN_BTN_V <= (others => '1');
        end if;
        if LEFT_BTN = '1' then
            LEFT_BTN_V <= (others => '1');
        end if;
        if RIGHT_BTN = '1' then
            RIGHT_BTN_V <= (others => '1');
        end if;
    end if;
 end process;
end Behavioral;
