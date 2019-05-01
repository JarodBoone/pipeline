module hazardDetectionUnit(branch,
	jalr, 
	jal,  
	ifEx_mem_reg, 
	ifEx_reg_write, 
	ifEx_write_reg, 
	decode_read_reg1, 
	decode_read_reg2, 
	decode_write_reg,
	stall, 
	bubble);

input wire branch;
input wire jal;
input wire jalr;
input wire ifEx_mem_reg,ifEx_reg_write;
input wire [4:0] ifEx_write_reg;

input wire [4:0] decode_read_reg1;
input wire [4:0] decode_read_reg2;
input wire [4:0] decode_write_reg;

output wire stall;
output wire bubble; 

assign stall = (branch | jal | jalr); 
assign bubble = ((ifEx_mem_reg & ifEx_reg_write) 
	& ((ifEx_write_reg == decode_read_reg1) || (ifEx_write_reg == decode_read_reg2) 
	|| (ifEx_write_reg == decode_write_reg))) ? 1'b1 : 1'b0;
//todo: stall on jal, jalr, branch


endmodule