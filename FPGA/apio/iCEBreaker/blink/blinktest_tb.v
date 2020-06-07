`timescale 1us/1ns
module tb ();
  initial begin
    $dumpfile("top_tb.vcd");
    $dumpvars(0, t);
  end

  reg clk;
  wire led1;
  wire led2;
  wire led3;
  wire led4;
  wire led5;
  wire led6;
  wire led7;

  blink_test t (
	.CLK(clk),
	.LEDG_N(led1),
	.LEDR_N(led2),
	.LED1(led3),
	.LED2(led4),
	.LED3(led5),
	.LED4(led6),
	.LED5(led7)
);

  initial begin
		clk = 1'b0;
	end

  always begin
	  // number of microseconds before switch
    #33 clk = !clk;
  end

  initial begin
    repeat(10000) @(posedge clk);

$display("Test completed");
    $finish;
  end

 
endmodule // tb
