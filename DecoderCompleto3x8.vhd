library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DecoderCompleto3x8 is
    Port ( a_i : in STD_LOGIC_VECTOR (2 downto 0);
           enable_i : in STD_LOGIC;
           y_0 : out STD_LOGIC_VECTOR (7 downto 0));
end DecoderCompleto3x8;

architecture Behavioral of DecoderCompleto3x8 is

    signal auxY : std_logic_vector(7 downto 0);

begin

    with a_i select
        auxY <= "00000001" when "000",
                "00000010" when "001",
                "00000100" when "010",
                "00001000" when "011",
                "00010000" when "100",
                "00100000" when "101",
                "01000000" when "110",
                "10000000" when "111",
                "00000000" when others;
        
    y_0 <= auxY when enable_i = '1' else
            (others => '0');

end Behavioral;

-- FlipFlops
-- Mux
-- Maquina de Estados
-- 