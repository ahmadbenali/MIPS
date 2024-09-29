`timescale 1ns / 1ps

module Counter #(parameter N=3)

(input CLK ,reset, output reg [N-1:0]Q);

always @(posedge CLK,posedge reset)
begin 

if(reset)
Q<=0;
else 
Q<=Q+1;


end

endmodule
