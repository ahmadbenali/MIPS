`timescale 1ns / 1ps


module adder 
(
input [31:0] pc,
output [31:0] pcplus4
);

assign pcplus4 = pc+32'b100; //true
//assign result = pcnext+32'b1;// true but with some error 

endmodule


