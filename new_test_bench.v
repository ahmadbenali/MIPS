`timescale 1ns / 1ps


module new_test_bench;

	// Inputs
	reg CLK;
	reg reset;

	// Bidirs
	wire [31:0] WriteDataMem;
	wire [31:0] ALUresult;
	wire [31:0] ReadDataMem;
	wire [31:0] pc;
	wire [31:0] inst;
	wire MemWrite;
	wire RegWrite;
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire BEQ;
	wire BNE;
	wire zero;
	wire jump;
	wire JR;
	wire JAL;
	wire [31:0] pcjump;
	wire [31:0] WD3;
	wire [3:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	TOP_level uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteDataMem(WriteDataMem), 
		.ALUresult(ALUresult), 
		.ReadDataMem(ReadDataMem), 
		.pc(pc), 
		.inst(inst), 
		.MemWrite(MemWrite), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.BEQ(BEQ),
		.BNE(BNE),
		.zero(zero),
		.jump(jump),
		.JR(JR),
		.JAL(JAL),
		.pcjump(pcjump),
		.WD3(WD3),
		.ALUControl(ALUControl)
	);
	/*
	always #2 CLK=!CLK;
	initial begin
 	// Initialize Inputs
		CLK = 0;
		reset = 1;

		#10 reset = 0;
		// Add stimulus here
	#200 $finish;
	end
      */
		initial begin 
		
		reset<=1; #22 ; reset<=0;
		
		end
		
		always begin
		
		CLK<=1; #5 ;CLK<=0; #5;
		
		end
		
		initial #1000 $finish;
endmodule

