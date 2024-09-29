`timescale 1ns / 1ps


module deMUx1X2T;

	// Inputs
	reg in;
	reg s;

	// Outputs
	wire [1:0] out;

	// Instantiate the Unit Under Test (UUT)
	deMUx1X2 uut (
		.in(in), 
		.s(s), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		s = 0;
		
	end
	always #1 s=s+1;
	always #2 in=in+1;
	initial #10 $finish; 
      
endmodule

