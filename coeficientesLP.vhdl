--Alejandra Rodriguez Sanchez Ing. en Computacion
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity coeficientesLP is
   port(
           add: in std_logic_vector(3 downto 0);
          coef:out std_logic_vector(15 downto 0) 
       );
end entity coeficientesLP;

architecture beh of coeficientesLP is
type arreglo is array (0 to 11) of std_logic_vector(15 downto 0);
signal coefi: arreglo:=(
                        0=>"0111111111011100", --32732
                        1=>"1000000010011100", --32924
                        2=>"1000000000010010", --32786
                        3=>"0111101111110101", --31733
                        4=>"1000001110000101", --33669
                        5=>"1000110001111010", --35962
                        6=>"0110111101100011", --28515
                        7=>"0110001100001001", --25353
                        8=>"1010100001011010", --43098
                        9=>"1110000000100101", --57381
                       10=>"1011111101001111", --48975
                       11=>"1000111001000110", --36422
                       others=>(others=>'-')
                       );
begin
   coef<=coefi(to_integer(unsigned(add)));
end architecture beh;
