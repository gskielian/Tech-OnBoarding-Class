module vga_colors_mod 
(
	output wire red_out,
	output wire green_out,
	output wire blue_out,
	input wire visible_range,
	input wire [2:0] data_in
);

// continuous assignments of ib dataout
// make sure to only show if in visible range
assign red_out   = (data_in[0] & visible_range);
assign green_out = (data_in[1] & visible_range);
assign blue_out  = (data_in[2] & visible_range);

endmodule

