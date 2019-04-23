// So Quartus for some reason cannot convert megafunction blocks from a bdf to actual
// verilog code. Since I insist on using a bdf for my top level system description it looks 
// like I'll have to build my own goddamn multiplexer so I can keep my bdf -> verilog -> modelsim
// workflow 0 -> x1, 1 -> x2 
module mux32(x1,x2,sel,out); 
	input [31:0] x1,x2; 
	input wire sel; 
	output wire[31:0] out; 
	
	[31:0] wire [0:1] internal;
	
	assign wire[0] = x1; 
	assign wire[1] = x2; 
	
	assign out = internal[sel]; 

endmodule 