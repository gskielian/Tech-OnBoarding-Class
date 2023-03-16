all: simple_inverter.bin

simple_inverter.blif: simple_inverter.v
	yosys -p 'synth_ice40 -top simple_inverter -blif simple_inverter.blif' simple_inverter.v

simple_inverter.asc: simple_inverter.blif pin_mapping.pcf
	arachne-pnr -d 1k -o simple_inverter.asc -p pin_mapping.pcf simple_inverter.blif

simple_inverter.bin: simple_inverter.asc
	icepack simple_inverter.asc simple_inverter.bin

prog:
	iceprog simple_inverter.bin

clean:
	rm -f simple_inverter.blif simple_inverter.asc simple_inverter.bin

.PHONY: all prog clean
