all: two_channel_mux.bin

two_channel_mux.blif: two_channel_mux.v
	yosys -p 'synth_ice40 -top two_channel_mux -blif two_channel_mux.blif' two_channel_mux.v

two_channel_mux.asc: two_channel_mux.blif pin_mapping.pcf
	arachne-pnr -d 1k -o two_channel_mux.asc -p pin_mapping.pcf two_channel_mux.blif

two_channel_mux.bin: two_channel_mux.asc
	icepack two_channel_mux.asc two_channel_mux.bin

prog:
	iceprog two_channel_mux.bin

clean:
	rm -f two_channel_mux.blif two_channel_mux.asc two_channel_mux.bin

.PHONY: all prog clean
