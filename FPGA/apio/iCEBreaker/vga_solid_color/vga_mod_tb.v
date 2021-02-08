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

vga_mod vga_1 (
	.CLK(clk),
	.hsync(hsync),
	.vsync(vsync),
	.red(red),
	.green(green),
	.blue(blue)
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

