`include "implicit_blockram.v"

//Note BTN_U is active low
//Note all other buttons are active high

module top(
	input CLK,
	input BTN1,
	input BTN2,
	input BTN3,
	input BTN_U,
	output LED1,
	output LED2,
	output LED3,
	output LED4,
	output LED5);

   // registers
   reg ib_w_en;
   reg ib_r_en;

   reg [7:0] ib_w_addr;
   reg [7:0] ib_r_addr;

   reg [15:0] ib_data_in;

   // wires
   wire [15:0] ib_data_out;
   wire ib_valid_out;

   // implicit bram instance
   implicit_blockram imp_bram_1(
    .clk(CLK),
    .w_en(ib_w_en),
    .r_en(ib_r_en),
    .w_addr(ib_w_addr),
    .r_addr(ib_r_addr),
    .data_in(ib_data_in),
    .data_out(ib_data_out),
    .valid_out(ib_valid_out)
   );

   reg [4:0] led;
   reg [7:0] last_read_register;
   assign LED1 = led[0];
   assign LED2 = led[1];
   assign LED3 = led[2];
   assign LED4 = led[3];
   assign LED5 = led[4];

   initial begin

      led = 0;

      last_read_register = 0;

      ib_w_en = 0;
      ib_r_en = 0;
      ib_w_addr = 0;
      ib_r_addr = 0;
      ib_data_in = 0;
   end

   //note bram might need some time to initialize
   always @(posedge CLK)
   begin

      ib_w_en <= 0;
      ib_r_en <= 0;
      ib_w_addr <= 0;
      ib_r_addr <= 0;
      ib_data_in <= 0;


      // Description:
      // BTN1 -> BTN3 for clover
      // BTN2 -> BTN_U for center red led only
      // BTN1 and BTN2 permanently write memory at their respective locations
      // can simply switch between read address using BTN3 and BTN_U after
      // setting these registers
      if (BTN1 == 1) begin
         ib_w_en <= 1;
         ib_w_addr <= 8'd42; // use register address 42
         ib_data_in <= 16'b11110;
      end else if (BTN2 == 1) begin
         ib_w_en <= 1;
         ib_w_addr <= 8'd43; // register address
         ib_data_in <= 16'b00001;
      end else if (BTN3 == 1) begin
         ib_r_en <= 1;
	 ib_r_addr <= 8'd42;
	 last_read_register <= 8'd42;
         led <= ib_data_out[5:0];
      end else if (BTN_U == 0) begin //Note BTN_U is active low
         ib_r_en <= 1;
	 ib_r_addr <= 8'd43;
	 last_read_register <= 8'd43;
         led <= ib_data_out[5:0];
      end else begin
         ib_r_en <= 1;
	 ib_r_addr <= last_read_register;
         led <= ib_data_out[5:0];
      end
      
   end

   endmodule
