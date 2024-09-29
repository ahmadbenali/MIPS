`timescale 1ns / 1ps


module RegisterWithLoad(

input [3:0]D,
input CLK ,L,
output [3:0]Q

);


D_F D1(D[0],CLK,L,Q[0]);
D_F D2(D[1],CLK,L,Q[1]);
D_F D3(D[2],CLK,L,Q[2]);
D_F D4(D[3],CLK,L,Q[3]);



endmodule

module D_F(input D,CLK,L,output reg Q);


always @(posedge CLK)
 begin
 
 
   if(L==1'b0)
     Q=Q;
   else 
     Q=D;
 end
 
 
endmodule 

