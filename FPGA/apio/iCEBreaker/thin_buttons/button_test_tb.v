`timescale 1ns/1ps
module button_test_tb ();
  initial begin
    $dumpfile("button_test_tb.vcd");
    $dumpvars(0, t);
  end
	reg clk;
	wire p1a7;
	wire p1a8;
	wire p1a9;
	wire p1a10;
	wire  led1;
	wire  led2;
	wire  led3;
	wire  led4;


  buttons t (
	.CLK(clk),
	.P1A7(p1a7),
	.P1A8(p1a8),
	.P1A9(p1a9),
	.P1A10(p1a10),
	.LED1(led1),
	.LED2(led2),
	.LED3(led3),
	.LED4(led4)
);
  localparam N = 24;
  reg [N:0] counter;
  initial begin
		clk = 1'b0;
		counter = 0;
  end

  always begin
	  // number of microseconds before switch
    #41.5 clk = !clk;
    counter <= counter + 1;
  end

  always @(posedge clk) begin
	  counter <= counter + 1;
  end

  assign p1a7 = (counter < 10);
  assign p1a8 = (counter < 20);
  assign p1a9 = (counter < 30);
  assign p1a10 = (counter < 40);

  initial begin
    repeat(10000000) @(posedge clk);

    $display("Test completed");
    $finish;
  end

 
endmodule // tb
