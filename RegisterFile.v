module RegisterFile(clk,read_reg1,read_reg2,write_reg,write_data,reg_write,read_data1,read_data2); 
	
	// =========== I/O ============
	input wire [4:0] read_reg1; 
	input wire [4:0] read_reg2; 
	input wire [4:0] write_reg; 
	input wire [31:0] write_data; 
	
	// This module is clocked, because it has register states that 
	// we need to synchronize per instruction. The idea is that by the time the next 
	// posedge of the clock tick we have the proper value at 
	input wire clk; 
	input wire reg_write;
	
	output wire [31:0] read_data1; 
	output wire [31:0] read_data2; 
	
	// =========== Internals ============
	reg [31:0] registers [0:31]; // the actual registers (don't actually need a register for x0)
	integer register_index; // index to initialize registers 
	
	// latch the write register. On the negative edge of the clock (after decoding is done and 
	// all control signals should be set) that way we know on the next posedge of the clock (when 
	// we want to read the results of memory or ALU operation) we will persist the reg_write flag and
	// write the results that are on the wires. 
//	reg reg_write_latch;
//	reg [4:0] write_reg_latch; 
	
	assign read_data1 = registers[read_reg1];
	assign read_data2 = registers[read_reg2]; 
	
	// I made the choice to zero out the registers at startup 
	initial begin 
		// zero out all the registers 
		registers[0] <= 32'b0000_0000_0000_0000_0000_0000_0000_0000; 
		registers[1] <= 32'b0000_0000_0000_0000_0000_0000_0000_0000; 
		registers[2] <= 32'b0000_0000_0000_0000_0000_0011_1111_1100; // address (255 * 4) of memory (our last address)
		for (register_index = 3; register_index < 32; register_index = register_index + 1) begin 
			registers[register_index] <= 32'b0000_0000_0000_0000_0000_0000_0000_0000; 
		end 
		
		// we are not writing to the registers on the first clock tick, simply reading the first 
		// instruction into memory 
//		reg_write_latch <= reg_write; 
//		write_reg_latch <= write_reg; 
	
	end 
	
	always @(posedge clk) begin 
		// We write on the positive edge and read on the negative edge so that if we 
		// write and read at the same time we will read the correct value (the one) we wrote at
		//
		// If write is enabled and the write register is not x0 then we want to read the write 
		// data into the internal register indexed by write_reg 
		if (reg_write & (write_reg != 5'b00000)) begin 
			registers[write_reg] <= write_data; 
		end 
	end 
	
//	always @(negedge clk) begin 
//		// We read on the negative edge so that if we 
//		// write and read at the same time we will read the correct value (the one) we wrote at
//		reg_write_latch <= reg_write; 
//		write_reg_latch <= write_reg;
//	end 
	

endmodule 