module branch_logic(jal,
	jalr,
	branch,
	imm,
	funct3,
	zero,
	PC,
	alu_result,
	jump,
	next, 
	out_jal,
	out_jalr,
	fuck_PC,
	fuck_imm);
	
	input wire jal;
	input wire branch; 
	input wire signed [31:0] imm; 
	input wire[31:0] alu_result; 
	input wire zero; 
	input wire[2:0] funct3;
	input wire signed [31:0] PC; 
	input wire jalr; 
	
	output wire jump;
	output wire[31:0] next; 
	output wire out_jal, out_jalr; 
	output wire [31:0] fuck_PC;
	output wire [31:0] fuck_imm; 
	
	assign fuck_PC = PC; 
	assign fuck_imm = $signed(imm) >>> 2; 
	
	assign out_jal = jal; 
	assign out_jalr = jalr; 

	assign next = ((jal|branch)&(~jalr)) ? fuck_imm + PC : alu_result;
	assign jump = (jal|jalr) ? 1 : (branch) ? ((|funct3)^zero) : 0;
	
endmodule 