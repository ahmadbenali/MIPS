`timescale 1ns / 1ps

module decode
(

input CLK , FlushE , 
input [31:0] instructionD , 
input [31:0] pcplus4D , 
//signals from control unit
input RegWriteW , 
input [31:0] ALUresultM ,resultW ,
input [4:0] WriteRegW , 
//forward signals
input forwardAbra ,forwardBbra ,// this signlas for forward to the decode stage for branch inst , when ther a RAW




output RegWriteE , MemToRegE , MemWriteE ,
output [3:0] ALUcontrolE ,
output ALUsrcE , RegDstE ,
output [31:0] SrcAE , SrcBE , signImmE ,
output [4:0] rsE , rtE , rdE  ,
output reg PCsrcD , 
output [31:0] pcBranchD ,
output [4:0] rsD , rtD 
);

//WIRE FOR REGISTER FILE 
wire [4:0] shamt = instructionD[10:6];
wire [4:0] A1=instructionD[25:21];
wire [4:0] A2=instructionD[20:16];
wire [4:0] A3;  // for the MUX
wire [31:0] rd1, rd2 , signlmm , SrcB , SrcA ,sign1mmD;
wire [4:0] rs,rt,rd ;

//*********************************************


wire 	[31:0]sorbranch1; // soruce branch 1 for mux to comper
MUx2X1 #(32) MUXcom1(rd1 , ALUresultM , forwardAbra ,sorbranch1);

wire	[31:0]sorbranch2; // soruce branch 2 for mux to comper
MUx2X1 #(32) MUXcom2(rd2 , ALUresultM , forwardBbra ,sorbranch2);




assign rsD =rs;
assign rtD =rt;
assign rs=A1;
assign rt=A2;
assign rd=instructionD[15:11];
assign SrcA =rd1 ;
assign SrcB =rd2 ;
assign shamt = instructionD[10:6];
assign WD3 = resultW;
assign A3 = WriteRegW ;





wire BEQ , BNE ;

wire [31:0] shiftsignimm ; // after multiy by 4


assign signlmmD = signlmm;


//register file 
RegisterFile Rf( CLK , RegWrite , A1 , A2 , A3 , WD3 , JAL , rd1 , rd2);


//sign extend
Sign_Extend se( instructionD[15:0] , signlmm );


// FOR branch
ShiftUnit shUnit(signlmm , shiftsignimm); // 4 X Imm

pcabra pcAddBranch(pcplus4D , shiftsignimm , pcBranchD); // pcplus4 + shiftsignimm

always @(BEQ , BNE)
begin

	if(sorbranch1 == sorbranch2) 
		PCsrcD = 1 ;
	else PCsrcD = 0 ;
	
	if(sorbranch1 != sorbranch2)
		PCsrcD = 1 ;
	else PCsrcD = 0 ;
	
	
		
end
//*****************************************************************************************************************

wire MemWriteD , RegWriteD , RegDstD ; 
wire ALUsrcD , MemToRegD  ;
wire [3:0] ALUcontrolD ; 


Control_Unit ControlUnit( 
instructionD[31:26] , instructionD[5:0]  , reset , 

MemWriteD , RegWriteD , RegDstD , 

ALUsrcD , MemToRegD , BEQ, BNE ,

ALUcontrolD
);
//*****************************************************************************************************************
ID_EX_Register ID_EX
( CLK , FlushE , RegWriteD , MemToRegD , MemWriteD ,ALUcontrolD ,
 ALUsrcD , RegDstD ,rs , rt , rd,
 RegWriteE , MemToRegE , MemWriteE , ALUcontrolE ,
 ALUsrcE , RegDstE ,SrcAE , SrcBE , signImmE ,
 rsE , rtE , rdE
 );
endmodule
