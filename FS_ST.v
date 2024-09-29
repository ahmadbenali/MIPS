`timescale 1ns / 1ps


module FS_ST;

	// Inputs
	reg x;
	reg y;
	reg Bi;

	// Outputs
	wire s;
	wire Bo;

	// Instantiate the Unit Under Test (UUT)
	FS_SL uut (
		.x(x), 
		.y(y), 
		.Bi(Bi), 
		.s(s), 
		.Bo(Bo)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		Bi = 0;
	
	end
	
	always #4 x=x+1;
	always #2 y=y+1;
	always #1 Bi=Bi+1;
   initial #20 $finish;
	
endmodule

