`timescale 1ns / 1ps


module RegisterT;

	// Inputs
	reg [3:0] D;
	reg sh;
	reg  CLK;

	// Outputs
	wire [3:0] Q;
   wire [3:0] Q_next;
	// Instantiate the Unit Under Test (UUT)
	Registers uut (
		.D(D), 
		.sh(sh),
		.CLK(CLK), 
		.Q(Q),
		.Q_next(Q_next)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		sh=0;
		CLK = 0;

	end
	always #1 CLK=CLK+1;
	always #4 D=D+1;
   initial #100 $finish;
endmodule

