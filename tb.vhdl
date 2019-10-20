--Alejandra Rodriguez Sanchez Ing. en Computacion
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity tb;

architecture beh of tb is
component cont is
   port(
           clk: in std_logic
     --resultadoFLP:out std_logic_vector(39 downto 0);
     --resultadoFHP:out std_logic_vector(39 downto 0)
       );
end component cont;

signal btnclk:std_logic:='0';
signal ledresFLP:std_logic_vector(39 downto 0);
signal ledresFHP:std_logic_vector(39 downto 0);
begin

conta:cont
   port map(
           clk=>btnclk
     --resultadoFLP=>ledresFLP,
     --resultadoFHP=>ledresFHP
           );

process
   begin
   wait for 5 ns;
      btnclk<='1';
   wait for 5 ns;
      btnclk<='0';
end process;
end architecture beh;
