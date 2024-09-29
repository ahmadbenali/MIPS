`timescale 1ns / 1ps

module MUX_tristate2X1(

input [3:0]in1,in2,
input E
output [3:0]out
    );

TristateBuffer tb1(in1,E,out)



endmodule


module TristateBuffer(

input [3:0]in,
input E,
output tri [3:0]out

    );

assign out=E ?in : 4'bz;
