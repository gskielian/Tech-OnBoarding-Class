# VGA Driving with Ice40 UP5K # 

timings were derived from the following link, with clock cycles recalculated for a 12MHz FPGA Clock:

[vga timings](http://tinyvga.com/vga-timing/640x400@70Hz)

## Description ##

This example shows how to connect a blockram to drive the display.

The current display is a rainbow ish pattern of rgb colors, every now and then.

Future project will show not only the connectivity for blockram -> vga, but also
the method for writing to the blockram.

## Notes ##

in order to make the image more stable, may need to adjust the `H_FRONT_PORCH` number.
increasing this number to 10 appeared to make it most stable so far.
