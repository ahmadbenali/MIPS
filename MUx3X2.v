`timescale 1ns / 1ps

module MUx3X2 
(

input [1:0] s1 ,
input [31:0] in1 , in2 , in3 ,

output reg [31:0] ou

);


always @(*)
begin

     if(s1==0)
        ou=in1;// the value will be : pc+4 OR Branch
     if(s1==1)
        ou=in2;// the value will be Jump 
     if(s1==2)
        ou=in3;// the value will be JumpRegister 

end

endmodule
