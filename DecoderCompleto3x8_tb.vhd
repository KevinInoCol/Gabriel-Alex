library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity DecoderCompleto3x8_tb is
end;

architecture bench of DecoderCompleto3x8_tb is

  component DecoderCompleto3x8
      Port ( a_i : in STD_LOGIC_VECTOR (2 downto 0);
             enable_i : in STD_LOGIC;
             y_0 : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal a_i: STD_LOGIC_VECTOR (2 downto 0);
  signal enable_i: STD_LOGIC;
  signal y_0: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: DecoderCompleto3x8 port map ( a_i      => a_i,
                                     enable_i => enable_i,
                                     y_0      => y_0 );

  stimulus: process
  begin
  
    -- Put initialisation code here
        a_i <= "000";
        enable_i <= '1';
        wait for 10 ns;
        a_i <= "001";
        enable_i <= '1';
        wait for 10 ns;
        a_i <= "010";
        enable_i <= '1';
        wait for 10 ns;
        a_i <= "011";
        enable_i <= '1';
        wait for 10 ns;
        a_i <= "100";
        enable_i <= '1';
        wait for 10 ns;
        a_i <= "101";
        enable_i <= '1';
        wait for 10 ns;
        a_i <= "110";
        enable_i <= '1';
        wait for 10 ns;
        a_i <= "111";
        enable_i <= '1';
        wait for 10 ns;
        enable_i <= '0';
    -- Put test bench stimulus code here

    wait;
  end process;


end;