`timescale 1ns / 1ps

module IF_ID_Register
(
input CLK , StaID , Flush , 
input [31:0] instructionF , pcplus4F ,

output [31:0] instructionD ,pcplus4D 
);

// values of the register 
reg [31:0] reg_pc_value; 
reg [31:0] reg_inst_value; 

// write on the register 
always @(posedge CLK)
        begin
            if(Flush==0 & StaID==0)
                begin
                    reg_pc_value <= pcplus4F ;
                    reg_inst_value <= instructionF ;
                end
            else if(Flush)
                begin
                    reg_pc_value <= 0;
                    reg_inst_value <= 0;
                end
            else if(StaID)
                begin
                    reg_pc_value <= reg_pc_value;
                    reg_inst_value <= reg_inst_value;
                end                
        end
		  
// read from register 	  
assign pcplus4D = reg_pc_value ;
assign instructionD = reg_inst_value ;   

     
endmodule




