// Some module organizational notes shared in comments

module blockram
   (
      // List Mux Channels
      input_channel_1,
      input_channel_2,

      // List Selection Input(s)
      selection_input,

      // List Output(s)
      mux_out
      );

	// Define Port(s)
	
	input selection_input;

	input input_channel_1;
	input input_channel_2;

	output mux_out;

	// Define Connection(s)

	assign mux_out = selection_input? input_channel_1: input_channel_2;

endmodule
