`timescale 1ns / 1ps


module addt;

	// Inputs
	reg CLK;
	reg reset;
	reg [31:0] pc;

	// Outputs
	wire [31:0] pcnext;

	// Instantiate the Unit Under Test (UUT)
	add uut (
		.CLK(CLK), 
		.reset(reset), 
		.pc(pc), 
		.pcnext(pcnext)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;
		pc = 0;

		#2 CLK=1;
		#6 $finish;
	end
      
endmodule

