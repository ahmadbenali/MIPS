`timescale 1ns / 1ps


module MUx2X1T;

	// Inputs
	reg [1:0] in;
	reg s;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUx2X1 uut (
		.in(in), 
		.s(s), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 2'b00;
		s = 0;

	end
	
	always #1 s=s+1;
	always #2 in=in+1;
	initial #20 $finish;
      
endmodule

