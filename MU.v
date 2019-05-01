module MU(reg1, reg2, alu_result, forwardA, forwardB, real_result);

input wire [31:0] reg1;
input wire [31:0] reg2;
input wire [31:0] alu_result;
input wire forwardA;
input wire forwardB;

wire signed [63:0] res1;
wire signed [63:0] res2;
wire signed [63:0] res3;

output wire signed [31:0] real_result;

	multiplier mult1(
		.dataa(reg1), 
		.datab(reg2), 
		.result(res1)
	);
	
	multiplier mult2(
		.dataa(reg1), 
		.datab(alu_result), 
		.result(res2)
	);	
	
	multiplier mult3(
		.dataa(alu_result), 
		.datab(reg2), 
		.result(res3)
	);
	
assign real_result = (forwardA) ? res3[31:0] : (forwardB) ? res2[31:0] : res1[31:0];

endmodule