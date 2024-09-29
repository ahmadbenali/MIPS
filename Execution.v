`timescale 1ns / 1ps

module Execution
(
// from control unit
input RegWriteE , MemToRegE , MemWriteE ,
input [3:0] ALUcontrolE ,
input ALUsrcE , RegDstE ,
//form decode stage
input [31:0] SrcAE , SrcBE , 

input [4:0] rsE , rtE , rdE , 

input [1:0] forwardAE ,forwardBE , // forward for data depandance

input [31:0] resultW , // forward from write back stage ,for forward

input [31:0] signlmmE , 
input [4:0] shamt , 

inout [31:0] ALUresultM , // ALU result from execution stage 
output [31:0] WriteDataM , 
output [4:0] WriteRegM , // the destanation  
output RegWriteM , MemToRegM , MemWriteM 

);
wire [31:0] ALUresultE;
wire [31:0] SrcAA ;
wire [31:0] SrcBB ; // output for mux between signimm and mux forwardBE
wire [31:0] SrcBBB ;

ALU alluu( ALUcontrolE  ,SrcAA , SrcBBB , shamt , ALUresultE); // without zero flag

MUx2X1 #(5) RegDst(rtE  , rdE , RegDstE ,WriteRegE);

MUx3X2 MUXforwardA(forwardAE , SrcAE ,resultW ,ALUresultM , SrcAA);
MUx3X2 MUXforwardB(forwardBE , SrcBE ,resultW ,ALUresultM , SrcBB);

MUx2X1 #(32) ALUsource(SrcBB  , signlmmE , ALUsrc ,SrcBBB);

assign WriteDataE=SrcBB;

//**********************************************************************

EX_MEM_Register EX_MEM
( CLK , RegWriteE , MemtoRegE , MemWriteE ,
ALUresultE , WriteDataE , WriteRegE ,RegWriteM , 
MemtoRegM , MemWriteM , ALUresultM ,WriteDataM ,WriteRegM);
//**********************************************************************



endmodule 
