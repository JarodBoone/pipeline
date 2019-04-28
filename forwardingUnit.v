module forwardingUnit(exMem_reg_write, exMem_write_reg, exMem_read_reg1, exMem_read_reg2, ifEx_read_reg1, ifEx_read_reg2, forwardA, forwardB);

input wire exMem_reg_write;
input wire [4:0] exMem_write_reg;
input wire [4:0] exMem_read_reg1;
input wire [4:0] exMem_read_reg2;

//input wire ifEx_reg_write;
//input wire [4:0] ifEx_write_reg;
input wire [4:0] ifEx_read_reg1;
input wire [4:0] ifEx_read_reg2;

output wire forwardA;
output wire forwardB;

assign forwardA = ((exMem_reg_write & &(~exMem_write_reg)) && (exMem_write_reg == ifEx_read_reg1)) ? 1'b1 : 1'b0;
assign forwardB = ((exMem_reg_write & &(~exMem_write_reg)) && (exMem_write_reg == ifEx_read_reg2)) ? 1'b1 : 1'b0;

endmodule