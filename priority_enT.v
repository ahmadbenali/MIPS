`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:55:57 10/01/2023
// Design Name:   priority_encoder4X2
// Module Name:   C:/AMD/first/priority_enT.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priority_encoder4X2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module priority_enT;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [1:0] out;
	wire z;

	// Instantiate the Unit Under Test (UUT)
	priority_encoder4X2 uut (
		.in(in), 
		.out(out), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		in = 0;
      #2 in=4'b0001;
		#4 in=4'b001x;
		#6 in=4'b01xx;
		#8 in=4'b1xxx;
		#10 $finish;

	end
      
endmodule

