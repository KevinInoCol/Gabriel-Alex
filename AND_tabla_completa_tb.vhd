library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity AND_tabla_completa_tb is
end;

architecture bench of AND_tabla_completa_tb is

  component AND_tabla_completa
      Port ( a_i : in STD_LOGIC;
             b_i : in STD_LOGIC;
             y_0 : out STD_LOGIC);
  end component;

  signal a_i: STD_LOGIC;
  signal b_i: STD_LOGIC;
  signal y_0: STD_LOGIC;

begin

  uut: AND_tabla_completa port map ( a_i => a_i,
                                     b_i => b_i,
                                     y_0 => y_0 );

  stimulus: process
  begin
  
    -- Put initialisation code here
        a_i <= '0';
        b_i <= '0';
        wait for 10 ns;
        a_i <= '1';
        b_i <= '0';
        wait for 10 ns;
        a_i <= '0';
        b_i <= '1';
        wait for 10 ns;
        a_i <= '1';
        b_i <= '1';
        wait for 10 ns;
        a_i <= '0';
        b_i <= '0';

    -- Put test bench stimulus code here

    wait;
  end process;


end;