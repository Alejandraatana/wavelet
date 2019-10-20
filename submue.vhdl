--Alejandra Rodriguez Sanchez Ing. en Computacion

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity submue is
   port(
      datin: in std_logic_vector(39 downto 0);
     datout:out std_logic_vector(39 downto 0);
        add: in std_logic_vector(7 downto 0);
         rw: in std_logic;
     enable: in std_logic
       );
end entity submue;

architecture beh of submue is
type data is array (0 to 145) of std_logic_vector(39 downto 0);
signal dato: data:=(others=>(others=>'0'));
begin
   process(enable,add,rw,datin)
       begin
       if enable='1' then
         if rw='1' then
            dato(to_integer(unsigned(add)))<=datin;
         else
            datout<=dato(to_integer(unsigned(add)));
         end if;
       end if;
   end process;
end architecture beh;
