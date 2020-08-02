module buttons(
	input CLK,
	input P1A7,
	input P1A8,
	input P1A9,
	input P1A10,
	output LED1,
	output LED2,
	output LED3,
	output LED5
);

// higher means higher debounce hurdle (less prone to errors), but lower responsiveness
// use 24 for a few seconds
// use 18 for much faster responsiveness
// could be interesting to setup a long press and short press action
// eventually on the same button...
localparam N = 18; 

// counter register for debounce timeout
// 4 arrays 20 bits each
reg [N:0] counter [3:0];

// debounce registers
reg [3:0] b_hold_init = 'b0000;
reg [3:0] b_hold = 'b0000;

reg [3:0] b_output_state;

// separate by first clock cycle to prevent metastability
// also flip b/c inputs have pullup resistors (press makes it low)
always @(posedge CLK) begin
	b_hold_init[3:0] <= {P1A7, P1A8, P1A9, P1A10};
	b_hold[3:0] <= ~b_hold_init[3:0];
end

// integer for loop (note this is just a construct to save lines of code,
// and doesn't get synthesized in a sequential manner
integer i;
always @(posedge CLK) begin
	for (i = 0; i <= 3; i = i + 1) begin 
		if (b_hold[i] != b_output_state[i]) begin
			if (counter[i] != 'b1111_1111_1111_1111_1111_1111) begin
				counter[i] <= counter[i] + 1;
			end
			else begin
				b_output_state[i] <= b_hold[i];
				counter[i] <= 0;
			end
		end
		else begin
			counter[i] <= 0;
		end
	end
end

/* assign {LED1, LED2, LED3, LED4} = b_output_state[3:0]; */
assign {LED1, LED2, LED3, LED5} = b_output_state[3:0];

endmodule
