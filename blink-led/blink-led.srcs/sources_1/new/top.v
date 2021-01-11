`timescale 1ns / 1ps

module top(
    input wire CLK100MHZ,
    output wire led
    );
    
clock_divider wrapper (
    .CLK100MHZ(CLK100MHZ),
    .divided_clk(led)
    );
    
endmodule
