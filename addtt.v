`timescale 1ns / 1ps


module addtt;

	// Inputs
	reg [15:0] x;
	reg [15:0] y;
	reg  ci;

	// Outputs
	wire [15:0] s;

	// Instantiate the Unit Under Test (UUT)
	add16 uut (
		.x(x), 
		.y(y), 
		.ci(ci), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		ci = 0;

	   #2 x=16'h2000; y=16'h3000; 
      #10 $finish;
	end
      
endmodule

