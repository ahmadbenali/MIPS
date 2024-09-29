`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:49:57 09/29/2023
// Design Name:   HS_B
// Module Name:   C:/AMD/first/HS_BT.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HS_B
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HS_BT;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire s;
	wire B;

	// Instantiate the Unit Under Test (UUT)
	HS_B uut (
		.s(s), 
		.B(B), 
		.x(x), 
		.y(y)
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

