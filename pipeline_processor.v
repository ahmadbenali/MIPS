`timescale 1ns / 1ps

module pipeline_processor
(
input CLK , reset ,
inout [31:0] instructionD ,ALUresultM , 
inout RegWriteW ,RegWriteE,
inout [31:0] resultW 
);
//&&&&&&&&&&&&&&&&  Fetch Stage &&&&&&&&&&
wire 	staIF ;
wire  StaID ; 
wire 	PCsrc ;
wire 	[31:0] pcBranch ;
wire 	[31:0] pcplus4D ;

 
fetch fetch_stage( staIF , StaID ,PCsrc , CLK , reset , pcBranch , pcplus4D , instructionD ) ;
//*******************************************************************************************


//&&&&&&&&&&&&&&&&&& Decode Stage &&&&&&&&&&&
wire  [4:0] WriteRegW;
wire 	MemToRegE ;
wire 	MemWriteE ;
wire 	[3:0]ALUcontrolE ;
wire 	ALUsrcE ;
wire 	RegDstE ;

wire  [31:0] ALUoutM ;
wire  [31:0]	WD3; 
wire 	forwardAbra ; //  from hazard unit 
wire  forwardBbra ; //  from hazard unit 

wire  [4:0] rsD , rtD; 
wire 	[31:0] SrcBE , SrcAE ; 
wire 	[31:0] sign1mmE ;
wire 	[4:0] rsE,rtE,rdE ;

wire	FlushE ; 

decode decode_stage
( 
CLK ,FlushE ,instructionD , pcplus4D , RegWriteW ,
ALUresultM , resultW, WriteRegW , forwardAbra , forwardBbra , // input 
RegWriteE , MemToRegE , MemWriteE , ALUcontrolE , ALUsrcE , RegDstE , // output 
SrcBE , SrcAE , sign1mmE , rsE , rtE , rdE , PCsrcD , pcBranchD,rsD , rtD 
 );
//*******************************************************************************************

Hazard_unit hazard(rtE , rsD , rtD ,staIF , StaID , FlushE);

//&&&&&&&&&&&&&&& Execution Stage &&&&&&&&&&&&&
wire [1:0]forwardAE ,forwardBE ; // forward for data depandance , from hazard unit 
wire 	[31:0] WriteDataM ; 
wire  [31:0] ALUresultM;
wire 	[4:0]WriteRegM ; // the destanation  
wire  [4:0] shamt ; 
wire  RegWriteM , MemToRegM , MemWriteM ;
assign shamt =instructionD[10:6];

Execution Execution_stage
( RegWriteE , MemToRegE , MemWriteE ,
ALUcontrolE , ALUsrcE , RegDstE  , 
SrcAE , SrcBE , rsE , 
rtE , rdE , forwardAE , 
forwardBE , resultW ,
sign1mmE ,shamt, ALUresultM ,
WriteDataM , WriteRegM ,
RegWriteM , MemToRegM , MemWriteM 
);
//*******************************************************************************************

Forwarding_unit forward(rsE , rtE ,WriteRegM , WriteRegW , RegWriteW , RegWriteM , forwardAE , forwardBE);


//&&&&&&&&&&&&&&& memory Stage &&&&&&&&&&&&&&
wire  [31:0] ReadDataMem;
wire  RegWriteW , MemToRegW ;
wire  [31:0] ALUresultW ; 
memory_stage RAM_stage( CLK ,MemWriteM ,RegWriteM,MemToRegM  , WriteRegM, WriteDataM ,  ALUresultM, RegWriteW , MemToRegW , WriteRegW ,ALUresultW ,ReadDataMem);
//*******************************************************************************************
 


//&&&&&&&&&&&&&&& write back Stage &&&&&&&&&&&&&&&&

Write_Back write_stage( ReadDataMem , ALUresultW , MemToRegW , resultW  );
//*******************************************************************************************
endmodule
