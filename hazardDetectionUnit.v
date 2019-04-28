module hazardDetectionUnit(exMem_mem_reg, exMem_write_reg, ifEx_read_reg1, ifEx_read_reg2, ifEx_write_reg, stall);

input wire exMem_mem_reg;
input wire [4:0] exMem_write_reg;

input wire [4:0] ifEx_read_reg1;
input wire [4:0] ifEx_read_reg2;
input wire [4:0] ifEx_write_reg;

output wire stall;

assign stall = (exMem_mem_reg && ((exMem_write_reg == ifEx_read_reg1) || (exMem_write_reg == ifEx_read_reg2) || (exMem_write_reg == ifEx_write_reg))) ? 1'b1 : 1'b0;



endmodule