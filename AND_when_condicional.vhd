library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_when_condicional is
    Port ( a_i : in STD_LOGIC;
           b_i : in STD_LOGIC;
           y_0 : out STD_LOGIC);
end AND_when_condicional;

architecture Behavioral of AND_when_condicional is

begin

    y_0 <= a_i when b_i = '1' else '0';

end Behavioral;