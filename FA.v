`timescale 1ns / 1ps

module FA(x,y,ci,s,co);

input x,y,ci;
output s,co;
/*
assign s=(x^y)^ci;
assign co=(x&y)|((x^y)&ci);
*/

assign {co,s}=x+y+ci;

endmodule
