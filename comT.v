`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:46 10/01/2023
// Design Name:   Comparators
// Module Name:   C:/AMD/first/ComT.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparators
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ComT;

	// Inputs
	reg [7:0] x;
	reg [7:0] y;

	// Outputs
	wire eq;
	wire neq;
	wire lt;
	wire lte;
	wire gt;
	wire gte;

	// Instantiate the Unit Under Test (UUT)
	Comparators uut (
		.x(x), 
		.y(y), 
		.eq(eq), 
		.neq(neq), 
		.lt(lt), 
		.lte(lte), 
		.gt(gt), 
		.gte(gte)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

	   #2 x=8'b10000001;
		#3 y=8'b00001000;
		#10 $finish;

	end
      
endmodule

