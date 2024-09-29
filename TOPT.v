`timescale 1ns / 1ps


module TOPT;

	// Inputs
	reg CLK;
	reg reset;

	// Bidirs
	wire [31:0] WriteDataMem;
	wire [31:0] ALUresult;
	wire MemWrite;

	// Instantiate the Unit Under Test (UUT)
	TOP_level uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteDataMem(WriteDataMem), 
		.ALUresult(ALUresult), 
		.MemWrite(MemWrite)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;

      #2 reset = 1 ;
		#4 reset =0 ;
		
		#5 CLK =1 ;
		#15 CLK =1;
		#20 $finish ;
	end
      
endmodule

