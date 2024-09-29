`timescale 1ns / 1ps

module pcabra(

input [31:0] pcplus4 , branimm ,

output [31:0] pcnext
	 
);


assign pcnext=pcplus4 + branimm ; 

endmodule
