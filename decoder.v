`timescale 1ns / 1ps

module decoder_2X4(in1,in2,o1,o2,o3,o4);


input in1,in2;
output o1,o2,o3,o4;

assign o1=~in1&~in2;
assign o2=in1&~in2;
assign o3=~in1&in2;
assign o4=in1&in2;


endmodule
