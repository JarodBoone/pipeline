module MultiplicationUnit(x1,
	x2,
	fwd,
	forwardA,
	forwardB,
	out);
	
	input wire [31:0] x1,x2,fwd; 
	input wire forwardA, forwardB; 
	
	output wire signed [31:0] out; 
	
	wire signed [64:0] mult_result1,mult_result2,mult_result3; 
	multiplier mult1(
		.dataa(x1), 
		.datab(x2), 
		.result(mult_result1)
	);
	
	multiplier mult2(
		.dataa(x1), 
		.datab(fwd), 
		.result(mult_result2)
	);
	
	multiplier mult3(
		.dataa(fwd), 
		.datab(x2), 
		.result(mult_result3)
	);
	
	assign out = ~(forwardA | forwardB) ? mult_result1[31:0] : (forwardA ? mult_result3[31:0] : mult_result2[31:0]); 
	
endmodule 