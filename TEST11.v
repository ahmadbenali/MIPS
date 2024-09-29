`timescale 1ns / 1ps


module TEST11;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] inst;

	// Outputs
	wire [31:0] aluresult;
	wire [31:0] writeonmem;

	// Instantiate the Unit Under Test (UUT)
	TEST1 uut (
		.clk(clk), 
		.reset(reset), 
		.inst(inst), 
		.aluresult(aluresult), 
		.writeonmem(writeonmem)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		
		#1 reset =1;
      #2 inst=32'h2002005 ;
		#3 reset=0;
	end
	always #4 clk=clk+1;
	initial #100 $finish ;
      
endmodule

