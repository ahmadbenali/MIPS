`timescale 1ns / 1ps

module AADD;

	// Inputs
	reg CLK;
	reg reset;

	// Bidirs
	wire [31:0] WriteDataMem;
	wire [31:0] ALUresult;
	wire [31:0] ReadDataMem  ; 
	wire [31:0] pc ;
	wire MemWrite;
	wire RegWrite ;
	wire RegDst; 
	wire ALUSrc ;
	wire MemtoReg ;

	// Instantiate the Unit Under Test (UUT)
	TOP_level uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteDataMem(WriteDataMem), 
		.ALUresult(ALUresult) ,
		.ReadDataMem(ReadDataMem  )  , 
		.pc(pc) ,
		.MemWrite(MemWrite),
		.RegWrite(RegWrite) ,
		.RegDst(RegDst) ,
		.ALUSrc (ALUSrc),
   	.MemtoReg(MemtoReg), 
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;

     #2 reset =1 ;
	  #4 reset = 0; 
	  
	end
      
		always #10 CLK =CLK+1;
		initial #200 $finish;
endmodule

