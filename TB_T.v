`timescale 1ns / 1ps


module TB_T;

	// Inputs
	reg [3:0] in;
	reg E;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	TristateBuffer uut (
		.in(in), 
		.E(E), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		E = 0;

		#2 in=4'b1111;
		#4 E=0;
		#6 E=1;
      #8 $finish;
	end
      
endmodule

