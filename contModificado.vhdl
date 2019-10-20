--Alejandra Rodriguez Sanchez Ing. en Computacion
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contModificado is
   port(
              clk: in std_logic;
           enable: in std_logic;
            reset: in std_logic;
             cont:out std_logic_vector(7 downto 0)
       );
end entity contModificado;

architecture beh of contModificado is
signal contador: natural range 0 to 250;
signal estado: natural range 0 to 36:=0;
signal num: integer range 0 to 260:=0;
signal con: integer range 0 to 250:=0;
signal lin: integer range 0 to 260:=1;
signal lsu: integer range 0 to 260:=12;

begin
cont<=std_logic_vector(to_unsigned(contador,8));
process(clk,reset,enable)
    begin
    if reset='0' then
      contador<=0;
      num<=0;
    elsif clk'event and clk='1' and enable='1' then
      case estado is
         when 0 =>
            if num<64 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=1;
            end if;
         when 1 =>
            if num=0 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 2 =>
            if num=0 then
               contador<=10;
               num<=num+1;
            elsif num=1 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 3 =>
            if num=0 then
               contador<=9;
               num<=num+1;
            elsif num=1 then
               contador<=10;
               num<=num+1;
            elsif num=2 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 4 =>
            if num=0 then
               contador<=8;
               num<=num+1;
            elsif num=1 then
               contador<=9;
               num<=num+1;
            elsif num=2 then
               contador<=10;
               num<=num+1;
            elsif num=3 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 5 =>
            if num=0 then
               contador<=7;
               num<=num+1;
            elsif num=1 then
               contador<=8;
               num<=num+1;
            elsif num=2 then
               contador<=9;
               num<=num+1;
            elsif num=3 then
               contador<=10;
               num<=num+1;
            elsif num=4 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 6 =>
            if num=0 then
               contador<=6;
               num<=num+1;
            elsif num=1 then
               contador<=7;
               num<=num+1;
            elsif num=2 then
               contador<=8;
               num<=num+1;
            elsif num=3 then
               contador<=9;
               num<=num+1;
            elsif num=4 then
               contador<=10;
               num<=num+1;
            elsif num=5 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 7 =>
            if num=0 then
               contador<=5;
               num<=num+1;
            elsif num=1 then
               contador<=6;
               num<=num+1;
            elsif num=2 then
               contador<=7;
               num<=num+1;
            elsif num=3 then
               contador<=8;
               num<=num+1;
            elsif num=4 then
               contador<=9;
               num<=num+1;
            elsif num=5 then
               contador<=10;
               num<=num+1;
            elsif num=6 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 8 =>
            if num=0 then
               contador<=4;
               num<=num+1;
            elsif num=1 then
               contador<=5;
               num<=num+1;
            elsif num=2 then
               contador<=6;
               num<=num+1;
            elsif num=3 then
               contador<=7;
               num<=num+1;
            elsif num=4 then
               contador<=8;
               num<=num+1;
            elsif num=5 then
               contador<=9;
               num<=num+1;
            elsif num=6 then
               contador<=10;
               num<=num+1;
            elsif num=7 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 9 =>
            if num=0 then
               contador<=3;
               num<=num+1;
            elsif num=1 then
               contador<=4;
               num<=num+1;
            elsif num=2 then
               contador<=5;
               num<=num+1;
            elsif num=3 then
               contador<=6;
               num<=num+1;
            elsif num=4 then
               contador<=7;
               num<=num+1;
            elsif num=5 then
               contador<=8;
               num<=num+1;
            elsif num=6 then
               contador<=9;
               num<=num+1;
            elsif num=7 then
               contador<=10;
               num<=num+1;
            elsif num=8 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 10 =>
            if num=0 then
               contador<=2;
               num<=num+1;
            elsif num=1 then
               contador<=3;
               num<=num+1;
            elsif num=2 then
               contador<=4;
               num<=num+1;
            elsif num=3 then
               contador<=5;
               num<=num+1;
            elsif num=4 then
               contador<=6;
               num<=num+1;
            elsif num=5 then
               contador<=7;
               num<=num+1;
            elsif num=6 then
               contador<=8;
               num<=num+1;
            elsif num=7 then
               contador<=9;
               num<=num+1;
            elsif num=8 then
               contador<=10;
               num<=num+1;
            elsif num=9 then
               contador<=11;
               num<=num+1;
            elsif num<11 then
               contador<=0;
               num<=num+1;
            else
               num<=0;
               estado<=estado+1;
            end if;
         when 11 =>
            if num=0 then
               contador<=1;
               num<=num+1;
            elsif num=1 then
               contador<=2;
               num<=num+1;
            elsif num=2 then
               contador<=3;
               num<=num+1;
            elsif num=3 then
               contador<=4;
               num<=num+1;
            elsif num=4 then
               contador<=5;
               num<=num+1;
            elsif num=5 then
               contador<=6;
               num<=num+1;
            elsif num=6 then
               contador<=7;
               num<=num+1;
            elsif num=7 then
               contador<=8;
               num<=num+1;
            elsif num=8 then
               contador<=9;
               num<=num+1;
            elsif num=9 then
               contador<=10;
               num<=num+1;
            elsif num=10 then
               contador<=11;
               num<=num+1;
            elsif num=11 then
               contador<=0;
               num<=0;
               estado<=estado+1;
            end if;
          when 12 =>
            if num=0 then
               contador<=1;
               num<=num+1;
            elsif num<11 then
               contador<=num;
               num<=num+1;
            else
               contador<=num;
               num<=0;
               estado<=estado+1;
            end if;
          when 13 =>
            if num=0 then
               contador<=2;
               num<=num+1;
            elsif num=1 then
               contador<=1;
               num<=num+1;
            elsif num<11 then
               contador<=num-1;
               num<=num+1;
            else
               contador<=num-1;
               num<=0;
               estado<=estado+1;
            end if;
          when 14 =>
            if num=0 then
               contador<=3;
               num<=num+1;
            elsif num=1 then
               contador<=2;
               num<=num+1;
            elsif num=2 then
               contador<=1;
               num<=num+1;
               con<=num-1;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 15 =>
            if num=0 then
               contador<=4;
               num<=num+1;
            elsif num=1 then
               contador<=3;
               num<=num+1;
            elsif num=2 then
               contador<=2;
               num<=num+1;
            elsif num=3 then
               contador<=1;
               num<=num+1;
               con<=num-2;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 16 =>
            if num=0 then
               contador<=5;
               num<=num+1;
            elsif num=1 then
               contador<=4;
               num<=num+1;
            elsif num=2 then
               contador<=3;
               num<=num+1;
            elsif num=3 then
               contador<=2;
               num<=num+1;
            elsif num=4 then
               contador<=1;
               num<=num+1;
               con<=num-3;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 17 =>
            if num=0 then
               contador<=6;
               num<=num+1;
            elsif num=1 then
               contador<=5;
               num<=num+1;
            elsif num=2 then
               contador<=4;
               num<=num+1;
            elsif num=3 then
               contador<=3;
               num<=num+1;
            elsif num=4 then
               contador<=2;
               num<=num+1;
            elsif num=5 then
               contador<=1;
               num<=num+1;
               con<=num-4;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 18 =>
            if num=0 then
               contador<=7;
               num<=num+1;
            elsif num=1 then
               contador<=6;
               num<=num+1;
            elsif num=2 then
               contador<=5;
               num<=num+1;
            elsif num=3 then
               contador<=4;
               num<=num+1;
            elsif num=4 then
               contador<=3;
               num<=num+1;
            elsif num=5 then
               contador<=2;
               num<=num+1;
            elsif num=6 then
               contador<=1;
               num<=num+1;
               con<=num-5;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 19 =>
            if num=0 then
               contador<=8;
               num<=num+1;
            elsif num=1 then
               contador<=7;
               num<=num+1;
            elsif num=2 then
               contador<=6;
               num<=num+1;
            elsif num=3 then
               contador<=5;
               num<=num+1;
            elsif num=4 then
               contador<=4;
               num<=num+1;
            elsif num=5 then
               contador<=3;
               num<=num+1;
            elsif num=6 then
               contador<=2;
               num<=num+1;
            elsif num=7 then
               contador<=1;
               num<=num+1;
               con<=num-6;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 20 =>
            if num=0 then
               contador<=9;
               num<=num+1;
            elsif num=1 then
               contador<=8;
               num<=num+1;
            elsif num=2 then
               contador<=7;
               num<=num+1;
            elsif num=3 then
               contador<=6;
               num<=num+1;
            elsif num=4 then
               contador<=5;
               num<=num+1;
            elsif num=5 then
               contador<=4;
               num<=num+1;
            elsif num=6 then
               contador<=3;
               num<=num+1;
            elsif num=7 then
               contador<=2;
               num<=num+1;
            elsif num=8 then
               contador<=1;
               num<=num+1;
               con<=num-7;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 21 =>
            if num=0 then
               contador<=10;
               num<=num+1;
            elsif num=1 then
               contador<=9;
               num<=num+1;
            elsif num=2 then
               contador<=8;
               num<=num+1;
            elsif num=3 then
               contador<=7;
               num<=num+1;
            elsif num=4 then
               contador<=6;
               num<=num+1;
            elsif num=5 then
               contador<=5;
               num<=num+1;
            elsif num=6 then
               contador<=4;
               num<=num+1;
            elsif num=7 then
               contador<=3;
               num<=num+1;
            elsif num=8 then
               contador<=2;
               num<=num+1;
            elsif num=9 then
               contador<=1;
               num<=num+1;
               con<=num-8;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=0;
               estado<=estado+1;
            end if;
          when 22 =>
            if num=0 then
               contador<=11;
               num<=num+1;
            elsif num=1 then
               contador<=10;
               num<=num+1;
            elsif num=2 then
               contador<=9;
               num<=num+1;
            elsif num=3 then
               contador<=8;
               num<=num+1;
            elsif num=4 then
               contador<=7;
               num<=num+1;
            elsif num=5 then
               contador<=6;
               num<=num+1;
            elsif num=6 then
               contador<=5;
               num<=num+1;
            elsif num=7 then
               contador<=4;
               num<=num+1;
            elsif num=8 then
               contador<=3;
               num<=num+1;
            elsif num=9 then
               contador<=2;
               num<=num+1;
            elsif num=10 then
               contador<=1;
               num<=num+1;
               con<=num-9;
            elsif num<11 then
               contador<=con;
               con<=con+1;
               num<=num+1;
            else
               contador<=con;
               num<=lsu;
               estado<=estado+1;
            end if;
          when 23 =>
            if num>lin then
               contador<=num;
               num<=num-1;
            else
               contador<=num;
               num<=lsu+1;
               lin<=lin+1;
               lsu<=lsu+1;
               if lsu>249 then 
                  estado<=estado+1;
                  num<=0;
               end if;
            end if;
          when 24 =>
            if num=0 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=251-num;
               num<=num+1;
            else
               contador<=251-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 25 =>
            if num=0 then
               contador<=249;
               num<=num+1;
            elsif num=1 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=252-num;
               num<=num+1;
            else
               contador<=252-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 26 =>
            if num=0 then
               contador<=248;
               num<=num+1;
            elsif num=1 then
               contador<=249;
               num<=num+1;
            elsif num=2 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=253-num;
               num<=num+1;
            else
               contador<=253-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 27 =>
            if num=0 then
               contador<=247;
               num<=num+1;
            elsif num=1 then
               contador<=248;
               num<=num+1;
            elsif num=2 then
               contador<=249;
               num<=num+1;
            elsif num=3 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=254-num;
               num<=num+1;
            else
               contador<=254-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 28 =>
            if num=0 then
               contador<=246;
               num<=num+1;
            elsif num=1 then
               contador<=247;
               num<=num+1;
            elsif num=2 then
               contador<=248;
               num<=num+1;
            elsif num=3 then
               contador<=249;
               num<=num+1;
            elsif num=4 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=255-num;
               num<=num+1;
            else
               contador<=255-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 29 =>
            if num=0 then
               contador<=245;
               num<=num+1;
            elsif num=1 then
               contador<=246;
               num<=num+1;
            elsif num=2 then
               contador<=247;
               num<=num+1;
            elsif num=3 then
               contador<=248;
               num<=num+1;
            elsif num=4 then
               contador<=249;
               num<=num+1;
            elsif num=5 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=256-num;
               num<=num+1;
            else
               contador<=256-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 30 =>
            if num=0 then
               contador<=244;
               num<=num+1;
            elsif num=1 then
               contador<=245;
               num<=num+1;
            elsif num=2 then
               contador<=246;
               num<=num+1;
            elsif num=3 then
               contador<=247;
               num<=num+1;
            elsif num=4 then
               contador<=248;
               num<=num+1;
            elsif num=5 then
               contador<=249;
               num<=num+1;
            elsif num=6 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=257-num;
               num<=num+1;
            else
               contador<=257-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 31 =>
            if num=0 then
               contador<=243;
               num<=num+1;
            elsif num=1 then
               contador<=244;
               num<=num+1;
            elsif num=2 then
               contador<=245;
               num<=num+1;
            elsif num=3 then
               contador<=246;
               num<=num+1;
            elsif num=4 then
               contador<=247;
               num<=num+1;
            elsif num=5 then
               contador<=248;
               num<=num+1;
            elsif num=6 then
               contador<=249;
               num<=num+1;
            elsif num=7 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=258-num;
               num<=num+1;
            else
               contador<=258-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 32 =>
            if num=0 then
               contador<=242;
               num<=num+1;
            elsif num=1 then
               contador<=243;
               num<=num+1;
            elsif num=2 then
               contador<=244;
               num<=num+1;
            elsif num=3 then
               contador<=245;
               num<=num+1;
            elsif num=4 then
               contador<=246;
               num<=num+1;
            elsif num=5 then
               contador<=247;
               num<=num+1;
            elsif num=6 then
               contador<=248;
               num<=num+1;
            elsif num=7 then
               contador<=249;
               num<=num+1;
            elsif num=8 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=259-num;
               num<=num+1;
            else
               contador<=259-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 33 =>
            if num=0 then
               contador<=241;
               num<=num+1;
            elsif num=1 then
               contador<=242;
               num<=num+1;
            elsif num=2 then
               contador<=243;
               num<=num+1;
            elsif num=3 then
               contador<=244;
               num<=num+1;
            elsif num=4 then
               contador<=245;
               num<=num+1;
            elsif num=5 then
               contador<=246;
               num<=num+1;
            elsif num=6 then
               contador<=247;
               num<=num+1;
            elsif num=7 then
               contador<=248;
               num<=num+1;
            elsif num=8 then
               contador<=249;
               num<=num+1;
            elsif num=9 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=260-num;
               num<=num+1;
            else
               contador<=260-num;
               num<=0;
               estado<=estado+1;
            end if;
          when 34 =>
            if num=0 then
               contador<=240;
               num<=num+1;
            elsif num=1 then
               contador<=241;
               num<=num+1;
            elsif num=2 then
               contador<=242;
               num<=num+1;
            elsif num=3 then
               contador<=243;
               num<=num+1;
            elsif num=4 then
               contador<=244;
               num<=num+1;
            elsif num=5 then
               contador<=245;
               num<=num+1;
            elsif num=6 then
               contador<=246;
               num<=num+1;
            elsif num=7 then
               contador<=247;
               num<=num+1;
            elsif num=8 then
               contador<=248;
               num<=num+1;
            elsif num=9 then
               contador<=249;
               num<=num+1;
            elsif num=10 then
               contador<=250;
               num<=num+1;
            elsif num<11 then
               contador<=261-num;
               num<=num+1;
            else
               contador<=261-num;
               num<=0;
               estado<=estado+1;
               lin<=0;
               lsu<=239;
            end if;
          when 35 =>
            if num<=lin then
               contador<=0;
               num<=num+1;
            elsif num<11 then
               contador<=lsu+num;
               num<=num+1;
            else
               contador<=lsu+num;
               num<=0;
               lin<=lin+1;
               lsu<=lsu-1;
               if lsu<230 then
                  estado<=estado+1;
               end if; 
            end if;
          when 36 =>
            contador<=0;
          when others =>
      end case;
    end if;
end process;
end architecture beh;
