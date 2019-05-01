module RegisterFile(clk,
	read_reg1,
	read_reg2,
	write_reg,
	reg_write,
	write_data,
	do_write_reg,
	do_reg_write,
	read_data1,
	read_data2,
	out_read_reg1, 
	out_read_reg2, 
	out_write_reg,
	out_reg_write
	); 
	
	// =========== I/O ============
	input wire [4:0] read_reg1; 
	input wire [4:0] read_reg2; 
	input wire [4:0] write_reg; // write register to forward to pipeline register
	input wire [4:0] do_write_reg; // write register from mem stage (actually write to this one!)
	input wire [31:0] write_data; // the actual data to be written 
	
	// This module is clocked, because it has register states that 
	// we need to synchronize per instruction. The idea is that by the time the next 
	// posedge of the clock tick we have the proper value at 
	input wire clk; 
	input wire reg_write; // reg_write flag to forward to pipeline register 
	input wire do_reg_write; // reg_write flag from mem stage (actually write when this is high!) 
	
	output reg [31:0] read_data1; 
	output reg [31:0] read_data2; 
	
	// Forwarding for bdf wire management
	output wire [4:0] out_read_reg1; 
	output wire [4:0] out_read_reg2; 
	output wire [4:0] out_write_reg; 
	output wire out_reg_write;
	
	assign out_read_reg1 = read_reg1; 
	assign out_read_reg2 = read_reg2; 
	assign out_write_reg = write_reg; 
	assign out_reg_write = reg_write; 
	
	// =========== Internals ============
	reg [31:0] registers [0:31]; // the actual registers (don't actually need a register for x0)
	wire [31:0] register_out; 
	wire [31:0] next_x30; 
	assign next_x30 = registers[30] + 1;
	assign register_out = registers[do_write_reg]; 
	
	integer register_index; // index to initialize registers 
	
	// I made the choice to zero out the registers at startup 
	initial begin 
		// zero out all the registers 
		registers[0] <= 32'b0000_0000_0000_0000_0000_0000_0000_0000; 
		registers[1] <= 32'b0000_0000_0000_0000_0000_0000_0000_0000; 
		registers[2] <= 32'b0000_0000_0000_0000_0000_0011_1111_1100; // address (255 * 4) of memory (our last address)
		for (register_index = 3; register_index < 32; register_index = register_index + 1) begin 
			registers[register_index] <= 32'b0000_0000_0000_0000_0000_0000_0000_0000; 
		end 
	
	end 
	
	// write on the positive edge 
	always @(posedge clk) begin 
		// We write on the positive edge and read on the negative edge so that if we 
		// write and read at the same time we will read the correct value (the one) we wrote at
		//
		// If write is enabled and the write register is not x0 then we want to read the write 
		// data into the internal register indexed by write_reg 
		if (do_reg_write & (do_write_reg != 5'b00000)) begin 
			registers[do_write_reg] <= write_data; 
		end 
		
		registers[30] <= next_x30;  
	end
	
	// read at the negative edge of the clock 
	always @* begin 
		read_data1 = registers[read_reg1];
		read_data2 = registers[read_reg2];
	end
	

endmodule 