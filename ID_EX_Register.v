`timescale 1ns / 1ps

module ID_EX_Register
(
input CLK , FlushE , 

input RegWriteD , MemToRegD , MemWriteD ,
input [3:0] ALUcontrolD ,
input ALUsrcD , RegDstD ,

input [31:0] SrcAD , SrcBD , signImmD , 

input [4:0] rsD , rtD , rdD , 

output RegWriteE , MemToRegE , MemWriteE ,
output [3:0] ALUcontrolE ,
output ALUsrcE , RegDstE ,

output [31:0] SrcAE , SrcBE , signImmE ,

output [4:0] rsE , rtE , rdE 


);
// values of the buffer  
reg [4:0] rs, rt, rd  ;
reg RegWrite, MemToReg , MemWrite ;
reg [3:0] ALUcontrol;
reg ALUsrc , RegDst ;

reg [31:0] SrcA , SrcB , signImm ;
//****************************************

    always @(posedge CLK)
        begin
            if(FlushE==0)
                begin
                    RegWrite <= RegWriteD ;
                    MemToReg<= MemToRegD ;
                    MemWrite <= MemWriteD ;
                    ALUcontrol <= ALUcontrolD ;
                    ALUsrc <= ALUsrcD ;
                    RegDst <= RegDstD ;
                    rs <= rsD  ;
                    rt <= rtD ;
                    rd <= rdD ;
						  SrcA <= SrcAD ;
						  SrcB <= SrcBD ;
						  signImm <= signImmD ;
                end
       
             else if (FlushE)
                begin
                    RegWrite <= 0 ;
                    MemToReg <= 0 ;
                    MemWrite <= 0 ;
                    ALUcontrol <= 0 ;
                    ALUsrc <= 0 ;
                    RegDst <= 0 ;
                    rs <= 0 ;
                    rt <= 0 ;
                    rd <= 0 ; 
						  SrcA <= 0 ;
                    SrcB <= 0 ;
                    signImm <= 0 ; 						  
                end       
        end
		  
assign RegWriteE = RegWrite ;
assign MemToRegE= MemToReg ;
assign MemWriteE = MemWrite ;
assign ALUcontrolE = ALUcontrol ;
assign ALUsrcE = ALUsrc ;
assign RegDstE = RegDst ;
assign rsE = rs  ;
assign rtE = rt ;
assign rdE = rd ;
assign SrcAE = SrcA ;
assign SrcBE = SrcB ;
assign signImmE = signImm ;    
    



endmodule
