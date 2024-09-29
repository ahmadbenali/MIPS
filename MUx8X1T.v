`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:31 09/30/2023
// Design Name:   MUx8X1
// Module Name:   C:/AMD/first/MUx8X1T.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUx8X1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUx8X1T;

	// Inputs
	reg [7:0] in;
	reg [2:0] s;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUx8X1 uut (
		.in(in), 
		.s(s), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 8'b10101010;
		s = 0;

	end
	
	always #1 s=s+1;
	initial #200 $finish;
      
endmodule

