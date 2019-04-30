// Implementation of an instruction decoder. This is where all the magic starts and 
// where we implement the "meaning" of bits in an instruction. This takes in a single 
// 32 bit instruction and breaks it up into an anthology of output signals and busses that 
// control the state of the CPU in its entirety 
module iDecoder(instruction,
	read_reg1,
	read_reg2,
	write_reg,
	reg_write,
	branch,
	mem_reg,
	mem_write,
	alu_src,
	funct3,
	funct7,
	itype,
	jal,
	jalr,
	forward, 
	hlt); 
	
	// =========== I/O ============
	input wire [31:0] instruction; // the only input we get is the instruction 
	output wire [31:0] forward; // the full instruction that will be forwarded 
	output wire [4:0] read_reg1; // the first register to read 
	output wire [4:0] read_reg2; // the second register to read 
	output wire [4:0] write_reg; // the register to write to if writing 
	
	// Control Signals 
	output wire hlt; // stop the processor 
	output wire reg_write; // write to the register file at (write_reg)
	output wire mem_reg; // (write_data) comes from memory? 
	output wire mem_write; // write to memory? 
	output wire alu_src; // second ALU input (read_reg2) or immediate value? 
	output wire branch; // whether or not we are executing a branch instruction 
	
	// Let the ALU decide what to do based on I-type and funct fields 
	output wire [6:0] funct7; 
	output wire [2:0] funct3; 
	// output wire mult; // ... except for multiplication, lets figure that shit out ASAP
	
	// extras 
	output wire jal; // need to special case a jump and link instruction 
	output wire jalr; // need to special case a jump and link and return instruction 
	output wire [2:0] itype; // the type of instruction 
	
	// =========== Internals ============
	// we make some convienent internal wires for clarity. I'm doing this under the assumption
	// that wires without any logic are inexpensive in regard to speed. This will be one
	// of the places I optimize first if I'm hurting for clock frequency 
	wire [6:0] opcode;
	
	// =========== Assignments ============
	assign forward = instruction; // full instruction to pass on to immediate generation
	assign funct7 = instruction[31:25]; 
	assign read_reg2 = instruction[24:20]; 
	assign read_reg1 = instruction[19:15]; 
	assign funct3 = instruction[14:12]; 
	assign write_reg = instruction[11:7]; 
	assign opcode = instruction[6:0]; 
	
	// Looking at the opcodes we have the following map from opcode to instruction type 
	// 0110011 ==> R-Type instruction
	// 0100011 ==> Store instruction 
	// 0000011 ==> Load instruction 
	// 0010011 ==> I-Type instruction 
	// 1100011 ==> Beq instruction
	// 1101111 ==> Jal instruction 
	// 1100111 ==> Jalr instuction 
	// We note that the instruction type is entirely dependent on the 3 most significant 
	// bits and thus we can completely map our control signals like that. Thus we adopt the 
	// following "itype" codes 
	// 000 ==> Load instruction 
	// 001 ==> I-Type instruction 
	// 011 ==> R-Type instruction
	// 010 ==> Store instruction 
	// 110 ==> Branch instruction
	// Oh look! A gray code! 
	assign itype = opcode[6:4];
	
	assign hlt =&opcode; // Reduction AND of the opcode ==> 1 <==> (opcode == 7'b11111111)   
	assign jal =&opcode[3:2]; // Reduction AND of the opcode[3:2] ==> 1 <==> (opcode == 7'bXXX11XX)   
	assign jalr =^opcode[3:2]; // Reduction XOR of the opcode[3:2] ==> 1 <==> (opcode == 7'bXXX01XX || opcode == 7'bXXX10XX )   
	assign branch =&itype[2:1]; // 11X ==> means we have a branch
	assign mem_write = (~(itype[2]|itype[0]))&itype[1]; // 010 ==> mem_write
	assign mem_reg =~|itype; // 000 ==> we are reading to reg from memory 
	assign alu_src = ~(itype[2]|(&itype[1:0])); // 0XX and not X11 
	assign reg_write = ((~|itype)|itype[0])|opcode[2]; // 000, 001, or 011 or a Ujump 
	// assign mult =((&itype[1:0])&(~|funct3[2:0]))&((~|funct7[6:1])&funct7[0]); 
	
endmodule
