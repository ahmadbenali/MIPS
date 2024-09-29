`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:08:39 12/30/2023
// Design Name:   pipeline_processor
// Module Name:   C:/AMD/first/pipeline_test_bench.v
// Project Name:  first
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipeline_test_bench;

	// Inputs
	reg CLK;
	reg reset;

	// Bidirs
	wire [31:0] instruction;
	wire RegWriteW;

	// Instantiate the Unit Under Test (UUT)
	pipeline_processor uut (
		.CLK(CLK), 
		.reset(reset), 
		.instruction(instruction), 
		.RegWriteW(RegWriteW)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

