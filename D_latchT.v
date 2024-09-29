`timescale 1ns / 1ps

module D_latchT;

	// Inputs
	reg D;
	reg E;

	// Outputs
	wire Q;
	wire Q_bar;

	// Instantiate the Unit Under Test (UUT)
	D_latch uut (
		.D(D), 
		.E(E), 
		.Q(Q), 
		.Q_bar(Q_bar)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		E = 0;
		
		#2 D=1;
		#4 E=1;
		#6 D=0;
		#8 $finish;

	end
      
endmodule

