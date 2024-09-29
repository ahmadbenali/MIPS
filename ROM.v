`timescale 1ns / 1ps

module ROM 
(
input [2:0] AD,
output [31:0] Data

);

reg [31:0] rom [0:7];


initial 
   $readmemh("value.mem",rom);


assign Data = rom[AD];


endmodule


/*

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
*/