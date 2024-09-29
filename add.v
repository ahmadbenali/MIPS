`timescale 1ns / 1ps

module add 
(
input [31:0] pcnext,
output [31:0] result
);

assign result = pcnext+32'b100;

endmodule
