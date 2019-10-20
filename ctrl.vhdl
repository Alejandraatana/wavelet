--Alejandra Rodriguez Sanchez Ing. en Computacion

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl is
   port(
              clk: in std_logic;
            reset: in std_logic;
          enCM141:out std_logic;
           enCM12:out std_logic;
             enCM:out std_logic;
             enSM:out std_logic;
          reCM141:out std_logic;
           reCM12:out std_logic;
             reCM:out std_logic;
              reF:out std_logic;
               rw:out std_logic
       );
end entity ctrl;

architecture beh of ctrl is
signal contador: natural range 0 to 100:=0;
signal cont: natural range 0 to 100:=0;
signal edo: natural range 0 to 92:=0;
signal count: natural range 0 to 4000:=0;
signal modu: natural range 0 to 4000:=0;
begin

modu<=count mod 24;
 process(clk,reset)
    begin
    if reset='0' then
         enCM12<='0';
         enCM<='0';
         reCM141<='0';
         reCM12<='0';
         reCM<='0';
         reF<='0';
         rw<='1';
    elsif clk'event and clk='1' then
      case edo is 
         when 0|2|3|5|6|7|9|10|11|12|14|15|16|17|18|20|21|22|23|24|25|27|28|29|30|31|32|33|35|36|37|38|39|40|41|42|44|45|46|47|48|49|50|51|52|54|55|56|57|58|59|60|61|62|63|65|66|67|68|69|70|71|72|73|74|75|77|78|79|80|81|82|83|84|85|86|87|88|90 =>
           enCM12<='1';
           enCM<='1';
           reCM12<='1';
           reCM141<='1';
           reCM<='1';
           reF<='1';
           contador<=contador+1;
           edo<=edo+1;
         when 1|4|8|13|19|26|34|43|53|64|76|89 =>
           enCM12<='1';
           enCM<='0';
           reCM141<='1';
           reCM12<='0';
           reCM<='1';
           reF<='0';
           contador<=contador+1;
           edo<=edo+1;
         when 91 =>
           if cont<11 then
               reF<='1';
               cont<=cont+1;
           else
               reF<='0';
               cont<=0;
           end if;
         when others => 
      end case;
      if count=222 then 
         count<=240;
      elsif modu=0 and count>222 and count<3372 then
         enCM141<='1';
         enSM<='1';
         rw<='1';
         count<=count+1;
      elsif count=3372 then
         enCM141<='1';
         enSM<='1';
         rw<='0';
      else
         enCM141<='0';
         enSM<='0';
         rw<='1';
         count<=count+1;
      end if;
    end if;
 end process;
end architecture beh;
