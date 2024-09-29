`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:44:40 10/12/2023
// Design Name:   TestMIPS
// Module Name:   C:/AMD/first/pppoo.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TestMIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pppoo;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire [31:0] WriteOnMem;
	wire [31:0] ALUresult;

	// Bidirs
	wire MemWrite;
	wire RegWrite;
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire [2:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	TestMIPS uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteOnMem(WriteOnMem), 
		.ALUresult(ALUresult), 
		.MemWrite(MemWrite), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.ALUControl(ALUControl)
	);

	initial 
	begin
		
	reset<=1 ; #22 ; reset<=0 ;
	
	end
	
	always
	begin
   
   CLK<=1 ; #5 ; CLK<=0 ;#5 ;
	
	end
      
endmodule

