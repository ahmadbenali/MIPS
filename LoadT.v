`timescale 1ns / 1ps


module LoadT;

	// Inputs
	reg [3:0] D;
	reg CLK;
	reg L;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	RegisterWithLoad uut (
		.D(D), 
		.CLK(CLK), 
		.L(L), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		CLK = 0;
		L = 0;

		#2 D=4'b1111;
		#3 CLK=1; L=1;
		#5 CLK=0; L=1;
		#6 CLK=1; L=0;
		#6 $finish;
		
		
	end
      
endmodule

