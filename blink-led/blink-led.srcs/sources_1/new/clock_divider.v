`timescale 1ns / 1ps

module clock_divider(
    input wire CLK100MHZ,
    output reg divided_clk=0
    );
    

localparam div_value = 100000000; //100MHZ equals to 10ns => multiply period by 10^8 to get one second 
integer counter_value = 0;

always@ (posedge CLK100MHZ)
begin
    if (counter_value == div_value)
        counter_value <= 0;
    else
        counter_value <= counter_value + 1;
end

always@ (posedge  CLK100MHZ)
begin
    if (counter_value == div_value)
        divided_clk <= ~divided_clk;
    else
        divided_clk <= divided_clk;
end
endmodule
