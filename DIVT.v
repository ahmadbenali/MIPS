`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:04:37 10/04/2023
// Design Name:   Div
// Module Name:   C:/AMD/first/DIVT.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DIVT;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire [3:0] z;

	// Instantiate the Unit Under Test (UUT)
	Div uut (
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

	   #2 x=4'b0111; y=4'b0010;
		
		#4 $finish;

	end
      
endmodule

