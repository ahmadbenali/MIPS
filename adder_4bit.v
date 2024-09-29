`timescale 1ns / 1ps

module adder_4bit(a,b,ci,s,co);

input [3:0]a,b,ci;

output [3:0]s;

output co;

wire [2:0]c;


Full_adder a1(a[0],b[0],ci,s[0],c[0]);
Full_adder a2(a[1],b[1],c[0],s[1],c[1]);
Full_adder a3(a[2],b[2],c[1],s[2],c[2]);
Full_adder a4(a[3],b[3],c[2],s[3],co);



endmodule


module Full_adder(x,y,ci,s,co);

input x,y,ci;
output s,co;

assign s=x^y^ci;
assign co=(x&y)|(y&ci)|(x&ci);

endmodule 