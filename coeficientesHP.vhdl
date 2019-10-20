--Alejandra Rodriguez Sanchez Ing. en Computacion
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity coeficientesHP is
   port(
           add: in std_logic_vector(3 downto 0);
          coef:out std_logic_vector(15 downto 0) 
       );
end entity coeficientesHP;

architecture beh of coeficientesHP is
type arreglo is array (0 to 11) of std_logic_vector(15 downto 0);
signal coefi: arreglo:=(
                        0=>"0111000110111001", --29113
                        1=>"1011111101001111", --48975
                        2=>"0001111111011010", --8154
                        3=>"1010100001011010", --43098
                        4=>"1001110011110110", --40182
                        5=>"0110111101100011", --28515
                        6=>"0111001110000101", --29573
                        7=>"1000001110000101", --33669
                        8=>"1000010000001010", --33802
                        9=>"1000000000010010", --32786
                       10=>"0111111101100011", --32611
                       11=>"0111111111011100", --32732
                       others=>(others=>'-')
                       );
begin
   coef<=coefi(to_integer(unsigned(add)));
end architecture beh;
