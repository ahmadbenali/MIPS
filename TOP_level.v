`timescale 1ns / 1ps

module TOP_level

(
input CLK , reset ,

inout  [31:0] WriteDataMem , ALUresult , ReadDataMem   ,

inout [31:0] pc ,inst ,

inout MemWrite , RegWrite , RegDst , ALUSrc , MemtoReg ,

inout BEQ,BNE,zero,//**** FOR BRANCH

inout jump,JR,JAL,//**** FOR JUMP 

output [31:0] pcjump ,//**** FOR JUMP 

inout [31:0] WD3,

inout [3:0] ALUControl
);



//THE CPU 
Single_micro MIPS(CLK , reset ,

MemWrite , RegWrite , RegDst , ALUSrc , MemtoReg,
BEQ,BNE,zero,
jump,JR,JAL ,
ALUControl,inst , ReadDataMem  ,WD3 ,
pcjump,
ALUresult , WriteDataMem ,pc);

// THE PROGRAM MEMORY 
instructionFile ROM( pc ,inst );

// THE DATA MEMORY 
DataMemory RAM(CLK ,MemWrite ,ALUresult , WriteDataMem , ReadDataMem);

endmodule
