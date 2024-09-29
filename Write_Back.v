`timescale 1ns / 1ps

module Write_Back
(

input [31:0] ReadDataMem, ALUresultW ,
input MemtoRegW ,

output [31:0] ResultW 
);


MUx2X1 #(32) MemoryToReg(ReadDataMem  , ALUresultW , MemtoRegW ,ResultW);

endmodule
