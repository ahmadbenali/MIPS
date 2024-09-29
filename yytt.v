`timescale 1ns / 1ps


module yytt;

	

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.result(result)
	);

	initial begin
		// Initialize Inputs
    #10 $finish ;

	end
     
		
endmodule

