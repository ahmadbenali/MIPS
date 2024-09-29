`timescale 1ns / 1ps



module adtttt;

	// Inputs
	reg [31:0] pcnext;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	add uut (
		.pcnext(pcnext), 
		.result(result)
	);

	initial 
	begin
		pcnext = 0;

	end
	
	
      always #2 pcnext = pcnext+1;
		initial #20 $finish ; 
endmodule

