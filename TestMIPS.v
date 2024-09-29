`timescale 1ns / 1ps



module testMIPS;

	// Inputs
	reg CLK;
	reg reset;


	// Bidirs
	
	wire [31:0] WriteDataMem;
	wire [31:0] ALUresult;
	wire [31:0] ReadDataMem;
	wire [31:0] pc;
	wire [31:0] inst;
	wire MemWrite ;
	wire RegWrite ;
   wire RegDst ;
	wire ALUSrc ;
   wire MemtoReg;
	wire [3:0] ALUControl ;
	
	// Instantiate the Unit Under Test (UUT)
	TOP_level uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteDataMem(WriteDataMem), 
		.ALUresult(ALUresult), 
		.ReadDataMem(ReadDataMem), 
		.pc(pc) ,
		.inst(inst),
		.MemWrite(MemWrite) ,
	   .RegWrite (RegWrite),
      .RegDst (RegDst),
	   .ALUSrc (ALUSrc),
      .MemtoReg (MemtoReg),
		.ALUControl(ALUControl)
	);

	initial 
	begin
	CLK <= 0;
	reset<=1; #22; reset<=0;
	end
	
	always 
	#3 CLK = !CLK;
//	begin 
//	CLK<=1;#10;CLK<=0;#5;
//	end
	
	initial #300 $finish;
      
endmodule

