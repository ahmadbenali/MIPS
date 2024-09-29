`timescale 1ns / 1ps

module FS_SL(x,y,Bi,s,Bo);

input x,y,Bi;
output s,Bo;
wire z1,z2,z3;
// for the result
xor (z1,x,y);
xor (s,z1,Bi);
// for the Borrw
and (z2,~x,y);
and (z3,~z1,Bi);

or (Bo,z2,z3);

endmodule
