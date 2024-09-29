`timescale 1ns / 1ps
// unsigned 
/*
module Multiplier(

input [3:0]x,y,
output [7:0]z

    );

assign z=x*y;



endmodule
*/
// signed
module Multiplier(

input signed [3:0]x,y,
output signed [7:0]z

    );

assign z=x*y;



endmodule