`timescale 1ps/1fs
module vga_mod_tb ();
  initial begin
    $dumpfile("vga_mod_tb.vcd");
    $dumpvars(0, vga_1);
  end

  reg clk;
  wire hsync;
  wire vsync;
  wire red;
  wire green;
  wire blue;

  initial begin
		clk = 1'b0;
  end

/* vga_solid_color vga_1 ( */
/* 	.CLK(clk), */
/* 	.hsync(hsync), */
/* 	.vsync(vsync), */
/* 	.red(red), */
/* 	.green(green), */
/* 	.blue(blue) */
/* ); */

vga_solid_color vga_1 (
	.CLK(clk),
	.P1A3(hsync),
	.P1A4(vsync),
	.P1A7(red),
	.P1A8(green),
	.P1A9(blue)
);

  always begin
    // 41.6 nanoseconds per half period for 12MHz
    #41600 clk = !clk;
  end

  initial begin
    repeat(1000000) @(posedge clk);

    $display("Test completed");
    $finish;
  end
endmodule

