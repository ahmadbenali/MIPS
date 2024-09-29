`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:44 09/29/2023
// Design Name:   HA
// Module Name:   C:/AMD/first/hat.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hat;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	HA uut (
		.x(x), 
		.y(y), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

	   #2 x=0; y=1;
		#4 x=1; y=0;
		#6 x=1; y=1;
		
		#8 $finish;

	end
      
endmodule

