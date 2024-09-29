`timescale 1ns / 1ps

module HS_B(s,B,x,y);

input x,y;
output reg s,B;

always @(*)
begin 
s=x^y;
B=(~x)&y;
end


endmodule
