`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:21 09/30/2023
// Design Name:   FA_using_2HA
// Module Name:   C:/AMD/first/twoHA.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA_using_2HA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twoHA;

	// Inputs
	reg a;
	reg b;
	reg ci;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	FA_using_2HA uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ci = 0;


	end
   always #4 a=a+1;
	always #2 b=b+1;
	always #1 ci=ci+1;
   initial #20 $finish;
endmodule

