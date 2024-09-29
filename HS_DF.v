`timescale 1ns / 1ps

module HS_DF(x,y,s,B);

input x,y;
output s,B;



assign s=x^y;
assign B=(~x)&y;


endmodule

