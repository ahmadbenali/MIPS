`timescale 1ns / 1ps

module EX_MEM_Register
(

input CLK , 
input RegWriteE , MemtoRegE , MemWriteE ,

input [31:0] ALUresultE , WriteDataE , 
input [4:0] WriteRegE , 

output RegWriteM , MemtoRegM , MemWriteM ,
output [31:0] ALUresultM ,WriteDataM ,
output [4:0] WriteRegM

);
// values of the register 
reg  RegWrite , MemtoReg , MemWrite ;
reg  [31:0] ALUresult , WriteData ;
reg [4:0] WriteReg ; 

always @(posedge CLK )
begin

	 RegWrite <= RegWriteE;
	 MemtoReg <= MemtoRegE;
	 MemWrite <= MemWriteE;
    ALUresult <= ALUresultE;
	 WriteData <= WriteDataE;
    WriteReg <= WriteRegE;


end

		assign RegWriteM = RegWrite;
		assign MemtoRegM = MemtoReg;
		assign MemWriteM = MemWrite;
		assign ALUresultM = ALUresult;
		assign WriteDataM = WriteData;
		assign WriteRegM = WriteReg;



endmodule
