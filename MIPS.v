`timescale 1ns / 1ps

module MIPS
(
input CLK ,
input [31:0]inst
);

wire MemWrite , RegWrite , RegDst , ALUsrc , MemToReg ;
wire [2:0]ALUcontrol ; 


Control_Unit cu( inst[31:26] , inst[5:0] , MemWrite , RegWrite , RegDst , ALUsrc , MemToReg ,ALUcontrol);



endmodule
