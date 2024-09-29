`timescale 1ns / 1ps

module ALUdecoder(

input [5:0] funct , 
input reset , 
input [1:0] aluop , 
output reg [3:0] ALUControl

);

always @(aluop,funct)
begin
if(reset)
ALUControl<=4'bxxxx;

     else case(aluop)
	    2'b00 : ALUControl<=4'b0010 ; // add for lw sw addi
		 2'b01 : ALUControl<=4'b1111 ; // sub for beq
		 default : case(funct)
		 
		                6'b100000 : ALUControl<=4'b0010;//add 2
							 6'b100001 : ALUControl<=4'b0011;//addu 3
							 
							 6'b100010 : ALUControl<=4'b0110;//sub 6
							 6'b100011 : ALUControl<=4'b0100;//subu 4
							
							 6'b101010 : ALUControl<=4'b0111;//set less than 7
							 
							 6'b100100 : ALUControl<=4'b0000;//and 0
							 6'b001100 : ALUControl<=4'b0000;//andi a
							 
							 6'b100101 : ALUControl<=4'b0001;//or 1
							 6'b001101 : ALUControl<=4'b0001;//ori b
							 
							 6'b100111 : ALUControl<=4'b1100;//NOR c
							 6'b100110 : ALUControl<=4'b0101;//XOR 5
							 
							 
							 6'b000000 : ALUControl<=4'b1000;//Shift left logic 8
							 6'b000010 : ALUControl<=4'b1001;//Shift Right logic 9
							 default   : ALUControl<=4'bxxxx; // ??
							 
							 
					  endcase
	    endcase
	
end



endmodule
