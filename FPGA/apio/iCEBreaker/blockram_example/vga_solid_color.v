module vga_solid_color (
	input CLK,
	output P1A3,
	output P1A4,
	output wire P1A7,
	output wire P1A8,
	output wire P1A9
);


// RELATED TO BLOCKRAM

//registers

reg ib_w_en;
reg ib_r_en;

reg [7:0] ib_w_addr;
reg [7:0] ib_r_addr;

reg [15:0] ib_data_in;


// wires
wire [15:0] ib_data_out;
wire ib_valid_out;

// RED BLUE AND GREEN REGISTERS
// using 1 bit levels for now

wire red_out;
wire green_out;
wire blue_out;

wire visible_range;


// instantiate counters
localparam V_TIMER_BITS = 9;
localparam H_TIMER_BITS = 9; //math.log(31.7775571e-6/(1/12e6),2) = 8.575

wire [V_TIMER_BITS:0] v_counter;
wire [H_TIMER_BITS:0] h_counter;

// basically using this for telling the v_count, h_count, and visible range 
// will trigger on v_counter = 0 and cycle through blockram for this example
vga_timing_mod vga_timing_mod_1 (
	.CLK(CLK),
	.hsync(P1A3),
	.vsync(P1A4),
	.visible_range(visible_range),
	.v_counter(v_counter),
	.h_counter(h_counter)
);

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

// output color module

vga_colors_mod vga_colors_mod_1 (
	.red_out(P1A7),
	.green_out(P1A8),
	.blue_out(P1A9),
	.visible_range(visible_range),
	.data_in(ib_data_out[2:0])
);

initial begin
	ib_w_en = 0;
	ib_r_en = 1;
	ib_w_addr = 0;
	ib_r_addr = 0;
	ib_data_in = 0;
end

always @(posedge CLK) begin
	/* TODO: cycle through blockram values using counts as indices <14-06-20, klei> */

	case (h_counter)
		0: begin
			ib_r_addr <= 0;
		end
		default: begin
			// default just increment set the values
			ib_r_addr <= ib_r_addr + 1;
		end
	endcase


end

endmodule
