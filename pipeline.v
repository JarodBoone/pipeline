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
// CREATED		"Tue Apr 30 00:29:52 2019"

module pipeline(
	CLOCK_50,
	fastclk,
	fuck_imm,
	fuck_PC
);


input wire	CLOCK_50;
output wire	fastclk;
output wire	[31:0] fuck_imm;
output wire	[31:0] fuck_PC;

wire	[31:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_94;
wire	[4:0] SYNTHESIZED_WIRE_95;
wire	[4:0] SYNTHESIZED_WIRE_96;
wire	[4:0] SYNTHESIZED_WIRE_97;
wire	[4:0] SYNTHESIZED_WIRE_5;
wire	[4:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_98;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[2:0] SYNTHESIZED_WIRE_17;
wire	[6:0] SYNTHESIZED_WIRE_18;
wire	[31:0] SYNTHESIZED_WIRE_19;
wire	[2:0] SYNTHESIZED_WIRE_20;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_22;
wire	[31:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[4:0] SYNTHESIZED_WIRE_25;
wire	[4:0] SYNTHESIZED_WIRE_26;
wire	[31:0] SYNTHESIZED_WIRE_99;
wire	[4:0] SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	[31:0] SYNTHESIZED_WIRE_30;
wire	[31:0] SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	[31:0] SYNTHESIZED_WIRE_35;
wire	[31:0] SYNTHESIZED_WIRE_100;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	[31:0] SYNTHESIZED_WIRE_45;
wire	[2:0] SYNTHESIZED_WIRE_46;
wire	[31:0] SYNTHESIZED_WIRE_101;
wire	[31:0] SYNTHESIZED_WIRE_102;
wire	[31:0] SYNTHESIZED_WIRE_49;
wire	[31:0] SYNTHESIZED_WIRE_50;
wire	[4:0] SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	[31:0] SYNTHESIZED_WIRE_53;
wire	[2:0] SYNTHESIZED_WIRE_55;
wire	[6:0] SYNTHESIZED_WIRE_56;
wire	[2:0] SYNTHESIZED_WIRE_57;
wire	[31:0] SYNTHESIZED_WIRE_58;
wire	[31:0] SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_62;
wire	[31:0] SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_65;
wire	[4:0] SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_76;
wire	[31:0] SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_80;
wire	[31:0] SYNTHESIZED_WIRE_81;
wire	[2:0] SYNTHESIZED_WIRE_82;
wire	SYNTHESIZED_WIRE_83;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_86;
wire	[2:0] SYNTHESIZED_WIRE_88;
wire	[31:0] SYNTHESIZED_WIRE_89;
wire	[31:0] SYNTHESIZED_WIRE_90;
wire	SYNTHESIZED_WIRE_91;
wire	[31:0] SYNTHESIZED_WIRE_92;
wire	[31:0] SYNTHESIZED_WIRE_93;





pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_98),
	.c1(SYNTHESIZED_WIRE_75)
	);


iDecoder	b2v_inst1(
	.instruction(SYNTHESIZED_WIRE_0),
	.reg_write(SYNTHESIZED_WIRE_65),
	.branch(SYNTHESIZED_WIRE_11),
	.mem_reg(SYNTHESIZED_WIRE_12),
	.mem_write(SYNTHESIZED_WIRE_13),
	.alu_src(SYNTHESIZED_WIRE_14),
	.jal(SYNTHESIZED_WIRE_79),
	.jalr(SYNTHESIZED_WIRE_80),
	.hlt(SYNTHESIZED_WIRE_61),
	.forward(SYNTHESIZED_WIRE_81),
	.funct3(SYNTHESIZED_WIRE_17),
	.funct7(SYNTHESIZED_WIRE_18),
	.itype(SYNTHESIZED_WIRE_82),
	.read_reg1(SYNTHESIZED_WIRE_95),
	.read_reg2(SYNTHESIZED_WIRE_96),
	.write_reg(SYNTHESIZED_WIRE_71));


forwardingUnit	b2v_inst10(
	.exMem_reg_write(SYNTHESIZED_WIRE_94),
	.decode_read_reg1(SYNTHESIZED_WIRE_95),
	.decode_read_reg2(SYNTHESIZED_WIRE_96),
	.exMem_write_reg(SYNTHESIZED_WIRE_97),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_5),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_6),
	.forwardA(SYNTHESIZED_WIRE_52),
	.forwardB(SYNTHESIZED_WIRE_34),
	.forwardC(SYNTHESIZED_WIRE_15),
	.forwardD(SYNTHESIZED_WIRE_16));


fetchExecute	b2v_inst11(
	.clk(SYNTHESIZED_WIRE_98),
	.in_reg_write(SYNTHESIZED_WIRE_8),
	.in_jal(SYNTHESIZED_WIRE_9),
	.in_jalr(SYNTHESIZED_WIRE_10),
	.in_branch(SYNTHESIZED_WIRE_11),
	.in_mem_reg(SYNTHESIZED_WIRE_12),
	.in_mem_write(SYNTHESIZED_WIRE_13),
	.in_alu_src(SYNTHESIZED_WIRE_14),
	.in_forwardC(SYNTHESIZED_WIRE_15),
	.in_forwardD(SYNTHESIZED_WIRE_16),
	.in_funct3(SYNTHESIZED_WIRE_17),
	.in_funct7(SYNTHESIZED_WIRE_18),
	.in_imm(SYNTHESIZED_WIRE_19),
	.in_itype(SYNTHESIZED_WIRE_20),
	.in_nextPC(SYNTHESIZED_WIRE_21),
	.in_PC(SYNTHESIZED_WIRE_22),
	.in_read_data1(SYNTHESIZED_WIRE_23),
	.in_read_data2(SYNTHESIZED_WIRE_24),
	.in_read_reg1(SYNTHESIZED_WIRE_25),
	.in_read_reg2(SYNTHESIZED_WIRE_26),
	.in_write_data(SYNTHESIZED_WIRE_99),
	.in_write_reg(SYNTHESIZED_WIRE_28),
	.out_mem_write(SYNTHESIZED_WIRE_39),
	.out_branch(SYNTHESIZED_WIRE_40),
	.out_jal(SYNTHESIZED_WIRE_41),
	.out_jalr(SYNTHESIZED_WIRE_42),
	.out_reg_write(SYNTHESIZED_WIRE_43),
	.out_mem_reg(SYNTHESIZED_WIRE_44),
	.out_alu_src(SYNTHESIZED_WIRE_72),
	.out_funct3(SYNTHESIZED_WIRE_55),
	.out_funct7(SYNTHESIZED_WIRE_56),
	.out_imm(SYNTHESIZED_WIRE_101),
	.out_itype(SYNTHESIZED_WIRE_57),
	.out_nextPC(SYNTHESIZED_WIRE_49),
	.out_PC(SYNTHESIZED_WIRE_50),
	.out_read_data1(SYNTHESIZED_WIRE_53),
	.out_read_data2(SYNTHESIZED_WIRE_102),
	.out_read_reg1(SYNTHESIZED_WIRE_5),
	.out_read_reg2(SYNTHESIZED_WIRE_6),
	.out_write_reg(SYNTHESIZED_WIRE_51));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_29),
	.data0x(SYNTHESIZED_WIRE_30),
	.data1x(SYNTHESIZED_WIRE_31),
	.result(SYNTHESIZED_WIRE_99));

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_32 | SYNTHESIZED_WIRE_33;


lpm_mux0	b2v_inst14(
	.sel(SYNTHESIZED_WIRE_34),
	.data0x(SYNTHESIZED_WIRE_35),
	.data1x(SYNTHESIZED_WIRE_100),
	.result(SYNTHESIZED_WIRE_59));


executeMem	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_98),
	.in_zero(SYNTHESIZED_WIRE_38),
	.in_mem_write(SYNTHESIZED_WIRE_39),
	.in_branch(SYNTHESIZED_WIRE_40),
	.in_jal(SYNTHESIZED_WIRE_41),
	.in_jalr(SYNTHESIZED_WIRE_42),
	.in_reg_write(SYNTHESIZED_WIRE_43),
	.in_mem_reg(SYNTHESIZED_WIRE_44),
	.in_alu_result(SYNTHESIZED_WIRE_45),
	.in_funct3(SYNTHESIZED_WIRE_46),
	.in_imm(SYNTHESIZED_WIRE_101),
	.in_mem_write_data(SYNTHESIZED_WIRE_102),
	.in_nextPC(SYNTHESIZED_WIRE_49),
	.in_PC(SYNTHESIZED_WIRE_50),
	.in_write_reg(SYNTHESIZED_WIRE_51),
	.out_mem_write(SYNTHESIZED_WIRE_76),
	.out_reg_write(SYNTHESIZED_WIRE_94),
	.out_mem_reg(SYNTHESIZED_WIRE_91),
	.out_jal(SYNTHESIZED_WIRE_83),
	.out_jalr(SYNTHESIZED_WIRE_84),
	.out_branch(SYNTHESIZED_WIRE_85),
	.out_zero(SYNTHESIZED_WIRE_86),
	.out_alu_result(SYNTHESIZED_WIRE_100),
	.out_funct3(SYNTHESIZED_WIRE_88),
	.out_imm(SYNTHESIZED_WIRE_89),
	.out_mem_write_data(SYNTHESIZED_WIRE_78),
	.out_nextPC(SYNTHESIZED_WIRE_31),
	.out_PC(SYNTHESIZED_WIRE_90),
	.out_write_reg(SYNTHESIZED_WIRE_97));


lpm_mux0	b2v_inst16(
	.sel(SYNTHESIZED_WIRE_52),
	.data0x(SYNTHESIZED_WIRE_53),
	.data1x(SYNTHESIZED_WIRE_100),
	.result(SYNTHESIZED_WIRE_58));


ALU	b2v_inst2(
	.funct3(SYNTHESIZED_WIRE_55),
	.funct7(SYNTHESIZED_WIRE_56),
	.itype(SYNTHESIZED_WIRE_57),
	.x1(SYNTHESIZED_WIRE_58),
	.x2(SYNTHESIZED_WIRE_59),
	.zero(SYNTHESIZED_WIRE_38),
	.out(SYNTHESIZED_WIRE_45),
	.out_funct3(SYNTHESIZED_WIRE_46));


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_98),
	.hlt(SYNTHESIZED_WIRE_61),
	.jump(SYNTHESIZED_WIRE_62),
	.next(SYNTHESIZED_WIRE_63),
	.instruction(SYNTHESIZED_WIRE_0),
	.nextPC(SYNTHESIZED_WIRE_21),
	.PC(SYNTHESIZED_WIRE_22));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_98),
	.reg_write(SYNTHESIZED_WIRE_65),
	.do_reg_write(SYNTHESIZED_WIRE_94),
	.do_write_reg(SYNTHESIZED_WIRE_97),
	.read_reg1(SYNTHESIZED_WIRE_95),
	.read_reg2(SYNTHESIZED_WIRE_96),
	.write_data(SYNTHESIZED_WIRE_99),
	.write_reg(SYNTHESIZED_WIRE_71),
	.out_reg_write(SYNTHESIZED_WIRE_8),
	.out_read_reg1(SYNTHESIZED_WIRE_25),
	.out_read_reg2(SYNTHESIZED_WIRE_26),
	.out_write_reg(SYNTHESIZED_WIRE_28),
	.read_data1(SYNTHESIZED_WIRE_23),
	.read_data2(SYNTHESIZED_WIRE_24));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_72),
	.data0x(SYNTHESIZED_WIRE_102),
	.data1x(SYNTHESIZED_WIRE_101),
	.result(SYNTHESIZED_WIRE_35));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_75),
	.mem_write(SYNTHESIZED_WIRE_76),
	.address(SYNTHESIZED_WIRE_100),
	.write_data(SYNTHESIZED_WIRE_78),
	.out_alu_result(SYNTHESIZED_WIRE_92),
	.read_data(SYNTHESIZED_WIRE_93));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_79),
	.jalr(SYNTHESIZED_WIRE_80),
	.instruction(SYNTHESIZED_WIRE_81),
	.itype(SYNTHESIZED_WIRE_82),
	.out_jal(SYNTHESIZED_WIRE_9),
	.out_jalr(SYNTHESIZED_WIRE_10),
	.imm(SYNTHESIZED_WIRE_19),
	.out_itype(SYNTHESIZED_WIRE_20));


branch_logic	b2v_inst8(
	.jal(SYNTHESIZED_WIRE_83),
	.jalr(SYNTHESIZED_WIRE_84),
	.branch(SYNTHESIZED_WIRE_85),
	.zero(SYNTHESIZED_WIRE_86),
	.alu_result(SYNTHESIZED_WIRE_100),
	.funct3(SYNTHESIZED_WIRE_88),
	.imm(SYNTHESIZED_WIRE_89),
	.PC(SYNTHESIZED_WIRE_90),
	.jump(SYNTHESIZED_WIRE_62),
	.out_jal(SYNTHESIZED_WIRE_33),
	.out_jalr(SYNTHESIZED_WIRE_32),
	.fuck_imm(fuck_imm),
	.fuck_PC(fuck_PC),
	.next(SYNTHESIZED_WIRE_63));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_91),
	.data0x(SYNTHESIZED_WIRE_92),
	.data1x(SYNTHESIZED_WIRE_93),
	.result(SYNTHESIZED_WIRE_30));


endmodule
