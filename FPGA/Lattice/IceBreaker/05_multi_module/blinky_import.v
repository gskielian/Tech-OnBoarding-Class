// module description

module blinky_import (
	input clk,
	output led
);


reg [20:0] clock_divider = 0;
reg clock_pulse = 0;

always @(posedge clk) begin
	if (clock_divider == 1000000) begin
		clock_divider <= 0;
		clock_pulse <= 1;
	end else begin
		clock_divider <= clock_divider + 1;
		clock_pulse <= 0;
	end

	if (clock_pulse) begin 
		led <= ~led;
	end
end

endmodule

