// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Wed Apr 03 10:52:46 2019"

module SAFEV(
	CLOCK_50,
	regwrite_data
);


input wire	CLOCK_50;
output wire	[31:0] regwrite_data;

wire	mem_write;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	[31:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	[2:0] SYNTHESIZED_WIRE_45;
wire	[2:0] SYNTHESIZED_WIRE_46;
wire	[6:0] SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	[31:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[31:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	[4:0] SYNTHESIZED_WIRE_17;
wire	[4:0] SYNTHESIZED_WIRE_18;
wire	[31:0] SYNTHESIZED_WIRE_19;
wire	[4:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_48;
wire	[31:0] SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_50;
wire	[31:0] SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	[31:0] SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	[31:0] SYNTHESIZED_WIRE_42;

assign	regwrite_data = SYNTHESIZED_WIRE_19;




pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_47),
	.c1(SYNTHESIZED_WIRE_24));


iDecoder	b2v_inst1(
	.instruction(SYNTHESIZED_WIRE_0),
	.hlt(SYNTHESIZED_WIRE_12),
	.reg_write(SYNTHESIZED_WIRE_16),
	.mem_reg(SYNTHESIZED_WIRE_40),
	.mem_write(mem_write),
	.alu_src(SYNTHESIZED_WIRE_21),
	.branch(SYNTHESIZED_WIRE_33),
	.jal(SYNTHESIZED_WIRE_44),
	.jalr(SYNTHESIZED_WIRE_43),
	.forward(SYNTHESIZED_WIRE_29),
	.funct3(SYNTHESIZED_WIRE_46),
	.funct7(SYNTHESIZED_WIRE_8),
	.itype(SYNTHESIZED_WIRE_45),
	.read_reg1(SYNTHESIZED_WIRE_17),
	.read_reg2(SYNTHESIZED_WIRE_18),
	.write_reg(SYNTHESIZED_WIRE_20));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_1),
	.data0x(SYNTHESIZED_WIRE_2),
	.data1x(SYNTHESIZED_WIRE_3),
	.result(SYNTHESIZED_WIRE_19));

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_43 | SYNTHESIZED_WIRE_44;


ALU	b2v_inst2(
	.cs(SYNTHESIZED_WIRE_45),
	.funct3(SYNTHESIZED_WIRE_46),
	.funct7(SYNTHESIZED_WIRE_8),
	.x1(SYNTHESIZED_WIRE_9),
	.x2(SYNTHESIZED_WIRE_10),
	.zero(SYNTHESIZED_WIRE_34),
	.out(SYNTHESIZED_WIRE_50));


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_47),
	.hlt(SYNTHESIZED_WIRE_12),
	.jump(SYNTHESIZED_WIRE_13),
	.imm(SYNTHESIZED_WIRE_14),
	.instruction(SYNTHESIZED_WIRE_0),
	.nextPC(SYNTHESIZED_WIRE_3),
	.PC(SYNTHESIZED_WIRE_39));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_47),
	.reg_write(SYNTHESIZED_WIRE_16),
	.read_reg1(SYNTHESIZED_WIRE_17),
	.read_reg2(SYNTHESIZED_WIRE_18),
	.write_data(SYNTHESIZED_WIRE_19),
	.write_reg(SYNTHESIZED_WIRE_20),
	.read_data1(SYNTHESIZED_WIRE_9),
	.read_data2(SYNTHESIZED_WIRE_48));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_21),
	.data0x(SYNTHESIZED_WIRE_48),
	.data1x(SYNTHESIZED_WIRE_49),
	.result(SYNTHESIZED_WIRE_10));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_24),
	.mem_write(mem_write),
	.address(SYNTHESIZED_WIRE_50),
	.write_data(SYNTHESIZED_WIRE_48),
	.read_data(SYNTHESIZED_WIRE_42));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_44),
	.jalr(SYNTHESIZED_WIRE_43),
	.instruction(SYNTHESIZED_WIRE_29),
	.itype(SYNTHESIZED_WIRE_45),
	.imm(SYNTHESIZED_WIRE_49));


branch_logic	b2v_inst8(
	.clk(SYNTHESIZED_WIRE_47),
	.jal(SYNTHESIZED_WIRE_44),
	.branch(SYNTHESIZED_WIRE_33),
	.zero(SYNTHESIZED_WIRE_34),
	.jalr(SYNTHESIZED_WIRE_43),
	.arith(SYNTHESIZED_WIRE_50),
	.funct3(SYNTHESIZED_WIRE_46),
	.imm(SYNTHESIZED_WIRE_49),
	.PC(SYNTHESIZED_WIRE_39),
	.jump(SYNTHESIZED_WIRE_13),
	.next(SYNTHESIZED_WIRE_14));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_40),
	.data0x(SYNTHESIZED_WIRE_50),
	.data1x(SYNTHESIZED_WIRE_42),
	.result(SYNTHESIZED_WIRE_2));


endmodule
