`timescale 1ns / 1ps
module ALU 
(

input [3:0] ALUControl,


input [31:0] sourse1 , sourse2 ,
input [4:0] shamt ,  

output reg [31:0] ALUresult 

);

reg signed [31:0] rss,rts;// s: signed
reg [31:0] andi ;




always @(ALUControl , sourse1 ,sourse2 ,shamt)
   begin 
	rss=sourse1;
	rts=sourse2;
         case(ALUControl)
	         4'b0000: ALUresult <= sourse1&sourse2;//and
				4'b1010: ALUresult <= sourse1&sourse2;//andi
				
		      4'b0010: ALUresult <= rss+rts;//add
		      4'b0011: ALUresult <= sourse1+sourse2;//addu
				
				4'b0110:ALUresult <= rss-rts;//subs
				
		      4'b0100: ALUresult <= sourse1-sourse2;//subu
				
				4'b0001: ALUresult <= sourse1|sourse2;//or
				4'b1011: ALUresult <= sourse1|sourse2;//ori
				
		      4'b0101: ALUresult <= sourse1^sourse2;//xor
            4'b1100: ALUresult <= ~(sourse1|sourse2);//nor
		      4'b0111: begin 
				
				if(sourse2[31]==1)
				ALUresult <= 0;
				else if(sourse1 < sourse2)
				ALUresult <= 1;
				else
				ALUresult <= 0;
				
				end

				
				4'b1000: ALUresult <= sourse2 << shamt;//sll  , rt  , rs ==zero  
				4'b1001: ALUresult <= sourse2 >> shamt;//srl  , rt  , rs ==zero
				
				
				
				default :ALUresult<=0;
	      endcase
	
	end


endmodule
