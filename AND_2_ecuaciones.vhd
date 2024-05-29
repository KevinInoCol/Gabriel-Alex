----------------------------------------------------------------------------------
-- Nombre de la biblioteca
library IEEE;
-- Llamamos al paquete de dicha biblioteca
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------
-- DESCRIPCIONES estan separadas en dos partes: Entidad y Arquitectura
entity AND_2_ecuaciones is
    Port ( a_i : in STD_LOGIC;
           b_i : in STD_LOGIC;
           y_0 : out STD_LOGIC);
end AND_2_ecuaciones;
----------------------------------------------------------------------------------
architecture Behavioral of AND_2_ecuaciones is

begin

    y_0 <= a_i AND b_i;

end Behavioral;
