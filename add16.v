`timescale 1ns / 1ps

module add16(
    input [15:0] x,
    input [15:0] y,
    input  ci,
    output [15:0] s,
	 output co
    );

wire [16:0] c;
assign c[0]=ci;
assign co=c[15];

generate 
   

   genvar i;
   for(i=0 ; i<16; i=i+1)
   begin:stage
     FA v(x[i],y[i],c[i],s[i],c[i+1]);
   end
	
endgenerate


endmodule


