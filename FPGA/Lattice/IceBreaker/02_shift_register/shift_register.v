// module description: 

module shift_register (
	input CLK,
	input  BTN1, BTN2, BTN3,
	output LED1, LED2, LED3, LED4, LED5
);

reg [20:0] clock_divider = 0;
reg clock_pulse = 0;

reg [4:0] shift_register = 0;
integer i;

always @(posedge CLK) begin
	if (clock_divider == 2000000) begin
		clock_divider <= 0;
		clock_pulse <= 1;
	end else begin
		clock_divider <= clock_divider + 1;
		clock_pulse <= 0;
	end

	if (clock_pulse) begin 

		for (i = 1; i < 5; i++) begin
			shift_register[i] <= shift_register[i-1];
		end

		shift_register[0] <= BTN1;
	end

end

		assign LED1 = shift_register[0];
		assign LED2 = shift_register[1];
		assign LED3 = shift_register[2];
		assign LED4 = shift_register[3];
		assign LED5 = shift_register[4];
endmodule

