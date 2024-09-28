`timescale 1ns / 1ps

module Single_Cycle_Processor #(parameter N=32)
(

input CLK,reset,
input [31:0] ReadData,  // from RAM
input [31:0] instruction ,  // from instruction memory



output [5:0] pc, // to instruction memory
output memWrite , // Enable to write on memory 
output [31:0] Addressmem , WriteDataMem  // output form ALU and register file

 
);


// control signals inside the microprocessor
// alusrc : mux between RD2 and immdiate value
wire memtoreg;
wire  alusrc , regdst , regwrite ;
wire [2:0] ALUControl ;
//wire [1:0] aluop;



Control_Unit c(instruction[31:26] , instruction[5:0] , memtoreg ,memWrite, alusrc , regdst , regwrite , ALUControl);


DataPath D(CLK , reset , memtoreg , alusrc , regdst , regwrite , ALUControl , instruction   , Addressmem , WriteDataMem , pc,ReadData);


endmodule
