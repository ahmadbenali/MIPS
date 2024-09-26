`timescale 1ns / 1ps

module pipeline(

input CLK , reset ,

inout PCsrcD , jump , staIF ,  StaIF_ID_reg ,
inout [31:0] pcjump , 

output [31:0] pcplus4F_reg , instructionF_reg ,
inout  [31:0] pcplus4D , instructionD ,
output [31:0] pc , 
output [31:0] ReadDataMem ,
output forwardAD , forwardBD ,
// output from decode stage to test 
output [31:0] SrcAE , SrcBE , signImmE , 
output [4:0] A3 , 
output [31:0] WD3, 
output [3:0] ALUcontrolE ,
output [31:0] pcBranchD ,
output RegWriteW , 
output [31:0] SrcAD , SrcBD ,
// output to test hazard 
output FlushE ,
output [4:0] rtE ,rsD ,rtD ,rsE,WriteRegW,

//output to test forward 
output  [1:0] forwardAE , forwardBE ,
output  [1:0] forwardAb , forwardBb ,
output  BEQ , BNE ,

// output to test execution stage 
output [31:0] ALUresultM ,
output [31:0] WriteDataM , ALUresult,
output [4:0] WriteRegM ,
output [31:0] SrcBBBB,SrcAAA,
output [4:0] WriteRegE ,


//output for memory stage 

output MemWriteM , 



//output test write back
output  MemToRegW ,
output [31:0] resultW ,
output [31:0] ReadDataMemW , ALUresultW ,sorbranch1 ,sorbranch2 , SrcAA , SrcBBB

);

//***************************** Fetch stage***************************************************
wire PCsrcD , jump , staIF ,  StaIF_ID_reg ;
wire [31:0] pcjump , pcBranchD;


fetch fetch_stage(
CLK ,reset , jump , staIF , PCsrcD , StaIF_ID_reg , pcjump , pcBranchD ,pcplus4F_reg ,instructionF_reg, pc , pcplus4D , instructionD );

//**************************************** End Fetch stage ***********************************************************


//****************************************  Decode Stage ***********************************************************

wire FlushE ;
//wire	RegWriteW;//signal for writr back

//wire  [31:0] ALUresultM ;//forward for branch

//wire  [31:0]	WD3; // from write back mux

wire 	[1:0]forwardAb , forwardBb ; //  from hazard unit 




wire RegWriteE , MemToRegE , ALUsrcE ,RegDstE , MemReadE , MemWriteE ;
wire [3:0] ALUcontrolE ;

wire [31:0] signImmE ;
wire [31:0] WD3 ;
wire [4:0] A3 ;

assign A3 = WriteRegW;
assign WD3 =resultW;

wire [4:0]  rdE ;
wire [31:0] SrcAD , SrcBD ;
decode decode_stage
( 
CLK , reset , FlushE ,instructionD , pcplus4D, A3 , WD3 ,RegWriteW ,
ALUresult ,  ALUresultM ,forwardAD , forwardBD ,forwardAb , forwardBb ,BEQ , BNE , // input 

RegWriteE , MemToRegE , MemWriteE , MemReadE , ALUsrcE , RegDstE ,ALUcontrolE , // output 
SrcAE , SrcBE , signImmE , rsE , rtE , rdE , rsD , rtD , SrcAD , SrcBD ,pcjump , jump , PCsrcD , pcBranchD , sorbranch1 , sorbranch2 
 );
 
//**************************************** End Decode Stage ***********************************************************

//**************************************** Hazard Unit ***********************************************************
Hazard_unit hazard(MemReadE ,reset,rtE , rsD , rtD , staIF , StaIF_ID_reg , FlushE);
//**************************************** End Hazard Unit ***********************************************************


//**************************************** Execute Stage ***********************************************************
wire RegWriteM , MemToRegM , MemReadM ;
wire [31:0] ALUresultin ;
wire [4:0] shamt ;
assign shamt = instructionD[10:6];
wire [1:0] forwardAE , forwardBE;

Execution Execution_stage
(
// input 
CLK , reset , 
RegWriteE , MemToRegE , MemWriteE ,MemReadE, ALUsrcE , RegDstE ,ALUcontrolE , 
SrcAE , SrcBE , signImmE ,resultW, rsE , rtE , rdE , shamt , ALUresultin,

forwardAE , forwardBE ,
ALUresult, // from hazard unit to ALU 

//output 
RegWriteM , MemToRegM , MemWriteM ,MemReadM,
ALUresultM , // inout just ALUresultM
WriteDataM,WriteRegM ,WriteRegE,SrcAA,SrcBBB

);

assign ALUresultin=ALUresultM;
//**************************************** End Execute Stage ***********************************************************

//**************************************** forward unit ***********************************************************
wire forwardAD , forwardBD ;

Forwarding_unit forward( 
reset , rsD , rtD, rsE , rtE ,RegWriteE ,
WriteRegE , WriteRegM ,//input

WriteRegW , RegWriteW , RegWriteM ,forwardAD , forwardBD , //input

forwardAE , forwardBE ,forwardAb , forwardBb);//output

//**************************************** End forward unit ***********************************************************


//**************************************** Memory Stage ***********************************************************
//wire MemToRegW;

memory_stage RAM_stage( CLK , reset , MemReadM ,

RegWriteM , MemToRegM , MemWriteM ,  WriteDataM , ALUresultM , WriteRegM,ReadDataMem,//input
 
ReadDataMemW , ALUresultW , WriteRegW , RegWriteW , MemToRegW);//output 
//****************************************End Memory Stage ***********************************************************


//****************************************write back Stage ***********************************************************
Write_Back write_stage( ReadDataMemW , ALUresultW , MemToRegW , resultW  );

endmodule 