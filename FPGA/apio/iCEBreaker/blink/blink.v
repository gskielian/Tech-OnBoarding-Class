
module blink_test (
	input CLK,
	output LEDG_N,
	output LEDR_N,
	output LED1,
	output LED2,
	output LED3,
	output LED4,
	output LED5
);

//-- Modify this value for changing the blink frequency
localparam N = 24;  //-- N<=21 Fast, N>=23 Slow

reg [N:0] counter = 0;
always @(posedge CLK)
  counter <= counter + 1;

assign {LED5, LED4, LED3, LED2, LED1, LEDG_N, LEDR_N} = counter[6:0];

endmodule
