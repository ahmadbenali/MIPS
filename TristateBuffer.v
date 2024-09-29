`timescale 1ns / 1ps



module TristateBuffer(

input [3:0]in,
input E,
output tri [3:0]out

    );

assign out=E ?in : 4'bz;


endmodule
