`timescale 1ns / 1ps


module aaattt;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire MemWrite;
	wire RegWrite;
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;

	// Bidirs
	wire [31:0] WriteDataMem;
	wire [31:0] ALUresult;
	wire [31:0] ReadDataMem;
	wire [31:0] pc;

	// Instantiate the Unit Under Test (UUT)
	TOP_level uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteDataMem(WriteDataMem), 
		.ALUresult(ALUresult), 
		.ReadDataMem(ReadDataMem), 
		.pc(pc), 
		.MemWrite(MemWrite), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg)
	);

	initial 
	begin
	  
	  reset <=1; #22 ;reset<=0 ;
	  
	end
      
		always
		begin 
		CLK <=1 ;#5 ; CLK<=0;#5;
		end
		
		initial #200 $finish;
      
endmodule

