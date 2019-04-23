module MemoryController(clk,address,write_data,read_data,mem_write); 
	input wire clk; 
	input wire[31:0] address; 
	input wire[31:0] write_data; 
	output wire[31:0] read_data; 
	input wire mem_write; 
	
	// Because the RAM is word addressable but verilog uses byte 
	// addressing we resolve the bytes to words 
	wire [7:0] word_address = address[9:2];
	
	datamem r1(
		.address(word_address), // the memory address we are writing to 
		.clock(clk), // the clock signal (~sysclock)
		.q(read_data), // the bus that will be read into on wren == 0
		.wren(mem_write), // write enabled? 
		.data(write_data) // the data to write on wren == 1 
	); 

endmodule 