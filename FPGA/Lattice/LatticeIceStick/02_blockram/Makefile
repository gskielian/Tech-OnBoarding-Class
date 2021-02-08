all: blockram.bin

blockram.blif: blockram.v
	yosys -p 'synth_ice40 -top blockram -blif blockram.blif' blockram.v

blockram.asc: blockram.blif pin_mapping.pcf
	arachne-pnr -d 1k -o blockram.asc -p pin_mapping.pcf blockram.blif

blockram.bin: blockram.asc
	icepack blockram.asc blockram.bin

prog:
	iceprog blockram.bin

clean:
	rm -f blockram.blif blockram.asc blockram.bin

.PHONY: all prog clean
