`timescale 1ns / 1ps

module D_FlipFlop(

input D,
input CLK,
output reg Q

);

/*always @(negedge CLK)
 begin

    Q = D;
 
 end

*/

//clkdiv clk1(CLK,clkn1);

always @(posedge CLK)
 begin

    Q = D;
 
 end

endmodule


