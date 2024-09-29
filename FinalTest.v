`timescale 1ns / 1ps

module FinalTest;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire [31:0] WriteOnMem;
	wire [31:0] ALUresult;

	// Instantiate the Unit Under Test (UUT)
	TestMIPS uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteOnMem(WriteOnMem), 
		.ALUresult(ALUresult)
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

