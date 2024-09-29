`timescale 1ns / 1ps
module datamemory(Address,WriteData,clk,WE,ReadData);

input[31:0]Address,WriteData
input clk,WE;


output [31:0] ReadData;

reg[31:0] Data_MEM[0:1023];

//read
assign ReadData =(WE==1'b0) ? Data_MEM[Address] : 32'h00000000;

//    WRITE

always @(posedge clk) begin

    if(WE)
      begin
         Data_MEM[Address] <=WriteData;
      end

end

endmodule