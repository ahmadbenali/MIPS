`timescale 1ns / 1ps

module Control_Unit(

input [5:0] op,funct,    

input reset ,

output  memWrite , regwrite , regdst ,ALUSrc ,MemtoReg ,

output BEQ,BNE,

output [3:0] ALUControl 

);


wire [1:0]aluop ;


 
// THE MAIN DECODER
mainDecoder MainDecoder( op  , reset ,MemtoReg , memWrite , ALUSrc , regdst , regwrite , BEQ,BNE ,  aluop);

//THE ALU DECODER
ALUdecoder ALUecoder(funct  ,reset,aluop , ALUControl);



endmodule
