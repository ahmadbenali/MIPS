`timescale 1ns / 1ps



module tttt;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire [31:0] Addressmem;
	wire [31:0] WriteDataMem;
	wire memWrite;

	// Instantiate the Unit Under Test (UUT)
	TopLevel uut (
		.CLK(CLK), 
		.reset(reset), 
		.Addressmem(Addressmem), 
		.WriteDataMem(WriteDataMem), 
		.memWrite(memWrite)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;

		#2 CLK=1;
		#20 $finish;

	end
      
endmodule

