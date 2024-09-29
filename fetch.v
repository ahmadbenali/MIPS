`timescale 1ns / 1ps

module fetch
(
input staIF , StaID ,PCsrc, // stall for pc // mux enable for pc , pcplus or jump or branch  
input CLK ,reset, 
input [31:0] pcBranch , 


output [31:0] pcplus4D , 
output [31:0] instructionD	
 
);

wire [31:0] pcplus4;
wire [31:0] pc ;
wire [31:0] nextpc;
wire [31:0] instruction;

// THE PC 

MUx2X1 #(32) MuxPcValue(pcplus4 , pcBranch , PCsrc ,nextpc);
ProgramCounter Pc(CLK ,reset ,staIF, nextpc , pc);
adder addpc(pc ,pcplus4);


// THE PROGRAM MEMOEY 
instructionFile ROM( pc ,instruction );


//
IF_ID_Register IF_ID(CLK , StaID , PCsrc  , instruction , pcplus4 , instructionD , pcplus4D ) ; 


endmodule
