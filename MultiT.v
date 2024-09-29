`timescale 1ns / 1ps


module MultiT;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire [7:0] z;

	// Instantiate the Unit Under Test (UUT)
	Multiplier uut (
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

	end
	always #2 x=x-1;
	always #1 y=y+1;
	initial #100 $finish;
      
endmodule

