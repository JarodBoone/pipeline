module ALU(cs,x1,x2,funct7,funct3,out,zero); 

	// =========== I/O ============
	input wire [2:0] cs; // control signal 
	input wire signed [31:0] x1,x2; // inputs 
	input wire [6:0] funct7; 
	input wire [2:0] funct3; 
	
	output reg signed [31:0] out; // output number
	// output reg overflow; // overflow flag 
	output wire zero; // zero flag 
	
	// =========== Internals ============
	wire x1_neg, x2_neg, out_neg;
	wire [31:0] shift_result; 
	
	// negative value indicators 
	assign zero = (out == 0); 
	
	shifter sh(
		.data(x1), 
		.distance(x2[4:0]), 
		.result(shift_result)
	);
	
	// primary logic block 
	always @* begin 
		case (cs) 
			// Load or store instruction type 
			3'b000, 3'b010 : begin // if it is a load or a store we need to perform an add 
				out <= x1 + x2; // add
				// overflow = ~(~(x1_neg ^ x2_neg) & (out_neg == x1_neg)); // determine if there was overflow 
			end 
			// Branch or Jal instruction type 
			3'b110 : begin // if it is a subtract 
				// eventually will need to case jal and jalr in here, I think they need to be an add? 
				out <= x1 - x2; // subtract 
				// overflow = ((x1_neg ^ x2_neg) & (out_neg == x1_neg) ); // determine if there was overflow 
			end 
			3'b011 , 3'b001 : begin // if it is an R or I type we need to figure out what operation based off funct7 
				if (funct7 == 7'b0100000) begin 
					out <= x1 - x2; // subtract 
					// overflow = ((x1_neg ^ x2_neg) & (out_neg == x1_neg) ); // determine if there was overflow 
				end else begin 
					case (funct3)
						3'b000 : begin 
							out <= x1 + x2; // add
							if (funct7 == 7'b0000001) begin 
								out <= x1 * x2; // multiply 
								// overflow = 0; 
							end 
							// overflow = ~(~(x1_neg ^ x2_neg) & (out_neg == x1_neg)); // determine if there was overflow 
						end 
						
						3'b001 : begin 
							out <= shift_result; // Left shift  
							// overflow = 0; 
						end 
						
						3'b110 : begin 
							out <= x1 | x2; // bitwise OR 
							// overflow = 0; 
						end 
						
						3'b111 : begin 
							out <= x1 & x2; // bitwise AND 
							// overflow = 0; 
						end 
						
						default : begin 
							out <= 0; 
							// overflow = 0; 
						end
					endcase // end funct3 case
				end // end if Not SUB or MUL
			end // end if R or I type case
			default : begin 
				out <= 0; 
				// overflow = 0; 
			end
		endcase 
	end 
endmodule 