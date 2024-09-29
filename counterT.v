`timescale 1ns / 1ps


module counterT;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	Counter uut (
		.CLK(CLK), 
		.reset(reset), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;

	end
	
	always #1 CLK=CLK+1;
	always #30 reset=reset+1;
	initial #200 $finish; 
      
endmodule

