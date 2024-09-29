`timescale 1ns / 1ps




module system(
    input CLK,
    input reset,
    output [3:0] Data
    );


wire [2:0] Q;

Counter c(CLK,reset,Q); // pc



ROM r(Q,Data);  // ROM , instruction memory 




endmodule
