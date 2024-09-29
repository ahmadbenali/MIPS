`timescale 1ns / 1ps

module mainDecoder(

input [5:0]op ,
input reset , 

output memtoReg , memWrite , alusrc , regdst , regwrite ,
output BEQ,BNE,

output  [1:0]aluop

);


reg[11:0] control ; 

assign {regwrite,regdst,alusrc,BEQ,BNE,memWrite,memtoReg,aluop}=control;


always @(*)
begin

if(reset)
control<=12'bxxxxxxxxxxxx;

else case(op)
      6'b000000 : control<=12'b110000000010 ;//R-type (0)
      6'b100011 : control<=12'b101000000100 ;//lw     (23)
      6'b101011 : control<=12'b001000001000 ;//sw     (2B)
      6'b001000 : control<=12'b101000000000 ;//ADDI   (8)
		6'b001100 : control<=12'b101000000010 ;//andi   (c)
		6'b001101 : control<=12'b101000000010 ;//ori    (D)
		6'b000100 : control<=12'b000100000001 ;//BEQ    (4)
		6'b000101 : control<=12'b000010000001 ;//BNE    (5)
		6'b000011 : control<=12'b100001010000 ;//Jump and link (3)
		6'b001001 : control<=12'b000001100000 ;//JR (9)
		6'b000010 : control<=12'b000001000000 ;//jump   (2)
     endcase	
	  
end


endmodule
