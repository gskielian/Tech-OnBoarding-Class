module blink_test (
	input  logic CLK,
	output logic LEDG_N,
	output logic LEDR_N,
	output logic LED1,
	output logic LED2,
	output logic LED3,
	output logic LED4,
	output logic LED5
);

//-- Modify this value for changing the blink frequency
localparam N = 24;  //-- N<=21 Fast, N>=23 Slow

reg [N:0] counter = 0;
always_ff @(posedge CLK)
  counter <= counter + 1;

assign {LED5, LED4, LED3, LED2, LED1, LEDG_N, LEDR_N} = counter[6:0];

endmodule

