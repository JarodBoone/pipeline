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
// CREATED		"Tue Apr 30 12:10:52 2019"

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
wire	SYNTHESIZED_WIRE_103;
wire	[4:0] SYNTHESIZED_WIRE_104;
wire	[4:0] SYNTHESIZED_WIRE_105;
wire	[4:0] SYNTHESIZED_WIRE_106;
wire	[4:0] SYNTHESIZED_WIRE_107;
wire	[4:0] SYNTHESIZED_WIRE_108;
wire	SYNTHESIZED_WIRE_109;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_110;
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
wire	[31:0] SYNTHESIZED_WIRE_111;
wire	[4:0] SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	[31:0] SYNTHESIZED_WIRE_30;
wire	[31:0] SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	[31:0] SYNTHESIZED_WIRE_35;
wire	[31:0] SYNTHESIZED_WIRE_112;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	[31:0] SYNTHESIZED_WIRE_45;
wire	[2:0] SYNTHESIZED_WIRE_46;
wire	[31:0] SYNTHESIZED_WIRE_113;
wire	[31:0] SYNTHESIZED_WIRE_114;
wire	[31:0] SYNTHESIZED_WIRE_49;
wire	[31:0] SYNTHESIZED_WIRE_50;
wire	[4:0] SYNTHESIZED_WIRE_115;
wire	SYNTHESIZED_WIRE_52;
wire	[31:0] SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_116;
wire	SYNTHESIZED_WIRE_117;
wire	SYNTHESIZED_WIRE_118;
wire	[2:0] SYNTHESIZED_WIRE_63;
wire	[6:0] SYNTHESIZED_WIRE_64;
wire	[2:0] SYNTHESIZED_WIRE_65;
wire	[31:0] SYNTHESIZED_WIRE_66;
wire	[31:0] SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_71;
wire	[31:0] SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_74;
wire	[4:0] SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_81;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_85;
wire	[31:0] SYNTHESIZED_WIRE_87;
wire	[31:0] SYNTHESIZED_WIRE_90;
wire	[2:0] SYNTHESIZED_WIRE_91;
wire	SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_93;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;
wire	[2:0] SYNTHESIZED_WIRE_97;
wire	[31:0] SYNTHESIZED_WIRE_98;
wire	[31:0] SYNTHESIZED_WIRE_99;
wire	[31:0] SYNTHESIZED_WIRE_101;
wire	[31:0] SYNTHESIZED_WIRE_102;





pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_109),
	.c1(SYNTHESIZED_WIRE_84)
	);


iDecoder	b2v_inst1(
	.instruction(SYNTHESIZED_WIRE_0),
	.reg_write(SYNTHESIZED_WIRE_74),
	.branch(SYNTHESIZED_WIRE_110),
	.mem_reg(SYNTHESIZED_WIRE_12),
	.mem_write(SYNTHESIZED_WIRE_13),
	.alu_src(SYNTHESIZED_WIRE_14),
	.jal(SYNTHESIZED_WIRE_118),
	.jalr(SYNTHESIZED_WIRE_117),
	.hlt(SYNTHESIZED_WIRE_69),
	.forward(SYNTHESIZED_WIRE_90),
	.funct3(SYNTHESIZED_WIRE_17),
	.funct7(SYNTHESIZED_WIRE_18),
	.itype(SYNTHESIZED_WIRE_91),
	.read_reg1(SYNTHESIZED_WIRE_104),
	.read_reg2(SYNTHESIZED_WIRE_105),
	.write_reg(SYNTHESIZED_WIRE_80));


forwardingUnit	b2v_inst10(
	.exMem_reg_write(SYNTHESIZED_WIRE_103),
	.decode_read_reg1(SYNTHESIZED_WIRE_104),
	.decode_read_reg2(SYNTHESIZED_WIRE_105),
	.exMem_write_reg(SYNTHESIZED_WIRE_106),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_107),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_108),
	.forwardA(SYNTHESIZED_WIRE_52),
	.forwardB(SYNTHESIZED_WIRE_34),
	.forwardC(SYNTHESIZED_WIRE_15),
	.forwardD(SYNTHESIZED_WIRE_16));


fetchExecute	b2v_inst11(
	.clk(SYNTHESIZED_WIRE_109),
	.in_reg_write(SYNTHESIZED_WIRE_8),
	.in_jal(SYNTHESIZED_WIRE_9),
	.in_jalr(SYNTHESIZED_WIRE_10),
	.in_branch(SYNTHESIZED_WIRE_110),
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
	.in_write_data(SYNTHESIZED_WIRE_111),
	.in_write_reg(SYNTHESIZED_WIRE_28),
	.out_mem_write(SYNTHESIZED_WIRE_39),
	.out_branch(SYNTHESIZED_WIRE_40),
	.out_jal(SYNTHESIZED_WIRE_41),
	.out_jalr(SYNTHESIZED_WIRE_42),
	.out_reg_write(SYNTHESIZED_WIRE_43),
	.out_mem_reg(SYNTHESIZED_WIRE_44),
	.out_alu_src(SYNTHESIZED_WIRE_81),
	.out_funct3(SYNTHESIZED_WIRE_63),
	.out_funct7(SYNTHESIZED_WIRE_64),
	.out_imm(SYNTHESIZED_WIRE_113),
	.out_itype(SYNTHESIZED_WIRE_65),
	.out_nextPC(SYNTHESIZED_WIRE_49),
	.out_PC(SYNTHESIZED_WIRE_50),
	.out_read_data1(SYNTHESIZED_WIRE_53),
	.out_read_data2(SYNTHESIZED_WIRE_114),
	.out_read_reg1(SYNTHESIZED_WIRE_107),
	.out_read_reg2(SYNTHESIZED_WIRE_108),
	.out_write_reg(SYNTHESIZED_WIRE_115));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_29),
	.data0x(SYNTHESIZED_WIRE_30),
	.data1x(SYNTHESIZED_WIRE_31),
	.result(SYNTHESIZED_WIRE_111));

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_32 | SYNTHESIZED_WIRE_33;


lpm_mux0	b2v_inst14(
	.sel(SYNTHESIZED_WIRE_34),
	.data0x(SYNTHESIZED_WIRE_35),
	.data1x(SYNTHESIZED_WIRE_112),
	.result(SYNTHESIZED_WIRE_67));


executeMem	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_109),
	.in_zero(SYNTHESIZED_WIRE_38),
	.in_mem_write(SYNTHESIZED_WIRE_39),
	.in_branch(SYNTHESIZED_WIRE_40),
	.in_jal(SYNTHESIZED_WIRE_41),
	.in_jalr(SYNTHESIZED_WIRE_42),
	.in_reg_write(SYNTHESIZED_WIRE_43),
	.in_mem_reg(SYNTHESIZED_WIRE_44),
	.in_alu_result(SYNTHESIZED_WIRE_45),
	.in_funct3(SYNTHESIZED_WIRE_46),
	.in_imm(SYNTHESIZED_WIRE_113),
	.in_mem_write_data(SYNTHESIZED_WIRE_114),
	.in_nextPC(SYNTHESIZED_WIRE_49),
	.in_PC(SYNTHESIZED_WIRE_50),
	.in_write_reg(SYNTHESIZED_WIRE_115),
	.out_mem_write(SYNTHESIZED_WIRE_85),
	.out_reg_write(SYNTHESIZED_WIRE_103),
	.out_mem_reg(SYNTHESIZED_WIRE_116),
	.out_jal(SYNTHESIZED_WIRE_92),
	.out_jalr(SYNTHESIZED_WIRE_93),
	.out_branch(SYNTHESIZED_WIRE_94),
	.out_zero(SYNTHESIZED_WIRE_95),
	.out_alu_result(SYNTHESIZED_WIRE_112),
	.out_funct3(SYNTHESIZED_WIRE_97),
	.out_imm(SYNTHESIZED_WIRE_98),
	.out_mem_write_data(SYNTHESIZED_WIRE_87),
	.out_nextPC(SYNTHESIZED_WIRE_31),
	.out_PC(SYNTHESIZED_WIRE_99),
	.out_write_reg(SYNTHESIZED_WIRE_106));


lpm_mux0	b2v_inst16(
	.sel(SYNTHESIZED_WIRE_52),
	.data0x(SYNTHESIZED_WIRE_53),
	.data1x(SYNTHESIZED_WIRE_112),
	.result(SYNTHESIZED_WIRE_66));


hazardDetectionUnit	b2v_inst17(
	.branch(SYNTHESIZED_WIRE_110),
	.exMem_mem_reg(SYNTHESIZED_WIRE_116),
	.jalr(SYNTHESIZED_WIRE_117),
	.jal(SYNTHESIZED_WIRE_118),
	.exMem_write_reg(SYNTHESIZED_WIRE_106),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_107),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_108),
	.ifEx_write_reg(SYNTHESIZED_WIRE_115),
	.stall(SYNTHESIZED_WIRE_71));


ALU	b2v_inst2(
	.funct3(SYNTHESIZED_WIRE_63),
	.funct7(SYNTHESIZED_WIRE_64),
	.itype(SYNTHESIZED_WIRE_65),
	.x1(SYNTHESIZED_WIRE_66),
	.x2(SYNTHESIZED_WIRE_67),
	.zero(SYNTHESIZED_WIRE_38),
	.out(SYNTHESIZED_WIRE_45),
	.out_funct3(SYNTHESIZED_WIRE_46));


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_109),
	.hlt(SYNTHESIZED_WIRE_69),
	.jump(SYNTHESIZED_WIRE_70),
	.stall(SYNTHESIZED_WIRE_71),
	.next(SYNTHESIZED_WIRE_72),
	.instruction(SYNTHESIZED_WIRE_0),
	.nextPC(SYNTHESIZED_WIRE_21),
	.PC(SYNTHESIZED_WIRE_22));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_109),
	.reg_write(SYNTHESIZED_WIRE_74),
	.do_reg_write(SYNTHESIZED_WIRE_103),
	.do_write_reg(SYNTHESIZED_WIRE_106),
	.read_reg1(SYNTHESIZED_WIRE_104),
	.read_reg2(SYNTHESIZED_WIRE_105),
	.write_data(SYNTHESIZED_WIRE_111),
	.write_reg(SYNTHESIZED_WIRE_80),
	.out_reg_write(SYNTHESIZED_WIRE_8),
	.out_read_reg1(SYNTHESIZED_WIRE_25),
	.out_read_reg2(SYNTHESIZED_WIRE_26),
	.out_write_reg(SYNTHESIZED_WIRE_28),
	.read_data1(SYNTHESIZED_WIRE_23),
	.read_data2(SYNTHESIZED_WIRE_24));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_81),
	.data0x(SYNTHESIZED_WIRE_114),
	.data1x(SYNTHESIZED_WIRE_113),
	.result(SYNTHESIZED_WIRE_35));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_84),
	.mem_write(SYNTHESIZED_WIRE_85),
	.address(SYNTHESIZED_WIRE_112),
	.write_data(SYNTHESIZED_WIRE_87),
	.out_alu_result(SYNTHESIZED_WIRE_101),
	.read_data(SYNTHESIZED_WIRE_102));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_118),
	.jalr(SYNTHESIZED_WIRE_117),
	.instruction(SYNTHESIZED_WIRE_90),
	.itype(SYNTHESIZED_WIRE_91),
	.out_jal(SYNTHESIZED_WIRE_9),
	.out_jalr(SYNTHESIZED_WIRE_10),
	.imm(SYNTHESIZED_WIRE_19),
	.out_itype(SYNTHESIZED_WIRE_20));


branch_logic	b2v_inst8(
	.jal(SYNTHESIZED_WIRE_92),
	.jalr(SYNTHESIZED_WIRE_93),
	.branch(SYNTHESIZED_WIRE_94),
	.zero(SYNTHESIZED_WIRE_95),
	.alu_result(SYNTHESIZED_WIRE_112),
	.funct3(SYNTHESIZED_WIRE_97),
	.imm(SYNTHESIZED_WIRE_98),
	.PC(SYNTHESIZED_WIRE_99),
	.jump(SYNTHESIZED_WIRE_70),
	.out_jal(SYNTHESIZED_WIRE_33),
	.out_jalr(SYNTHESIZED_WIRE_32),
	.fuck_imm(fuck_imm),
	.fuck_PC(fuck_PC),
	.next(SYNTHESIZED_WIRE_72));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_116),
	.data0x(SYNTHESIZED_WIRE_101),
	.data1x(SYNTHESIZED_WIRE_102),
	.result(SYNTHESIZED_WIRE_30));


endmodule
