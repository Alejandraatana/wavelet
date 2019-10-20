#Alejandra Rodriguez Sanchez Ing. en Computacion
all:tb

tb:contModificado.o senal.o coeficientesHP.o coeficientesLP.o contMod12.o contMod141.o ctrl.o filtro.o submue.o cont.o tb.o
	ghdl -e --ieee=synopsys tb
	./tb --stop-time=40000ns --vcd=tb.vcd
	gtkwave tb.vcd ondas.sav

contModificado.o:contModificado.vhdl
	ghdl -a --ieee=synopsys contModificado.vhdl

cont.o:cont.vhdl
	ghdl -a --ieee=synopsys cont.vhdl

senal.o:senal.vhdl
	ghdl -a --ieee=synopsys senal.vhdl

coeficientesHP.o:coeficientesHP.vhdl
	ghdl -a --ieee=synopsys coeficientesHP.vhdl

coeficientesLP.o:coeficientesLP.vhdl
	ghdl -a --ieee=synopsys coeficientesLP.vhdl

contMod12.o:contMod12.vhdl
	ghdl -a --ieee=synopsys contMod12.vhdl

contMod141.o:contMod141.vhdl
	ghdl -a --ieee=synopsys contMod141.vhdl

filtro.o:filtro.vhdl
	ghdl -a --ieee=synopsys filtro.vhdl

submue.o:submue.vhdl
	ghdl -a --ieee=synopsys submue.vhdl

ctrl.o:ctrl.vhdl
	ghdl -a --ieee=synopsys ctrl.vhdl

tb.o:tb.vhdl
	ghdl -a --ieee=synopsys tb.vhdl

clean:
	rm *.o *.vcd *.cf tb
