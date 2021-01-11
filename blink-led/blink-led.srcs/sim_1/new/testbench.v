`timescale 1ns / 1ps

module testbench;

reg CLK100MHZ = 0;
wire divided_clk;

//wrapper
clock_divider UUT (
.CLK100MHZ(CLK100MHZ),
.divided_clk(divided_clk)
);

always #5 CLK100MHZ = ~CLK100MHZ;   //every 5ns the signal flips around => 10 ns period

endmodule
