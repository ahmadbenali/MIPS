`timescale 1ns / 1ps

module DataMemory 
(
    
input CLK  , we,
input [31:0] address , WriteDataMem , 

output [31:0] ReadData 

);


	
reg [31:0] RAM [0:1023] ; 

initial 
   $readmemh("data.mem",RAM);
	
assign ReadData = (we==0)?RAM[address[31:2]]:0 ;

always @(posedge CLK )
begin

if(we)
RAM[address[31:2]]<=WriteDataMem ;
end

endmodule
