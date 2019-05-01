// Pipeline register for the fetch/execute threshold 
// hlt is handled in the first phase and will freeze the processor on that instruction

// TODO: need input signals from hazard detection unit and output signals to feed to hazard 
// detection 
module fetchExecute(clk,
	in_read_data1,
	in_read_data2,
	in_read_reg1,
	in_read_reg2,
	in_write_reg,
	in_reg_write,
	in_imm,
	in_jal,
	in_jalr,
	in_branch,
	in_mem_reg,
	in_mem_write, 
	in_alu_src,
	in_funct3,
	in_itype,
	in_ALUop, 
	in_funct7,
	in_PC,
	in_nextPC, 
	in_forwardC, 
	in_forwardD, 
	in_write_data, 
	in_bubble, 
	out_ALUop, 
	out_read_data1,
	out_funct3,
	out_funct7,
	out_mem_write,
	out_branch,
	out_jal,
	out_jalr,
	out_imm, 
	out_read_data2,
	out_reg_write,
	out_mem_reg,
	out_alu_src,
	out_PC,
	out_nextPC,
	out_write_reg,
	out_read_reg1,
	out_read_reg2); 

    // the clock signal 
    input wire clk; 

    // input state
    input wire [31:0] in_read_data1;
    input wire [31:0] in_read_data2;
    input wire [31:0] in_imm;
    input wire in_reg_write;
    input wire in_mem_reg;
	 input wire in_mem_write; 
    input wire in_alu_src;
    input wire in_branch;
    input wire in_jal;
    input wire in_jalr;
    input wire [2:0] in_itype;
    input wire [2:0] in_funct3;
    input wire [6:0] in_funct7;
	 input wire [31:0] in_PC;
    input wire [31:0] in_nextPC;
	 input wire in_bubble; 
	 input wire [2:0] in_ALUop; 
	 
	 // forwarding logic 
	 input wire in_forwardC;
	 input wire in_forwardD;
	 input wire [31:0] in_write_data; 
	 
    // necessary for collision detection 
    input wire [4:0] in_read_reg1; 
    input wire [4:0] in_read_reg2;
    input wire [4:0] in_write_reg;  

    // output state 
    output reg [31:0] out_read_data1;
    output reg [31:0] out_read_data2;
    output reg [31:0] out_imm;
    output reg out_reg_write;
    output reg out_mem_reg;
	 output reg out_mem_write; 
    output reg out_alu_src;
    output reg out_branch;
    output reg out_jal;
    output reg out_jalr;
    output reg [2:0] out_ALUop;
    output reg [2:0] out_funct3;
    output reg [6:0] out_funct7;
	 output reg [31:0] out_PC;
    output reg [31:0] out_nextPC;
    output reg [4:0] out_write_reg;
	 output reg [4:0] out_read_reg1;
	 output reg [4:0] out_read_reg2;
	
	 wire [5:0] next_reg1, next_reg2, next_write_reg;
	 assign next_reg1 = in_bubble ? 5'b0 : in_read_reg1;
	 assign next_reg2 = in_bubble ? 5'b0 : in_read_reg2;
	 assign next_write_reg = in_bubble ? 5'b0 : in_write_reg;
    
	 always @(posedge clk) begin 

         out_read_data1 <= in_forwardC ? in_write_data : in_read_data1;
         out_read_data2 <= in_forwardD ? in_write_data : in_read_data2;
         out_imm <= in_imm;
         out_reg_write <= in_reg_write;
         out_mem_reg <= in_mem_reg;
			out_mem_write <= in_mem_write;
         out_alu_src <= in_alu_src;
         out_branch <= in_branch;
         out_jal <= in_jal;
         out_jalr <= in_jalr;
         out_ALUop <= in_ALUop;
         out_funct3 <= in_funct3;
         out_funct7 <= in_funct7;
         out_nextPC <= in_nextPC;
         out_write_reg <= in_write_reg; 
			out_PC <= in_PC; 
			
         out_read_reg1 <= in_read_reg1;
         out_read_reg2 <= in_read_reg2;

    end  


endmodule