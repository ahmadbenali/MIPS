`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:46:53 10/01/2023
// Design Name:   decodEnable2X4
// Module Name:   C:/AMD/first/Enable2X4T.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decodEnable2X4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Enable2X4T;

	// Inputs
	reg [1:0] in;
	reg E;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	decodEnable2X4 uut (
		.in(in), 
		.E(E), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		E = 0;

	end
      always #1 in=in+1;
		always #4 E=E+1;
		initial #20 $finish;
endmodule

