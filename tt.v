`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:52:08 09/30/2023
// Design Name:   FAA
// Module Name:   C:/AMD/first/tt.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FAA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tt;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;
	reg ci;

	// Outputs
	wire [3:0] s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	FAA uut (
		.x(x), 
		.y(y), 
		.ci(ci), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		x = 4'b0000;
		y = 4'b0000;
		ci = 0;

	end
      always #1 x=x+1'b1;
		always #2 y=y+1'b1;
		initial #100 $finish;
		
endmodule

