module ImmediateGenerator(itype,jal,instruction,imm,jalr); 
	input wire [31:0] instruction; 
	input wire [2:0] itype; 
	input wire jal, jalr; 
//	output reg [31:0] imm;
	output wire [31:0] imm;
	
	wire branch;
	wire s_type;
	//wire [31:0] imm_val;
//	
//	assign imm[31:20] = {12{instruction[31]}}; // 12 bits
//	assign imm[19:12] = ((jal) & (itype == 3'b110) ? instruction[19:12] : {8{instruction[31]}}); // 8 bits 
//	assign imm[11] = (jal ?  jal : instruction[31])
//	
	
/*	always @* begin 
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
		
		
	end */

	assign branch = &itype[2:1];
	assign s_type = ((~itype[0])&itype[1]&(~itype[2]));
	assign imm[31:20] = {12{instruction[31]}};
	assign imm[19:12] = (jal) ? instruction[19:12] : {8{instruction[31]}};
	assign imm[11] = (jal) ? instruction[20] : (branch) ? instruction[7] : instruction[31];
	assign imm[10:5] = instruction[30:25];
	assign imm[4:1] = (jal) ? instruction[24:21] : (branch | s_type) ? instruction[11:8] :instruction[24:21];
	assign imm[0] = (jal | branch) ? 1'b0 :(s_type) ? instruction[7]: instruction[20];
	//assign imm = imm_val;//(jal | jalr | branch) ? imm_val >>> 2 : imm_val;

endmodule 