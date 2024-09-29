`timescale 1ns / 1ps

module D_latch(

input D,E,
output reg Q,
output Q_bar

    );
	 
	 
assign Q_bar=~Q;

always @(*)
begin

if(E)
Q=D;
else
Q=Q;
 
end


endmodule
