`timescale 1ns / 1ps
module Single_micro
(

input CLK , reset ,

inout MemWrite , RegWrite , RegDst , ALUSrc , MemtoReg, BEQ,BNE,zero,jump,JR,JAL,

inout [3:0]ALUControl ,

input [31:0] inst , ReadFromMem , // WriteBack , WriteReg

output [31:0]WD3,  // NEW

output [31:0] pcjump ,

output [31:0]  ALUresult , WriteDataMem  ,
output [31:0] pc 
	  
);


//THE CONTROL UNIT 
Control_Unit ControlUnit( inst[31:26] , inst[5:0]  , reset ,MemWrite , RegWrite , RegDst , ALUSrc , MemtoReg , BEQ,BNE,jump,JR,JAL,ALUControl);


// THE DATAPATH 
DataPath dpath( CLK , reset ,BEQ,BNE ,  RegWrite , RegDst , ALUSrc , MemtoReg , ALUControl , inst , ReadFromMem ,zero ,WD3 ,ALUresult , WriteDataMem ,pc,jump,JR,JAL,pcjump);





endmodule
