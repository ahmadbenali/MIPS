`timescale 1ns / 1ps

module ROMTest;

	// Inputs
	reg [31:0] pc;
	reg reset;

	// Outputs
	wire [31:0] inst;

	// Instantiate the Unit Under Test (UUT)
	instructionFile uut (
		.pc(pc), 
		.reset(reset), 
		.inst(inst)
	);

	initial begin
		
		pc = 0;
		reset = 0;
     #4 pc=32'b100;
	  #8 pc=pc+32'b100;
	  #15 $finish;

	end
      
endmodule

