`timescale 1ns / 1ps

module TopLevel
(
input CLK , reset ,
output  [31:0] Addressmem, WriteDataMem,
output memWrite
);

wire [31:0] ReadData , instruction ;
wire [5:0] pc ;
 

Single_Cycle_Processor ss(CLK , reset , ReadData , instruction , pc , memWrite , Addressmem , WriteDataMem );

instructionFile ifff(pc,instruction);

DataMemory dm(CLK ,reset , memWrite ,Addressmem , WriteDataMem , ReadData);

endmodule
