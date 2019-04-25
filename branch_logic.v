module branch_logic(clk,jal,branch,imm,arith,zero,funct3,jump,next,PC,jalr); 
	input wire clk; 
	input wire jal;
	input wire branch; 
	input wire signed [31:0] imm; 
	input wire[31:0] arith; 
	input wire zero; 
	input wire[2:0] funct3;
	input wire signed [31:0] PC; 
	input wire jalr; 
	
	output wire jump;
	output wire[31:0] next; 
	/*
	initial begin 
		jump <= 0; 
		next <= 0; 
	end 
	*/
	assign next = (jal) ? ($signed(imm) >>> 2) + PC : (jalr) ? arith  : (branch) ?  ($signed(imm) >>> 2) + PC : 0;
	assign jump = (jal|jalr) ? 1 : (branch) ? ((|funct3)^zero) : 0;

	/*
	always @(negedge clk) begin 
		if (branch) begin 
			if (jal) begin 
				jump <= 1; 
				next <= ($signed(imm) >>> 2) + PC; 
			end else if (jalr) begin 
				jump <= 1; 
				next <= (arith); 
			end else begin 
				jump <= ((|funct3)^zero); 
				next <= ($signed(imm) >>> 2) + PC; 
			end 
		end else begin 
			jump <= 0; 
			next <= 0; 
		end 
	end 
*/
endmodule 