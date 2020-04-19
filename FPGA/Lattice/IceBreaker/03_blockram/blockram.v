
module blockram (
  output [4:0] leds,
  input clk
);

reg [8:0] raddr = 8'd1;

SB_RAM40_4K #(
  .INIT_0(256'h00000000000000000000000000000000000000000000000000000000_44_33_22_11),
  .WRITE_MODE(1),
  .READ_MODE(1)
) ram40_4k_512x8 (
  .RDATA(leds),
  .RADDR(raddr),
  .RCLK(clk),
  .RCLKE(1'b1),
  .RE(1'b1),
  .WADDR(8'b0),
  .WCLK(1'b0),
  .WCLKE(1'b0),
  .WDATA(8'b0),
  .WE(1'b0)
);

endmodule
