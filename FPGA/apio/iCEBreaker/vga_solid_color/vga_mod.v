module vga_mod (
	input CLK,
	output hsync,
	output vsync,
	output red,
	output green,
	output blue
);

wire red, green, blue;

//localparam V_TIMER_BITS = 19; //math.log(14.2681231e-3/(1/12e6),2) = 17.385
localparam V_TIMER_BITS = 9; //trying new method which counts hlines
localparam H_TIMER_BITS = 9; //math.log(31.7775571e-6/(1/12e6),2) = 8.575

// HORIZONTAL TIMING (LINE),  
// Note that since we're running at 12MHz, only getting around half the potential resolution as if we were running at 25MHz
// this should be approximately good enough to display qqvga (320x240)
// resolution however
localparam H_VISIBLE_AREA = 305; //instead of 640, a fundamental limitation of the 12MHz clock
localparam H_FRONT_PORCH = 7; //really    7.62 NOTE choosing 7 instead of 8 works much better heuristically!
localparam H_SYNC_PULSE = 46; //really   45.76
localparam H_BACK_PORCH = 23; //really   22.88
localparam H_WHOLE_LINE = 381; //really 381.33

// VERTICAL TIMING (SCREEN) KEEPING FOR REFERENVE BUT NOT USED, USING INSTEAD
// the online values in units of hlines
/* localparam V_VISIBLE_AREA = 152532; //really 152532.27 */
/* localparam V_FRONT_PORCH = 4576; //really  4565.96 */ 
/* localparam V_SYNC_PULSE = 762; //really  762.66 */
/* localparam V_BACK_PORCH = 13346; //really 13346.57 */
/* localparam V_WHOLE_FRAME = 171217; //really 171217.48 */

// online values, in units of hlines
// sourdce https://timetoexplore.net/blog/arty-fpga-vga-verilog-01
localparam O_ACTIVE_LINES = 480;
localparam O_SCREEN = 525;

// derived values
localparam D_HS_START = H_VISIBLE_AREA + H_FRONT_PORCH;
localparam D_HS_END =  H_VISIBLE_AREA + H_FRONT_PORCH + H_SYNC_PULSE;

localparam D_VS_START = 480 + 10;
localparam D_VS_END = 480 + 10 + 2;

//custom values
localparam D_VISIBLE_WIDTH_HALF = H_VISIBLE_AREA/2; //really v_visible_area/h_wholeline
localparam D_VISIBLE_HEIGHT_HALF = O_ACTIVE_LINES/2; //really v_visible_area/h_wholeline


// define registers
reg [V_TIMER_BITS:0] v_counter = 0;
reg [H_TIMER_BITS:0] h_counter = 0;

// create always block only to cycle and sync h and v counters respectively
always @(posedge CLK) begin

	case (h_counter)
		H_WHOLE_LINE:  
		begin
			h_counter <= 0;

			if (v_counter < O_SCREEN) begin
				v_counter <= v_counter + 1;
			end
			else begin
				v_counter <= 0;
			end
		end
		default: 
		begin
			h_counter <= h_counter + 1;
		end
	endcase
end


// for tests divvy up the screen into red green and blue pixels
assign green = ( (h_counter < D_VISIBLE_WIDTH_HALF) & (v_counter < O_ACTIVE_LINES) );
assign blue = ( (h_counter < D_VISIBLE_WIDTH_HALF) & (v_counter < (O_ACTIVE_LINES/2)) );
assign red = ( 
	(h_counter > D_VISIBLE_WIDTH_HALF) & 
	(h_counter < H_VISIBLE_AREA) & 
	(v_counter < (O_ACTIVE_LINES)) 
);

// create rules for the timings when to pull hsync and vsync low
assign hsync = ~((h_counter >= D_HS_START) & (h_counter < D_HS_END));
assign vsync = ~((v_counter >= D_VS_START) & (v_counter < D_VS_END));

endmodule
