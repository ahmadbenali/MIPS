`timescale 1ns / 1ps

module Comparators #(parameter N=4)

(input [N-1:0] x,y , output eq,neq,lt,lte,gt,gte );

assign eq=(x==y);
assign neq=(x!=y);
assign lt=(x<y);
assign lte=(x<=y);
assign gt=(x>y);
assign gte=(x>=y);


endmodule
