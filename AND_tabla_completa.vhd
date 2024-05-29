library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_tabla_completa is
    Port ( a_i : in STD_LOGIC;
           b_i : in STD_LOGIC;
           y_0 : out STD_LOGIC);
end AND_tabla_completa;

architecture Behavioral of AND_tabla_completa is

    -- Bit mas significativo esta a la izquierda
    signal entradas : std_logic_vector(1 downto 0);

begin

    entradas <= b_i & a_i;

    with entradas select
    
    y_0 <= '1' when "11",
           '0' when "01",
           '0' when "10",
           '0' when "00",
           '0' when others;
           
end Behavioral;