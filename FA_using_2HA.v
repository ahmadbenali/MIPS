`timescale 1ns / 1ps

module FA_using_2HA(a,b,ci,s,co);

input a,b,ci;
output s,co;

wire s1,c2,c1;

HA v1(s1,c1,a,b);
HA v2(s,c2,s1,ci);

or (co,c1,c2);



endmodule

/*
module half(a,b,s,c);

input a,b;
output s,c;

assign s=a^b;
assign c=a&b;

endmodule 
*/