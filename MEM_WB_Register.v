`timescale 1ns / 1ps

module MEM_WB_Register
(

input CLK , 
input RegWriteM , MemtoRegM , 
input [31:0] ReadDataMem , ALUoutM , 
input [4:0] WriteRegM ,
   
output RegWriteW , MemtoRegW , 
output [31:0] ReadDataMemW , ALUoutW , 
output [4:0] WriteRegW

);

reg RegWrite , MemtoReg ;
reg [31:0]ReadDataM , ALUout ;
reg [4:0]WriteReg ;

always @(posedge CLK)
begin

	RegWrite<=RegWriteM;
	MemtoReg<=MemtoRegM;
	ReadDataM<=ReadDataMem;
	ALUout<=ALUoutM;
	WriteReg<=WriteRegM;
	
	
end 

assign RegWriteW=RegWrite;
assign MemtoRegW=MemtoReg;
assign ReadDataMemW=ReadDataM;
assign ALUoutW=ALUout;
assign WriteRegW=WriteReg;


endmodule
