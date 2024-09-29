`timescale 1ns / 1ps


module xxx;

	// Inputs
	reg [31:0] pcnext;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.pcnext(pcnext), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		pcnext = 0;

		

	end
      always #2 pcnext=pcnext+1;
		initial #10 $finish ;
endmodule

