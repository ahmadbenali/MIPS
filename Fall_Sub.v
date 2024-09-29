`timescale 1ns / 1ps

module Fall_Sub(x,y,Bi,s,Bo);

input x,y,Bi;
output s,Bo;

assign s=x^y^Bi;
assign Bo=(~x&y)|(~(x^y)&Bi);



endmodule


