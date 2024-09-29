`timescale 1ns / 1ps

module SR_latch(

input s,r,
output reg q

	 );

always @(*)
begin 

if(s)
q=1;
if(r)
q=0;

end


endmodule
