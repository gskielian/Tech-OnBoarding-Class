all: prog_name.bin

prog_name.blif: prog_name.v
	yosys -p 'synth_ice40 -top prog_name -blif prog_name.blif' prog_name.v

prog_name.asc: prog_name.blif pin_mapping.pcf
	arachne-pnr -d 1k -o prog_name.asc -p pin_mapping.pcf prog_name.blif

prog_name.bin: prog_name.asc
	icepack prog_name.asc prog_name.bin

prog:
	iceprog prog_name.bin

clean:
	rm -f prog_name.blif prog_name.asc prog_name.bin

.PHONY: all prog clean
