`timescale 1ns / 1ps

module DataPath
(
input CLK , reset ,BEQ,BNE,

input  RegWrite , RegDst , ALUSrc ,MemtoReg, 

input [3:0]ALUControl,

input [31:0] inst ,  ReadFromMem ,

inout zero ,

inout [31:0] WD3,

output [31:0]  ALUresult , WriteDataMem ,
output  [31:0] pc ,

input jump , JR ,JAL,

output [31:0] pcjump 

);

//WIRE FOR REGISTER FILE 
wire [4:0] shamt = inst[10:6];
wire [4:0] A1=inst[25:21];
wire [4:0] A2=inst[20:16];
wire [4:0] A3;  // for the MUX

//WIRE FOR PC
wire [31:0] pcplus4;
wire pcsrc ;
assign pcjump={pc[31:28],inst[25:0],2'b00};
assign pcsrc = ou1|ou2 ; 

//WIRE FOR ALU 
wire [31:0] rd1, rd2 , signlmm , SrcB , SrcA;  // for alu 

//WIRE FOR BRANCH
wire [31:0] shiftsignimm;
wire ou1;
wire ou2;
assign ou1 = BEQ&zero ; 
assign ou2 = BNE&~(zero) ;




wire [31:0] pcBranch;// pc=pc+4+4*imm
wire [31:0] pcOrBranch;
wire [31:0] nextpc;



//for the barnch
wire [31:0] finaljump;
ShiftUnit shUnit(signlmm , shiftsignimm);
pcabra pcAddBranch(pcplus4 , shiftsignimm , pcBranch);
MUx2X1 #(32) muxpcBranch(pcplus4 , pcBranch, pcsrc ,pcOrBranch);

//the MUX to chose the value for pc
MUx2X1 #(32) muxjump(pcjump , SrcA , JR , finaljump);
MUx2X1 #(32) MuxPcValue(pcOrBranch , finaljump , jump, nextpc);


//for the pc
ProgramCounter Pc(CLK ,reset , nextpc , pc);
adder addpc(pc ,pcplus4);
//******************************************************





// Register File

MUx2X1 #(5) regmux(A2 , inst[15:11] , RegDst , A3);

RegisterFile Rf( CLK , RegWrite , A1 , A2 , A3 , WD3 , JAL , rd1 , rd2);

Sign_Extend se( inst[15:0] , signlmm );

MUx2X1 #(32) srcB( rd2 , signlmm , ALUSrc , SrcB );

assign SrcA = rd1 ; 

//********************************************************




//   ALU

ALU alluu( ALUControl , zero ,SrcA , SrcB , shamt , ALUresult);

//********************************************************


//to Write on the RAM (memeory)
assign WriteDataMem = rd2;


// MUX Read from memory OR from ALU
wire [31:0] WriteBack ;

MUx2X1 #(32) MemToReg( ALUresult , ReadFromMem , MemtoReg , WriteBack);

MUx2X1 #(32) writeBack( WriteBack , pcplus4 , JAL , WD3);

endmodule 