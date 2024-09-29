`timescale 1ns / 1ps

module HS_SSL(x,y,s,B);

input x,y;
output s,B;

wire z;

xor (s,x,y);
not (z,x);
and (B,z,y);


endmodule

