`timescale 1ns / 1ps

module MUx2X1 #(parameter N=5)
(

input [N-1:0] in1 , in2 ,

input s , 

output  [N-1:0] out

);


assign out =s ? in2 :in1 ;

endmodule

