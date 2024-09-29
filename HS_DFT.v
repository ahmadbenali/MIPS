`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:43:03 09/29/2023
// Design Name:   HS_DF
// Module Name:   C:/AMD/first/HS_DFT.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HS_DF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HS_DFT;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire s;
	wire B;

	// Instantiate the Unit Under Test (UUT)
	HS_DF uut (
		.x(x), 
		.y(y), 
		.s(s), 
		.B(B)
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

