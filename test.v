`timescale 1ns / 1ps

module test
(
    output [31:0]pc;
);


generate 

pc=0;

pc=pc+32'b100;

endgenerate



endmodule
