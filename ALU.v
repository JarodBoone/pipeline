// The ALU does most of the work in any given computation. Ideally we 
// would do as little muxing as possible here. Trying to parse this out to 
// combinational logic would be pretty difficult so I'm not going to try, 
// for clarity I'm going to define some itype macros 
	`define RTYPE 3'b011
	`define ITYPE 3'b001
	`define LOAD 3'b000
	`define STORE 3'b010
	`define BRANCH 3'b110 
// The itype input signal will always be one of these 5 "instruction" types
// each of which will map to an arithmetic computation or set of arithmetic 
// computations. In the case where we are mapped to a set by the itype we use 
// the funct7 and funct3 values to further determine which particular ALU 
// function we need 
module ALU(ALUop,
	x1,
	funct3,
	funct7,
	x2,
	out,
	zero,
	out_funct3,
	multiply); 

	// =========== I/O ============
	input wire [2:0] ALUop; // the instruction type parsed by the iDecoder 
	input wire signed [31:0] x1,x2; // inputs 
	input wire [6:0] funct7; // the funct7 field of the instruction 
	input wire [2:0] funct3; // the funct3 field of the instruction 
	
	output reg signed [31:0] out; // output number
	output wire zero; // zero flag 
	output wire [2:0] out_funct3; // output funct3 to forward to the next pipline register
	assign out_funct3 = funct3; 
	
	output wire multiply; 
	// =========== Internals ============
	wire x1_neg, x2_neg, out_neg;
	wire signed [31:0] shift_result; // result of the shifting megafunction 
	wire signed [31:0] add_result; // result of the shifting megafunction 
	wire signed [64:0] mult_result; // restult of the multiplication megafunction
	
	// negative value indicators 
	assign zero = (out == 0); 
	assign multiply = (ALUop == 3'b111); 
	
	shifter sh(
		.data(x1), 
		.distance(x2[4:0]), 
		.result(shift_result)
	);
	
	adder add(
		.dataa(x1),
		.datab(x2), 
		.result(add_result)
	);
	
	always @* begin 
		case (ALUop) 
			3'b000 : out = add_result;
			3'b001 : out = x1 - x2;
			3'b011 : out = shift_result;
			3'b010 : out = x1 | x2;
			3'b110 : out = x1 & x2;
			default : out = 0; 
		endcase 
	end 
	
	// primary logic block 
//	always @* begin 
//		case (itype) 
//			// Load or store instruction type 
//			`LOAD, `STORE : begin // if it is a load or a store we need to perform an add 
//				out = x1 + x2; // add
//			end 
//			// Branch or Jal instruction type 
//			`BRANCH : begin // if it is a subtract 
//				// eventually will need to case jal and jalr in here, I think they need to be an add? 
//				out = x1 - x2; // subtract 
//			end 
//			`RTYPE , `ITYPE : begin // if it is an R or I type we need to figure out what operation based off funct7 
//				if (funct7 == 7'b0100000) begin 
//					out = x1 - x2; // subtract 
//				end else begin 
//					case (funct3)
//						3'b000 : begin 
//							
//							
//							if (funct7 == 7'b0000001) begin 
//								out = mult_result[31:0]; // multiply 
//							end else begin 
//								out = x1 + x2; // add
//							end 
//						end 
//						
//						3'b001 : begin 
//							out = shift_result; // Left shift  
//						end 
//						
//						3'b110 : begin 
//							out = x1 | x2; // bitwise OR 
//						end 
//						
//						3'b111 : begin 
//							out = x1 & x2; // bitwise AND 
//						end 
//						
//						default : begin 
//							out = 0; 
//						end
//					endcase // end funct3 case
//				end // end if Not SUB or MUL
//			end // end if R or I type case
//			default : begin 
//				out = 0; 
//			end
//		endcase 
//	end 
endmodule 