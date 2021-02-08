module implicit_blockram(
	input wire clk,
	input wire w_en,
	input wire r_en,
	input wire [7:0] w_addr,
	input wire [7:0] r_addr,
	input wire [15:0] data_in,
	output reg [15:0] data_out,
	output reg valid_out);

   reg [15:0] memory [0:255];
   integer i;

   initial begin
      // default valid output
      valid_out = 0;
      
      // initialize all 16 bit memory blocks
      for(i = 0; i <= 255; i = i + 1) begin
         memory[i] = 16'h0000;
      end
   end

   always @(posedge clk)
   begin
      valid_out <= 0;

      if(w_en) begin
         memory[w_addr] <= data_in;
      end

      if (r_en) begin
         data_out <= memory[r_addr];
         valid_out <= 1;
      end
   end
endmodule
