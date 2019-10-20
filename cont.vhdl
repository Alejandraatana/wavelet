library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont is
   port(
           clk: in std_logic
     --resultadoFLP:out std_logic_vector(39 downto 0);
     --resultadoFHP:out std_logic_vector(39 downto 0)
       );
end entity cont;

architecture beh of cont is
component senal is
   port(
           add: in std_logic_vector(7 downto 0);
           dat:out std_logic_vector(15 downto 0)
       );
end component senal;

component contModificado is
   port(
              clk: in std_logic;
           enable: in std_logic;
            reset: in std_logic;
             cont:out std_logic_vector(7 downto 0)
       );
end component contModificado;

component coeficientesHP is
   port(
           add: in std_logic_vector(3 downto 0);
          coef:out std_logic_vector(15 downto 0) 
       );
end component coeficientesHP;

component coeficientesLP is
   port(
           add: in std_logic_vector(3 downto 0);
          coef:out std_logic_vector(15 downto 0) 
       );
end component coeficientesLP;

component contMod12 is
   port(
           clk: in std_logic;
        enable: in std_logic;
         reset: in std_logic;
          cont:out std_logic_vector(3 downto 0)
       );
end component contMod12;

component filtro is
   port(
           clk: in std_logic;
         reset: in std_logic;
        enable: in std_logic;
          coef: in std_logic_vector(15 downto 0);
          dato: in std_logic_vector(15 downto 0);
        result:out std_logic_vector(39 downto 0)
       );
end component filtro;

component ctrl is
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
end component ctrl;

component submue is
   port(
      datin: in std_logic_vector(39 downto 0);
     datout:out std_logic_vector(39 downto 0);
        add: in std_logic_vector(7 downto 0);
         rw: in std_logic;
     enable: in std_logic
       );
end component submue;

component contMod141 is
   port(
           clk: in std_logic;
        enable: in std_logic;
         reset: in std_logic;
          cont:out std_logic_vector(7 downto 0)
       );
end component contMod141;

signal dirS:std_logic_vector(7 downto 0);
signal dirC:std_logic_vector(3 downto 0);
signal  sig:std_logic_vector(15 downto 0);
signal coeHP:std_logic_vector(15 downto 0);
signal coeLP:std_logic_vector(15 downto 0);
signal enC141:std_logic;
signal enC12:std_logic;
signal enCM:std_logic;
signal enSM:std_logic;
signal RF:std_logic;
signal rw:std_logic;
signal reCM141:std_logic;
signal reCM12:std_logic;
signal reCM:std_logic;
signal resultadoFLP:std_logic_vector(39 downto 0);
signal resultadoFHP:std_logic_vector(39 downto 0);
signal datoutLP:std_logic_vector(39 downto 0);
signal datoutHP:std_logic_vector(39 downto 0);
signal dirM:std_logic_vector(7 downto 0);
begin

UC:ctrl 
   port map(
              clk=>clk,
            reset=>'1',
          enCM141=>enC141,
           enCM12=>enC12,
             enCM=>enCM,
             enSM=>enSM,
          reCM141=>reCM141,
           reCM12=>reCM12,
             reCM=>reCM,
              reF=>RF,
               rw=>rw
       );

conta:contModificado
   port map(
              clk=>clk,
           enable=>enCM,
            reset=>reCM,
             cont=>dirS
       );

datos:senal
   port map(
           add=>dirS,
           dat=>sig
       );

cont12:contMod12
   port map(
           clk=>clk,
        enable=>enC12,
         reset=>reCM12,
          cont=>dirC
       );

cont141:contMod141 
   port map(
           clk=>clk,
        enable=>enC141,
         reset=>reCM141,
          cont=>dirM
       );


coefiHP:coeficientesHP
   port map(
           add=>dirC,
          coef=>coeHP
       );

coefLP:coeficientesLP
port map(
        add=>dirC,
        coef=>coeLP
       );

filtroHP:filtro
   port map(
           clk=>clk,
         reset=>RF,
        enable=>enCM,
          coef=>coeHP,
          dato=>sig,
        result=>resultadoFHP
           );

filtroLP:filtro
   port map(
           clk=>clk,
         reset=>RF,
        enable=>enCM,
          coef=>coeLP,
          dato=>sig,
        result=>resultadoFLP
           );

submuestreoLP:submue 
   port map(
      datin=>resultadoFLP,
      datout=>datoutLP,
        add=>dirM,
         rw=>rw,
     enable=>enSM
       );

submuestreoHP:submue 
   port map(
      datin=>resultadoFHP,
      datout=>datoutHP,
        add=>dirM,
         rw=>rw,
     enable=>enSM
       );

end architecture beh;
