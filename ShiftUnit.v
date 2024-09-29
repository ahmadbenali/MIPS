`timescale 1ns / 1ps

module ShiftUnit 
(

input [31:0]in1 , 
output [31:0] ou1

);


assign ou1=in1<<2;

endmodule
