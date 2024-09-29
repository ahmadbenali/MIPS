`timescale 1ns / 1ps



module decoderT;

	// Inputs
	reg in1;
	reg in2;

	// Outputs
	wire o1;
	wire o2;
	wire o3;
	wire o4;

	// Instantiate the Unit Under Test (UUT)
	decoder_2X4 uut (
		.in1(in1), 
		.in2(in2), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3), 
		.o4(o4)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

	end
      always #1 in1=in1+1;
		always #2 in2=in2+1;
		initial #10 $finish;
endmodule

