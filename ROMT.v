`timescale 1ns / 1ps


module ROMT;

	// Inputs
	reg [2:0] AD;

	// Outputs
	wire [31:0] Data;

	// Instantiate the Unit Under Test (UUT)
	ROM uut (
		.AD(AD), 
		.Data(Data)
	);

	initial begin
		// Initialize Inputs
		AD = 0;

	end
      always #2 AD=AD+1;
		initial #20 $finish;
endmodule

