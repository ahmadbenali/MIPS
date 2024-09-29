`timescale 1ns / 1ps

module TEST1
(
input clk , 

input [31:0] inst ,

output [31:0] aluresult , writeonmem,
   
inout 	MemWrite , RegWrite , RegDst , ALUSrc ,MemtoReg,
inout [2:0]ALUControl
);

//wire  MemWrite , RegWrite , RegDst , ALUSrc ,MemtoReg; 

//wire [2:0]ALUControl ;


Control_Unit cu(inst[31:26] , inst[5:0] ,  MemWrite , RegWrite , RegDst , ALUSrc ,MemtoReg ,ALUControl );

DataPath mibs(clk ,  inst ,  MemWrite , RegWrite , RegDst , ALUSrc ,MemtoReg ,ALUControl , writeonmem , aluresult);



endmodule
