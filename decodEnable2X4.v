`timescale 1ns / 1ps

module decodEnable2X4(

input [1:0]in,
input E,
output reg [3:0] out

);

always @(*)
begin
     out=4'b0000;
      if(E)
		begin
           case(in)
             0:out=4'b0001;
             1:out=4'b0010;
             2:out=4'b0100;
             3:out=4'b1000;
			  endcase
      end

else out=4'b0000;

end
endmodule
