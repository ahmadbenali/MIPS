`timescale 1ns / 1ps

module ROM(clk,read_address,instrction); 
input clk;
input [31:0] read_address;
output [31:0] instrction;




reg [31:0] rom [0:1023];


initial 
     $readmemh("inst.mem",instFile);

assign instrction =rom[read_address];



endmodule 