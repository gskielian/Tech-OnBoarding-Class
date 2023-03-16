// module description
//
//

module template_program (
	input CLK,
	input  BTN1, BTN2, BTN3,
	output LED1, LED2, LED3, LED4, LED5
);

reg [19:0] clock_divider = 0;
reg clock_pulse = 0;

always @(posedge CLK) begin
	if (clock_divider == 500000) begin
		clock_divider <= 0;
		clock_pulse <= 1;
	end else begin
		clock_divider <= clock_divider + 1;
		clock_pulse <= 0;
	end

	if (clock_pulse) begin 
		LED1 <= ~LED1;
	end
end

endmodule

