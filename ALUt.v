`timescale 1ns / 1ps


module ALUt;

	// Inputs
	reg [2:0] alucontrol;
	reg [31:0] x;
	reg [31:0] y;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.alucontrol(alucontrol), 
		.x(x), 
		.y(y), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		alucontrol = 0;
		x = 0;
		y = 0;
		
		#2 alucontrol = 3'b110 ; 
		#3 x=32'd5;
		#4 y=32'd7;
		#6 $finish ; 

	end
      
endmodule

