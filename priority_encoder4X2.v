`timescale 1ns / 1ps

module priority_encoder4X2(

input [3:0]in,
output reg [1:0]out,
output   z

);


assign z=|in;


always @(in)
begin 



if(in[3])
out=2'b11;
else if(in[2])
out=2'b10;
else if(in[1])
out=2'b01;
else if(in[0])
out=2'b00;
else 
out=2'bxx;


/*
case(in)

4'b1xxx: out = 2'b11; 
4'b01xx: out = 2'b10; 
4'b001x: out = 2'b01; 
4'b0001: out = 2'b00; 
4'b0000: out = 2'bxx; 

endcase
*/
end

endmodule
