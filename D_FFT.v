`timescale 1ns / 1ps



module D_FFT;

	// Inputs
	reg D;
	reg CLK;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_FlipFlop uut (
		.D(D), 
		.CLK(CLK), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		CLK = 0;

	end
      always #1 CLK=CLK+1;
		always #2 D=D+1;
		initial #20 $finish;
		
		
endmodule

