
module vga_solid_color (
	input CLK,
	output P1A3,
	output P1A4,
	output P1A7,
	output P1A8,
	output P1A9
);


vga_mod vga_1 (
	.CLK(CLK),
	.hsync(P1A3),
	.vsync(P1A4),
	.red(P1A7),
	.green(P1A8),
	.blue(P1A9)
);


endmodule
