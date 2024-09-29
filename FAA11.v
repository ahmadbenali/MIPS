`timescale 1ns / 1ps

module FAA(x,y,ci,s,co);

input x,y;
input ci;
output  s;
output co;


assign {co,s}=x+y+ci;


endmodule
