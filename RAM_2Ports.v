`timescale 1ns / 1ps



module RAM_2Ports #(parameter AD_bit=3 , Data_bit=8) //  8X8 RAM , 2port becouse we do one Read and one Write 

(
input CLK, input WE,  // Clock ,Write Enable

input [AD_bit-1:0] r_AD, // Reading Address

input [AD_bit-1:0] w_AD, // Writing Address

input [Data_bit-1:0] w_D, // Writing Data

output [Data_bit-1:0] r_D // Read Data
);


reg [Data_bit-1:0] memory [0: 2**AD_bit -1] ; // its like a 2daimantion ,zero is the first row


//Write operation is synch
always @(posedge CLK)   
begin

    if(WE)
	 memory[w_AD]<=w_D;
 
end

//Read operation is async
assign r_D=memory[r_AD];

endmodule
