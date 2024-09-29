`timescale 1ns / 1ps


module UniversalT;

	// Inputs
	reg [1:0] s;
	reg CLK;
	reg Clear;
	reg [3:0] value;
	reg MSB;
	reg LSB;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	Universa_Shift_Register uut (
		.s(s), 
		.CLK(CLK), 
		.Clear(Clear), 
		.value(value), 
		.MSB(MSB), 
		.LSB(LSB), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		CLK = 0;
		Clear = 0;
		value = 0;
		MSB = 0;
		LSB = 0;
      
		#2 CLK =1; s=2'b11;value=4'b1010;
		#6 $finish;

	end
      
endmodule

