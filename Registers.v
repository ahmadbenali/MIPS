`timescale 1ns / 1ps

module Registers(
input  sh,
input [3:0]D,
input CLK,
output  [3:0]Q,
output reg [3:0] Q_next
);// 4-Bit 






generate 
genvar k;
for(k=0;k<4;k=k+1)
begin:re
D_FF D1(D[k],CLK,Q[k]);
end
endgenerate

// right 
/*
always @(*)
begin 
Q_next={sh,Q[3:1]};
end*/
// left

always @(*)
begin 
Q_next={Q[2:0],sh};
end


//assign Q={sh,Q_next[3:1]};

endmodule






module D_FF(

input D,
input CLK,
output reg Q

);


always @(posedge CLK)
 begin

    Q = D;
 end
 
 
endmodule 






