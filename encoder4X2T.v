`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:15:39 10/01/2023
// Design Name:   encoder4X2
// Module Name:   C:/AMD/first/encoder4X2T.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder4X2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder4X2T;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [1:0] out;

	// Instantiate the Unit Under Test (UUT)
	encoder4X2 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
      #2 in=4'b0001;
		#4 in=4'b0010;
		#6 in=4'b0100;
		#8 in=4'b1000;
		#10 $finish;
	end
  
		 
endmodule

