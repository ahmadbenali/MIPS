`timescale 1ns / 1ps

module ProgramCounter 
(
input CLK ,reset,
input staIF ,  // stall pc
input [31:0] newpc , // the value may be from pcplus4 or jump or branch 
output reg [31:0]pc  // here inout for read self
);


always @(posedge CLK,posedge reset)
begin 


	if(reset)
     pc=0;
	else 
     pc=newpc;
	

end

endmodule
