`timescale 1ns / 1ps

module Hazard_unit
(
 
input [4:0] rtE , rsD , rtD ,

output reg staIF , StaID , FlushE
	 
);

always @(rtE , rsD , rtD )
begin
	staIF =0;
	StaID =0;
	FlushE =0;
	if(rtE == rsD )
	begin
	staIF =1;
	StaID =1;
	FlushE =1;
	end

	if(rtE == rtD )
	begin
	staIF =1;
	StaID =1;
	FlushE =1;
	end

 
end


endmodule
