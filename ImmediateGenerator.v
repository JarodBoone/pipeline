module ImmediateGenerator(itype,jal,instruction,imm,jalr); 
	input wire [31:0] instruction; 
	input wire [2:0] itype; 
	input wire jal, jalr; 
	output reg [31:0] imm; 
//	output wire [31:0] imm; 
//	
//	assign imm[31:20] = {12{instruction[31]}}; // 12 bits
//	assign imm[19:12] = ((jal) & (itype == 3'b110) ? instruction[19:12] : {8{instruction[31]}}); // 8 bits 
//	assign imm[11] = (jal ?  jal : instruction[31])
//	
	
	always @* begin 
		case (itype) 
			3'b000,3'b001 : begin 
				// imm = instruction[31:20] >>> 20; 
				if (instruction[31] == 1) begin 
					imm = {20'b1111_1111_1111_1111_1111,instruction[31:20]};
				end else begin 
					imm = {20'b0000_0000_0000_0000_0000,instruction[31:20]};
				end 
				
			end 
			
			3'b010 : begin 
				// imm = {(instruction[31:25] >>> 20),instruction[11:7]};
				if (instruction[31] == 1) begin 
					imm = {20'b1111_1111_1111_1111_1111,instruction[31:25],instruction[11:7]};
				end else begin 
					imm = {20'b0000_0000_0000_0000_0000,instruction[31:25],instruction[11:7]};
				end 
			end 
			
			3'b110 : begin // branch 
				if (jal) begin 
					if (instruction[31] == 1) begin 
						imm = {11'b111_1111_1111,instruction[31],instruction[19:12],instruction[20],instruction[30:21],1'b0};
					end else begin 
						imm = {11'b000_0000_0000,instruction[31],instruction[19:12],instruction[20],instruction[30:21],1'b0};
					end 
				
				end else if (jalr) begin 
					if (instruction[31] == 1) begin 
						imm = {20'b1111_1111_1111_1111_1111,instruction[31:20]};
					end else begin 
						imm = {20'b0000_0000_0000_0000_0000,instruction[31:20]};
					end 
				
				end else begin 
					if (instruction[31] == 1) begin 
						imm = {19'b111_1111_1111_1111_1111,instruction[31],instruction[7],instruction[30:25],instruction[11:8],1'b0};
					end else begin 
						imm = {19'b000_0000_0000_0000_0000,instruction[31],instruction[7],instruction[30:25],instruction[11:8],1'b0};
					end 
				end 
				
			end 
			
			default : begin
				imm = 0; 
			end
		
		
		endcase 
	end 

endmodule 