module executeMem(clk,
	in_alu_result, 
	in_zero, 
	in_funct3,
	in_branch,
	in_jal,
	in_jalr,
	in_imm,
	in_mem_write_data, 
	in_reg_write,
	in_mem_reg,
	in_mem_write, 
	in_PC,
	in_nextPC, 
	in_write_reg,
	out_alu_result, 
	out_mem_write_data,
	out_mem_write,
	out_write_reg,
	out_reg_write,
	out_nextPC,
	out_mem_reg,
	out_jal,
	out_jalr,
	out_branch,
	out_imm, 
	out_funct3,
	out_zero, 
	out_PC); 

    // the clock signal 
    input wire clk; 

    // input state
	 input wire [31:0] in_alu_result;
	 input wire in_zero; 
	 input wire [2:0] in_funct3;
    input wire in_reg_write;
	 input wire [31:0] in_imm;
	 input wire [31:0] in_mem_write_data; 
	 input wire in_jal;
    input wire in_jalr;
	 input wire in_branch;
    input wire in_mem_reg;
	 input wire in_mem_write; 
	 input wire [31:0] in_PC;
    input wire [31:0] in_nextPC;
    
	 // necessary for collision detection 
    input wire [4:0] in_write_reg;  

    // output state 
    output reg [31:0] out_imm;
	 output reg [31:0] out_mem_write_data;
	 output reg [31:0] out_alu_result; 
    output reg out_reg_write;
    output reg out_mem_reg;
	 output reg out_mem_write; 
    output reg out_branch;
    output reg out_jal;
    output reg out_jalr;
	 output reg out_zero; 
    output reg [2:0] out_funct3;
	 output reg [31:0] out_PC;
    output reg [31:0] out_nextPC;
    output reg [4:0] out_write_reg;

    always @(posedge clk) begin 

         out_imm <= in_imm;
			out_mem_write_data <= in_mem_write_data;
			out_alu_result <= in_alu_result; 
         out_reg_write <= in_reg_write;
         out_mem_reg <= in_mem_reg;
			out_mem_write <= in_mem_write;
         out_branch <= in_branch;
         out_jal <= in_jal;
         out_jalr <= in_jalr;
         out_funct3 <= in_funct3;
         out_nextPC <= in_nextPC;
         out_write_reg <= in_write_reg; 
			out_PC <= in_PC; 
			out_zero <= in_zero; 


    end  


endmodule