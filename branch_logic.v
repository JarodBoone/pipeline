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
	out_jalr);
	
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
	
	assign out_jal = jal; 
	assign out_jalr = jalr; 

	assign next = (jal) ? ($signed(imm) >>> 2) + PC : (jalr) ? alu_result  : (branch) ?  ($signed(imm) >>> 2) + PC : 0;
	assign jump = (jal|jalr) ? 1 : (branch) ? ((|funct3)^zero) : 0;
	
endmodule 