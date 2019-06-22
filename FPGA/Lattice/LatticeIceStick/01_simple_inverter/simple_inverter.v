// Some module organizational notes shared in comments

module simple_inverter
   (
      // List Inputs
      input_1,

      // List Outputs
      output_1
      );

	// Define Port(s)
	input input_1;
	output output_1;

	// Define Connection(s)
	assign output_1 = ~input_1;

endmodule
