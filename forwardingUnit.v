module forwardingUnit(exMem_reg_write, 
	exMem_write_reg, 
	ifEx_read_reg1, 
	ifEx_read_reg2, 
	decode_read_reg1, 
	decode_read_reg2,
	forwardA, 
	forwardB, 
	forwardC, 
	forwardD);

	input wire exMem_reg_write;
	input wire [4:0] exMem_write_reg; 

	//input wire ifEx_reg_write;
	//input wire [4:0] ifEx_write_reg;
	input wire [4:0] ifEx_read_reg1;
	input wire [4:0] ifEx_read_reg2;

	input wire [4:0] decode_read_reg1;
	input wire [4:0] decode_read_reg2;

	output wire forwardA;
	output wire forwardB;
	output wire forwardC;
	output wire forwardD;

	assign forwardA = ((exMem_reg_write & (|exMem_write_reg)) && (exMem_write_reg == ifEx_read_reg1)) ? 1'b1 : 1'b0;
	assign forwardB = ((exMem_reg_write & (|exMem_write_reg)) && (exMem_write_reg == ifEx_read_reg2)) ? 1'b1 : 1'b0;
	assign forwardC = ((exMem_reg_write & (|exMem_write_reg)) && (exMem_write_reg == decode_read_reg1)) ? 1'b1 : 1'b0;
	assign forwardD = ((exMem_reg_write & (|exMem_write_reg)) && (exMem_write_reg == decode_read_reg2)) ? 1'b1 : 1'b0;

endmodule