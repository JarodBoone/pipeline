`timescale 10ns/1ns

module tb; 

	reg clk; 
	wire real_clk; 
	wire [31:0] instruction;
	wire [2:0] itype; 
	wire hlt; // stop the processor 
	wire reg_write; // write to the register file at (write_reg)
	wire mem_reg; // (write_data) comes from memory? 
	wire mem_write; // write to memory? 
	wire alu_src; // second ALU input (read_reg2) or immediate value? 
	wire branch; // whether or not we are executing a branch instruction
	wire [31:0] rreg1; 
	wire [31:0] rreg2;
	wire [31:0] im;
	wire [31:0] in2;
	wire [31:0] out; 
	wire [4:0] read_reg1; 
	wire [4:0] read_reg2; 
	wire [4:0] write_reg; 
	wire [2:0] funct3; 
	wire [6:0] funct7; 
	wire [31:0] next; 
	wire jump; 
	wire zero; 
	wire jal; 
	wire jalr; 
	wire [31:0] regwrite_data; 
	wire [31:0] fuck_imm;
	wire [31:0] fuck_PC;
	
	pipeline p1(
	.CLOCK_50(clk),
	.fastclk(real_clk),
	.fuck_imm(fuck_imm),
	.fuck_PC(fuck_PC)
);
	/*SAFEV s1(.CLOCK_50(clk), 
		.real_clk(real_clk), 
		.instruction(instruction), 
		.hlt(hlt),
		.mem_write(mem_write), 
		.mem_reg(mem_reg), 
		.reg_write(reg_write), 
		.alu_src(alu_src), 
		.branch(branch), 
		.itype(itype),
		.rreg1(rreg1), 
		.rreg2(rreg2), 
		.im(im), 
		.in2(in2), 
		.out(out), 
		.read_reg1(read_reg1), 
		.read_reg2(read_reg2), 
		.write_reg(write_reg), 
		.funct3(funct3), 
		.funct7(funct7), 
		.jump(jump), 
		.next(next), 
		.zero(zero), 
		.jal(jal), 
		.jalr(jalr), 
		.regwrite_data(regwrite_data)
		);*/
	
	// initialization block 
	initial begin 	
		clk = 0; 
	end 
	
	// clock generator signal 
	always 
		#5 clk = ~clk; 
	
	initial
		#2000 $stop;


endmodule