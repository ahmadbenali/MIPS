`timescale 1ns / 1ps


module AAAQQQ;

	// Inputs
	reg clk;
	reg [31:0] inst;

	// Outputs
	wire [31:0] aluresult;
	wire [31:0] writeonmem;

	// Bidirs
	wire MemWrite;
	wire RegWrite;
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire [2:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	TEST1 uut (
		.clk(clk), 
		.inst(inst), 
		.aluresult(aluresult), 
		.writeonmem(writeonmem), 
		.MemWrite(MemWrite), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.ALUControl(ALUControl)
	);

	initial begin
   inst=32'h2002005;
	end
	
	always begin
	clk<=1;#5 ;clk<=0;#5;
	end
	
	#100 $finish;
      
endmodule

