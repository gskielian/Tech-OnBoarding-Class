// module description: 
// completely parallel logic

module top (
	input  BTN1, BTN2, BTN3,
	output LED1, LED2, LED3, LED4, LED5
);


// Simple Logic with Buttons and LEDs
	assign LED1 = BTN1 && BTN2;
	assign LED2 = BTN1 || BTN2;
	assign LED3 = BTN1 ^ BTN3;
	assign LED4 = !BTN3;
	assign LED5 = BTN1 && BTN2 && BTN3;


endmodule

