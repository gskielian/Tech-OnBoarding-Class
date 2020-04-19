`include "blinky_import.v"
// module description
// demonstration of importing modules
// 1. one needs to `include the module as shown above
// 2. one needs to map each of the inputs/outputs of the
//    imported module to that of the top module
// 3. one need _not_ include other files in the Makefile

module multi_module (
	input CLK,
	input  BTN1, BTN2, BTN3,
	output LED1, LED2, LED3, LED4, LED5
);


// showing how to import multiple modules
// feel free to comment out any of the following for verification of patterns
blinky_import blinky_1 (.clk(CLK),.led(LED1));
blinky_import blinky_2 (.clk(CLK),.led(LED2));
//blinky_import blinky_3 (.clk(CLK),.led(LED3));
blinky_import blinky_4 (.clk(CLK),.led(LED4));
blinky_import blinky_5 (.clk(CLK),.led(LED5));

endmodule

