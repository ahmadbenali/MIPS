`timescale 1ns / 1ps


module SignT;

	// Inputs
	reg [15:0] instruction;

	// Outputs
	wire [31:0] SignImm;

	// Instantiate the Unit Under Test (UUT)
	Sign_Extend uut (
		.instruction(instruction), 
		.SignImm(SignImm)
	);

	initial begin
		// Initialize Inputs
		instruction = 0;

		#2 instruction=16'h2AAB;
      #10 $finish;
	end
      
endmodule

