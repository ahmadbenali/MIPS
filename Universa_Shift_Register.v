`timescale 1ns / 1ps

module Universa_Shift_Register #(parameter N=4)
(
    input [1:0]s,
    input CLK,Clear,
    input [N-1:0]value,
    input MSB,LSB,
    output  [N-1:0]Q
    );

reg [N-1:0] Q_reg,Q_next;


always @(*)
begin
Q_next=Q_reg;

case(s)
 
 2'b00: Q_next=Q_reg;
 2'b01: Q_next={MSB,Q_reg[N-1:1]};
 2'b10: Q_next={Q_reg[N-2:0],LSB};
 2'b11: Q_next=value;
 default: Q_next=Q_reg;
 
 
endcase
 
end


always @(posedge CLK,negedge Clear)
begin

if(!Clear)
Q_reg<=0;
else 
Q_reg<=Q_next;

end



assign Q=Q_reg;

endmodule
