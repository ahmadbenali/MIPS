`timescale 1ns / 1ps


module AA;

	// Inputs
	reg CLK;
	reg reset;

	// Bidirs
	wire [31:0] WriteDataMem;
	wire [31:0] ALUresult;

	// Instantiate the Unit Under Test (UUT)
	TOP_level uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteDataMem(WriteDataMem), 
		.ALUresult(ALUresult)
	);

	initial 
	begin
		reset <=1; #22 ;reset<=0;
	end
	
	always
	begin
        CLK<=1 ; #5 ; CLK<=0 ; #5 ;	
	end
	
	initial #200 $finish;
      
endmodule

