`timescale 1ns / 1ps

module RegisterFile 
(

input CLK , RegWrite  , 
input [4:0] A1 , A2 , A3 , 
input [31:0]  WD3 ,
input JAL ,
output [31:0] RD1 , RD2 

);

reg [31:0] RegFile [0:31] ;


always @(posedge CLK )
begin
     RegFile[0]<=32'b00000000;
     if(RegWrite)
	  RegFile[A3]<=WD3;
	  if(JAL==1)
	  RegFile[31]<=WD3;
	  
end


assign RD1 = RegFile[A1];
assign RD2 = RegFile[A2];



endmodule 
