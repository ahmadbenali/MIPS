`timescale 1ns / 1ps

module Forwarding_unit
(

input [4:0] rsE , rtE , 
input [4:0] WriteRegM , WriteRegW , 
input RegWriteW , RegWriteM , 

output reg[1:0] forwardAE , forwardBE

);

always @(rsE , rtE ,WriteRegM , WriteRegW ,RegWriteW , RegWriteM )
begin 
   forwardAE=0;
	forwardBE=0;
   // from memory 
	if(RegWriteM == 1 & (rsE !=0 | rtE !=0))
	begin
	
	if(rsE == WriteRegM)
	begin 
	forwardAE=2'b10 ;
	end
	
	if(rtE == WriteRegM)
	begin 
	forwardBE=2'b10 ;
	end
	
	
	end

// from write back
	if(RegWriteW == 1 & (rsE !=0 | rtE !=0))
	begin
	
	if(rsE == WriteRegW)
	begin 
	forwardAE=2'b01 ;
	end
	
	if(rtE == WriteRegW)
	begin 
	forwardBE=2'b01 ;
	end
	
	
	end
end




endmodule
