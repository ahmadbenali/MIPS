`timescale 1ns / 1ps

module deMUx1X2(in,s,out);

input in,s;
output [1:0] out;

assign out[0]=~s&in;
assign out[1]=s&in;


endmodule
