`timescale 1ns / 1ps



module instructionFile 
(

input [31:0] pc,

output [31:0] inst

);
reg [31:0] instFile [0:1023];
//reg [31:0] instFile [0:1023];

initial 
   $readmemh("inst.mem",instFile);


assign inst = instFile[pc[31:2]];// Why this is True !!!!!!!!!! 
//assign inst = instFile[pc[31:2]];// Why this is True !!!!!!!!!! 

endmodule
