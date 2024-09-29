`timescale 1ns / 1ps


module MUx8X1(in,s,out);


input [7:0]in;
input [2:0]s;
output reg out;

always @(*)

if(s==1'd0)
out=in[0];
else if(s==3'd1)
out=in[1];
else if(s==3'd2)
out=in[2];
else if(s==3'd3)
out=in[3];
else if(s==3'd4)
out=in[4];
else if(s==3'd5)
out=in[5];
else if(s==3'd6)
out=in[6];
else
out=in[7];






endmodule
