`timescale 1ns / 1ps



module SR_T;

	// Inputs
	reg s;
	reg r;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	SR_latch uut (
		.s(s), 
		.r(r), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		r = 0;
      
		#2 s=1;
		#4 s=0 ; r=1;
		#6 s=1; r=0;
		#8 s=0; r=0;
		#10 $finish;
	end
      
endmodule

