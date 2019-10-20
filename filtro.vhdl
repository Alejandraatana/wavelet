--Alejandra Rodriguez Sanchez Ing. en Computacion
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity filtro is
   port(
           clk: in std_logic;
         reset: in std_logic;
        enable: in std_logic;
          coef: in std_logic_vector(15 downto 0);
          dato: in std_logic_vector(15 downto 0);
        result:out std_logic_vector(39 downto 0)
       );
end entity filtro;

architecture beh of filtro is
signal res:std_logic_vector(39 downto 0):="0000000000000000000000000000000000000000";
signal multiplica:std_logic_vector(31 downto 0);
begin
multiplica<=std_logic_vector(unsigned(coef) * unsigned(dato));

process(clk,reset,enable)
    begin
      if clk'event and clk='0' and reset='0' then
         result<=res;
         res<="0000000000000000000000000000000000000000";
      elsif clk'event and clk='1' and enable='1' then
         res<=std_logic_vector(unsigned(res) + unsigned(multiplica));
      end if;
end process;
end architecture beh;
