`timescale 1ns / 1ps

module memory_stage
(
input CLK ,MemWriteM ,
input RegWriteM,MemToRegM , 
input [4:0] WriteRegM , 
input [31:0] WriteDataM ,
input [31:0] ALUresultM ,

output RegWriteW , MemToRegW ,
output [4:0] WriteRegW ,
output [31:0] ALUresultW ,  ReadDataMem 
);


DataMemory RAM(CLK ,MemWriteM ,ALUresultM , WriteDataM , ReadDataMem);




MEM_WB_Register MEM_WB
( 
CLK , RegWriteM , MemtoRegM , ReadDataMem , 
ALUresultM , WriteRegM , RegWriteW , 
MemtoRegW , ReadDataMemW , ALUresultW , WriteRegW
);


endmodule
