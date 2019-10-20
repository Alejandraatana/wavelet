--Alejandra Rodriguez Sanchez Ing. en Computacion

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contMod141 is
   port(
           clk: in std_logic;
        enable: in std_logic;
         reset: in std_logic;
          cont:out std_logic_vector(7 downto 0)
       );
end entity contMod141;

architecture beh of contMod141 is
signal contador:natural range 0 to 131:=1;
begin
cont<=std_logic_vector(to_unsigned(contador,8));

   process(clk,reset,enable)
    begin
      if reset='0' then
         contador<=1;
      elsif clk'event and clk='1' and enable='1' then
         if contador<131 then
            contador<=contador + 1;
         else
            contador<=1;
         end if;
      end if;
   end process;
end architecture beh;
