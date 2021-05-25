`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2021 12:55:48 AM
// Design Name: 
// Module Name: clock_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock_divider(
    input wire clk,
    output reg divided_clk=0
    );
    

localparam div_value = 10000; //100MHZ equals to 10ns => multiply period by 10^8 to get one second 
integer counter_value = 0;

always@ (posedge clk)
begin
    if (counter_value == div_value)
        counter_value <= 0;
    else
        counter_value <= counter_value + 1;
end

always@ (posedge  clk)
begin
    if (counter_value == div_value)
        divided_clk <= ~divided_clk;
    else
        divided_clk <= divided_clk;
end
endmodule