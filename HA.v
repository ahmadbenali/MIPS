`timescale 1ns / 1ps

module HA(s,c,x,y);

input x,y;
output reg s,c;

always @(*)
begin
s=x^y;
c=x&y;
end

endmodule
