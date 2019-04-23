// This module is the lumped functionality of the program counter 
// and instruction memory. This is where you should write your program 
// and what will ultimately serve instructions to the processor. 
module ProgramServer(clk,hlt,jump,next,instruction,PC,nextPC); 
	// =========== I/O ============
	input wire clk; // input clock 
	input wire hlt; // is the processor enabled?  
	input wire [31:0] next; // the address of the instruction we jump to when jump is true  
	input wire jump; // whether or not we jump to next
	
	output wire [31:0] instruction; // the current instruction
	output reg [31:0] PC; // The "address" of the instruction we are currently executing 
	output reg [31:0] nextPC; // Program counter + 1 to write to registers on jal type instructions 
	
	// =========== Internals ============
	// internal register to simulate instruction memory can hold up 
	// to 40 instruction, indexed by PC 
	reg [31:0] iMemory [63:0];
	
	// Wire the instruction to be the instruction "memory" addressed 
	// by the program counter 
	assign instruction = iMemory[PC]; 
	
	// initailize instruction memory 
	initial begin
		// Program counter starts at first address
		PC = 0; 
		nextPC = 1; 
		
		// Program 1 
//		iMemory[0] = 32'b0000_0000_0000_0000_0000_0000_1001_0011; // addi x1,x0,0 
//		iMemory[1] = 32'b0000_0001_0000_0000_0000_0001_0001_0011; 
//		iMemory[2] = 32'b0000_0110_0100_0000_0000_0001_1001_0011; 
//		iMemory[3] = 32'b0000_0000_1000_0000_0000_0010_0001_0011; 
//		iMemory[4] = 32'b0000_0000_0010_0000_1000_0010_1011_0011; 
//		iMemory[5] = 32'b0000_0000_0100_0001_1000_0011_0011_0011; 
//		iMemory[6] = 32'b0000_0000_0101_0001_0010_0000_0010_0011;
//		iMemory[7] = 32'b0000_0000_0110_0001_0010_0010_0010_0011;
//		iMemory[8] = 32'b0000_0000_0000_0000_0000_0000_0111_1111; // HALT
	
		// Program 2 
//		iMemory[0] = 32'h00800293;
//		iMemory[1] = 32'h00f00313;
//		iMemory[2] = 32'h0062a023;
//		iMemory[3] = 32'h005303b3;
//		iMemory[4] = 32'h40530e33;
//		iMemory[5] = 32'h03c384b3;
//		iMemory[6] = 32'h00428293;
//		iMemory[7] = 32'hffc2a903;
//		iMemory[8] = 32'h41248933;
//		iMemory[9] = 32'h00291913;
//		iMemory[10] = 32'h0122a023;
//		iMemory[11] = 32'b0000_0000_0000_0000_0000_0000_0111_1111; // HALT
		
		
//	  iMemory[0] = 32'h00800293;
//	  iMemory[1] = 32'h00f00313;
//	  iMemory[2] = 32'h02630463;
//	  iMemory[3] = 32'h0062a023;
//	  iMemory[4] = 32'h005303b3;
//	  iMemory[5] = 32'h40530e33;
//	  iMemory[6] = 32'h03c384b3;
//	  iMemory[7] = 32'h00428293;
//	  iMemory[8] = 32'hffc2a903;
//	  iMemory[9] = 32'h41248933;
//	  iMemory[10] = 32'h00291913;
//	  iMemory[11] = 32'h0122a023;
//	  iMemory[12] = 32'hfe62ae23;
//	  iMemory[13] = 32'b0000_0000_0000_0000_0000_0000_0111_1111; // HALT
	  
//		addi t0, x0, 8
//		addi t1, x0, 20
//		beq t1,t0,done
//		sw t1, 0(t0)
//		done:
//		sw t1, -4(t0)
//		iMemory[0] = 32'h00800293;
//		iMemory[1] = 32'h01400313; 
//		iMemory[2] = 32'h00530463;
//		iMemory[3] = 32'h0062a023; 
//		iMemory[4] = 32'hfe62ae23; 
		
///////////////////////////////////////////////////////		
///////FACTORIAL CODE /////////////////////////////////
////////////////////////////////////////////////////// 
//		addi a0, x0, 6
//		jal ra, fact
//		sw a0, 0(x0)
//		HALT
//		fact:
//		addi sp, sp, -8
//		sw ra, 4(sp)
//		sw a0, 0(sp)
//		addi a0, a0, -1
//		bne a0, x0, else
//		addi a0, x0, 1
//		addi sp, sp, 8
//		jalr x0, 0(ra)
//		else:
//		jal ra, fact
//		addi t0, a0,0
//		lw a0, 0(sp)
//		lw ra, 4(sp)
//		addi sp, sp, 8
//		mul a0, a0, t0
//		jalr x0, 0(ra)
///////////////////////////////////////////////////////		
///////UNCOMMENT BELOW TO RUN FACTORIAL(6) ////////////
////////////////////////////////////////////////////// 
		iMemory[0] = 32'h00600513; // addi a0, x0, 6
		iMemory[1] = 32'h00c000ef; //	jal ra, fact
		iMemory[2] = 32'h00a02023; //	sw a0, 0(x0)
		iMemory[3] = 32'b0000_0000_0000_0000_0000_0000_0111_1111; // HALT	
		iMemory[4] = 32'hff810113; //	fact:	addi sp, sp, -8
		iMemory[5] = 32'h00112223; //	sw ra, 4(sp)
		iMemory[6] = 32'h00a12023; //	sw a0, 0(sp)
		iMemory[7] = 32'hfff50513; //	addi a0, a0, -1
		iMemory[8] = 32'h00051863; //	bne a0, x0, else
		iMemory[9] = 32'h00100513; //	addi a0, x0, 1
		iMemory[10] = 32'h00810113; // addi sp, sp, 8
		iMemory[11] = 32'h00008067; // jalr x0, 0(ra)
		iMemory[12] = 32'hfe1ff0ef; // else: jal ra, fact
		iMemory[13] = 32'h00050293; // addi t0, a0,0
		iMemory[14] = 32'h00012503; // lw a0, 0(sp)
		iMemory[15] = 32'h00412083; // lw ra, 4(sp)
		iMemory[16] = 32'h00810113; // addi sp, sp, 8
		iMemory[17] = 32'h02550533; // mul a0, a0, t0
		iMemory[18] = 32'h00008067; // jalr x0, 0(ra)


///////////////////////////////////////////////////////		
///////FIBONACCI CODE /////////////////////////////////
////////////////////////////////////////////////////// 		
// 	addi, a0, x0, 12 
// 	jal ra, fib 
// 	sw a1, 0(x0)
//		HALT
//		addi a0, x0, 10
//		fib: beq a0, x0, ret_1 
//    addi a0,a0,-1 
//    beq a0, x0, ret_1 
//		addi sp, sp, -12
//    sw ra, 0(sp) 
//    sw a0, 4(sp)
//    jal ra, fib 
//    add t1,x0,a1 
//    sw t1, 8(sp)
//    lw a0, 4(sp)
//    addi a0,a0, -1 
//    jal ra, fib  
//    add t2, x0, a1 
//    lw t1, 8(sp) 
//    add a1, t1, t2
//		done: lw ra, 0(sp)
//    addi sp, sp, 12
//    jalr x0, 0(ra) 
//		ret_1: addi a1,x0,1
//    jalr x0, 0(ra) 
///////////////////////////////////////////////////////		
///////UNCOMMENT BELOW TO RUN FIBONACCI(12) ////////////
////////////////////////////////////////////////////// 
//		iMemory[0] = 32'h00c00513; // addi, a0, x0, 12
//		iMemory[1] = 32'h00c000ef; // jal ra, fib # call fib routine
//		iMemory[2] = 32'h00b02023; // sw a1, 0(x0)
//		iMemory[3] = 32'b0000_0000_0000_0000_0000_0000_0111_1111; // HALT	
//		iMemory[4] = 32'h04050463; // fib: beq a0, x0, ret_1 
//		iMemory[5] = 32'hfff50513; // addi a0,a0,-1
//		iMemory[6] = 32'h04050063;
//		iMemory[7] = 32'hff410113;
//		iMemory[8] = 32'h00112023;
//		iMemory[9] = 32'h00a12223;
//		iMemory[10] = 32'hfe9ff0ef;
//		iMemory[11] = 32'h00b00333;
//		iMemory[12] = 32'h00612423;
//		iMemory[13] = 32'h00412503;
//		iMemory[14] = 32'hfff50513;
//		iMemory[15] = 32'hfd5ff0ef;
//		iMemory[16] = 32'h00b003b3;
//		iMemory[17] = 32'h00812303;
//		iMemory[18] = 32'h007305b3;
//		iMemory[19] = 32'h00012083;
//		iMemory[20] = 32'h00c10113;
//		iMemory[21] = 32'h00008067;
//		iMemory[22] = 32'h00100593;
//		iMemory[23] = 32'h00008067;

	end 
	
	// at the positive edge of each clock tick we need to enter the 
	// the processing path of control. This begins with instruction decoding 
	// We need to figure out how many clock ticks the process takes for each instruction 
	always @(posedge clk) begin
		if (~hlt) begin // if hlt has been triggered the processor should be stopped 
			if (~jump) begin // if we are not jumping then we just increment through instruction memory
				PC <= PC + 1;
				nextPC <= PC + 2; 
			end else begin // if we are jumping then we are given an (absolute) address to jump to 
				PC <= next;
				nextPC <= next + 1; 
			end 
		end
	end 

endmodule 