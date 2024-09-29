`timescale 1ns / 1ps



module adder4Test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg ci;

	// Outputs
	wire [3:0] s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	adder_4bit uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0000;
		b = 4'b0000;
		ci = 0;

	end
      always #1 b=b+1'b1;
		always #2 a=a+1'b1;
		initial #100 $finish;
		
		
endmodule

