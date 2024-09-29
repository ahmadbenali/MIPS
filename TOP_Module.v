`timescale 1ns / 1ps

module TOP_Module
(
input CLK ,reset ,

inout [31:0] inst , pc ,aluresult ,	 
);


wire [31:0]

ROMMIPS ROM(CLK , pc , inst );

RAMMIPS RAM(aluresult , )

endmodule
