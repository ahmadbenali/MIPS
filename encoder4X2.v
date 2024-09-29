`timescale 1ns / 1ps
module encoder4X2(

input [3:0]in,
output reg [1:0]out
    
);

always @(*)

begin

out=2'bxx;

case(in)
4'b0001:out=0;
4'b0010:out=1;
4'b0100:out=2;
4'b1000:out=3;
default:out=2'bxx;
endcase

 
end


endmodule
