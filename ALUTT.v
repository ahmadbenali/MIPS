`timescale 1ns / 1ps



module ALUTT;

	// Inputs
	reg [3:0] ALUControl;
	reg [31:0] rs;
	reg [31:0] rt;

	// Outputs
	wire [31:0] ALUresult;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUControl(ALUControl), 
		.rs(rs), 
		.rt(rt), 
		.ALUresult(ALUresult)
	);

	initial begin
	   ALUControl =4'b1000;
		rs = 32'b0101;
		rt = 32'b0011;

      
	end
	initial #10 $finish;
      
endmodule

