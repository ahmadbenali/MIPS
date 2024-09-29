`timescale 1ns / 1ps

module Sign_Extend 
(

input [15:0] instruction,

output [31:0] SignImm  // sign immediate
    
);
assign SignImm={ {16 {instruction[15]} } , instruction };

endmodule
