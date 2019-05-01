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
// CREATED		"Wed May 01 00:03:36 2019"

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

wire	SYNTHESIZED_WIRE_113;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_114;
wire	[4:0] SYNTHESIZED_WIRE_115;
wire	[4:0] SYNTHESIZED_WIRE_116;
wire	[4:0] SYNTHESIZED_WIRE_117;
wire	[4:0] SYNTHESIZED_WIRE_6;
wire	[4:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_118;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_119;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[2:0] SYNTHESIZED_WIRE_19;
wire	[6:0] SYNTHESIZED_WIRE_20;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	[2:0] SYNTHESIZED_WIRE_22;
wire	[31:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_26;
wire	[4:0] SYNTHESIZED_WIRE_27;
wire	[4:0] SYNTHESIZED_WIRE_28;
wire	[31:0] SYNTHESIZED_WIRE_120;
wire	[4:0] SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	[31:0] SYNTHESIZED_WIRE_32;
wire	[31:0] SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	[31:0] SYNTHESIZED_WIRE_37;
wire	[31:0] SYNTHESIZED_WIRE_121;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_122;
wire	SYNTHESIZED_WIRE_123;
wire	[31:0] SYNTHESIZED_WIRE_47;
wire	[2:0] SYNTHESIZED_WIRE_48;
wire	[31:0] SYNTHESIZED_WIRE_124;
wire	[31:0] SYNTHESIZED_WIRE_50;
wire	[31:0] SYNTHESIZED_WIRE_51;
wire	[31:0] SYNTHESIZED_WIRE_52;
wire	[4:0] SYNTHESIZED_WIRE_125;
wire	SYNTHESIZED_WIRE_54;
wire	[31:0] SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_126;
wire	SYNTHESIZED_WIRE_127;
wire	[4:0] SYNTHESIZED_WIRE_128;
wire	SYNTHESIZED_WIRE_129;
wire	[31:0] SYNTHESIZED_WIRE_130;
wire	SYNTHESIZED_WIRE_69;
wire	[2:0] SYNTHESIZED_WIRE_71;
wire	[6:0] SYNTHESIZED_WIRE_72;
wire	[2:0] SYNTHESIZED_WIRE_73;
wire	[31:0] SYNTHESIZED_WIRE_74;
wire	[31:0] SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_131;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_81;
wire	[31:0] SYNTHESIZED_WIRE_82;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;
wire	[31:0] SYNTHESIZED_WIRE_97;
wire	[31:0] SYNTHESIZED_WIRE_100;
wire	[2:0] SYNTHESIZED_WIRE_101;
wire	SYNTHESIZED_WIRE_102;
wire	SYNTHESIZED_WIRE_103;
wire	SYNTHESIZED_WIRE_104;
wire	SYNTHESIZED_WIRE_105;
wire	[2:0] SYNTHESIZED_WIRE_107;
wire	[31:0] SYNTHESIZED_WIRE_108;
wire	[31:0] SYNTHESIZED_WIRE_109;
wire	SYNTHESIZED_WIRE_110;
wire	[31:0] SYNTHESIZED_WIRE_111;
wire	[31:0] SYNTHESIZED_WIRE_112;





pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_118),
	.c1(SYNTHESIZED_WIRE_94)
	);


iDecoder	b2v_inst1(
	.bubble(SYNTHESIZED_WIRE_113),
	.instruction(SYNTHESIZED_WIRE_1),
	.reg_write(SYNTHESIZED_WIRE_84),
	.branch(SYNTHESIZED_WIRE_119),
	.mem_reg(SYNTHESIZED_WIRE_13),
	.mem_write(SYNTHESIZED_WIRE_14),
	.alu_src(SYNTHESIZED_WIRE_15),
	.jal(SYNTHESIZED_WIRE_127),
	.jalr(SYNTHESIZED_WIRE_126),
	.hlt(SYNTHESIZED_WIRE_78),
	.forward(SYNTHESIZED_WIRE_100),
	.funct3(SYNTHESIZED_WIRE_19),
	.funct7(SYNTHESIZED_WIRE_20),
	.itype(SYNTHESIZED_WIRE_101),
	.read_reg1(SYNTHESIZED_WIRE_115),
	.read_reg2(SYNTHESIZED_WIRE_116),
	.write_reg(SYNTHESIZED_WIRE_128));


forwardingUnit	b2v_inst10(
	.exMem_reg_write(SYNTHESIZED_WIRE_114),
	.decode_read_reg1(SYNTHESIZED_WIRE_115),
	.decode_read_reg2(SYNTHESIZED_WIRE_116),
	.exMem_write_reg(SYNTHESIZED_WIRE_117),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_6),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_7),
	.forwardA(SYNTHESIZED_WIRE_54),
	.forwardB(SYNTHESIZED_WIRE_129),
	.forwardC(SYNTHESIZED_WIRE_16),
	.forwardD(SYNTHESIZED_WIRE_17));


fetchExecute	b2v_inst11(
	.clk(SYNTHESIZED_WIRE_118),
	.in_reg_write(SYNTHESIZED_WIRE_9),
	.in_jal(SYNTHESIZED_WIRE_10),
	.in_jalr(SYNTHESIZED_WIRE_11),
	.in_branch(SYNTHESIZED_WIRE_119),
	.in_mem_reg(SYNTHESIZED_WIRE_13),
	.in_mem_write(SYNTHESIZED_WIRE_14),
	.in_alu_src(SYNTHESIZED_WIRE_15),
	.in_forwardC(SYNTHESIZED_WIRE_16),
	.in_forwardD(SYNTHESIZED_WIRE_17),
	.in_bubble(SYNTHESIZED_WIRE_113),
	.in_funct3(SYNTHESIZED_WIRE_19),
	.in_funct7(SYNTHESIZED_WIRE_20),
	.in_imm(SYNTHESIZED_WIRE_21),
	.in_itype(SYNTHESIZED_WIRE_22),
	.in_nextPC(SYNTHESIZED_WIRE_23),
	.in_PC(SYNTHESIZED_WIRE_24),
	.in_read_data1(SYNTHESIZED_WIRE_25),
	.in_read_data2(SYNTHESIZED_WIRE_26),
	.in_read_reg1(SYNTHESIZED_WIRE_27),
	.in_read_reg2(SYNTHESIZED_WIRE_28),
	.in_write_data(SYNTHESIZED_WIRE_120),
	.in_write_reg(SYNTHESIZED_WIRE_30),
	.out_mem_write(SYNTHESIZED_WIRE_41),
	.out_branch(SYNTHESIZED_WIRE_42),
	.out_jal(SYNTHESIZED_WIRE_43),
	.out_jalr(SYNTHESIZED_WIRE_44),
	.out_reg_write(SYNTHESIZED_WIRE_122),
	.out_mem_reg(SYNTHESIZED_WIRE_123),
	.out_alu_src(SYNTHESIZED_WIRE_131),
	.out_funct3(SYNTHESIZED_WIRE_71),
	.out_funct7(SYNTHESIZED_WIRE_72),
	.out_imm(SYNTHESIZED_WIRE_124),
	.out_itype(SYNTHESIZED_WIRE_73),
	.out_nextPC(SYNTHESIZED_WIRE_51),
	.out_PC(SYNTHESIZED_WIRE_52),
	.out_read_data1(SYNTHESIZED_WIRE_55),
	.out_read_data2(SYNTHESIZED_WIRE_130),
	.out_read_reg1(SYNTHESIZED_WIRE_6),
	.out_read_reg2(SYNTHESIZED_WIRE_7),
	.out_write_reg(SYNTHESIZED_WIRE_125));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_31),
	.data0x(SYNTHESIZED_WIRE_32),
	.data1x(SYNTHESIZED_WIRE_33),
	.result(SYNTHESIZED_WIRE_120));

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_34 | SYNTHESIZED_WIRE_35;


lpm_mux0	b2v_inst14(
	.sel(SYNTHESIZED_WIRE_36),
	.data0x(SYNTHESIZED_WIRE_37),
	.data1x(SYNTHESIZED_WIRE_121),
	.result(SYNTHESIZED_WIRE_75));


executeMem	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_118),
	.in_zero(SYNTHESIZED_WIRE_40),
	.in_mem_write(SYNTHESIZED_WIRE_41),
	.in_branch(SYNTHESIZED_WIRE_42),
	.in_jal(SYNTHESIZED_WIRE_43),
	.in_jalr(SYNTHESIZED_WIRE_44),
	.in_reg_write(SYNTHESIZED_WIRE_122),
	.in_mem_reg(SYNTHESIZED_WIRE_123),
	.in_alu_result(SYNTHESIZED_WIRE_47),
	.in_funct3(SYNTHESIZED_WIRE_48),
	.in_imm(SYNTHESIZED_WIRE_124),
	.in_mem_write_data(SYNTHESIZED_WIRE_50),
	.in_nextPC(SYNTHESIZED_WIRE_51),
	.in_PC(SYNTHESIZED_WIRE_52),
	.in_write_reg(SYNTHESIZED_WIRE_125),
	.out_mem_write(SYNTHESIZED_WIRE_95),
	.out_reg_write(SYNTHESIZED_WIRE_114),
	.out_mem_reg(SYNTHESIZED_WIRE_110),
	.out_jal(SYNTHESIZED_WIRE_102),
	.out_jalr(SYNTHESIZED_WIRE_103),
	.out_branch(SYNTHESIZED_WIRE_104),
	.out_zero(SYNTHESIZED_WIRE_105),
	.out_alu_result(SYNTHESIZED_WIRE_121),
	.out_funct3(SYNTHESIZED_WIRE_107),
	.out_imm(SYNTHESIZED_WIRE_108),
	.out_mem_write_data(SYNTHESIZED_WIRE_97),
	.out_nextPC(SYNTHESIZED_WIRE_33),
	.out_PC(SYNTHESIZED_WIRE_109),
	.out_write_reg(SYNTHESIZED_WIRE_117));


lpm_mux0	b2v_inst16(
	.sel(SYNTHESIZED_WIRE_54),
	.data0x(SYNTHESIZED_WIRE_55),
	.data1x(SYNTHESIZED_WIRE_121),
	.result(SYNTHESIZED_WIRE_74));


hazardDetectionUnit	b2v_inst17(
	.branch(SYNTHESIZED_WIRE_119),
	.jalr(SYNTHESIZED_WIRE_126),
	.jal(SYNTHESIZED_WIRE_127),
	.ifEx_mem_reg(SYNTHESIZED_WIRE_123),
	.ifEx_reg_write(SYNTHESIZED_WIRE_122),
	.decode_read_reg1(SYNTHESIZED_WIRE_115),
	.decode_read_reg2(SYNTHESIZED_WIRE_116),
	.decode_write_reg(SYNTHESIZED_WIRE_128),
	.ifEx_write_reg(SYNTHESIZED_WIRE_125),
	.stall(SYNTHESIZED_WIRE_80),
	.bubble(SYNTHESIZED_WIRE_81));


lpm_mux0	b2v_inst18(
	.sel(SYNTHESIZED_WIRE_129),
	.data0x(SYNTHESIZED_WIRE_130),
	.data1x(SYNTHESIZED_WIRE_121),
	.result(SYNTHESIZED_WIRE_50));

assign	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_69 & SYNTHESIZED_WIRE_129;


ALU	b2v_inst2(
	.funct3(SYNTHESIZED_WIRE_71),
	.funct7(SYNTHESIZED_WIRE_72),
	.itype(SYNTHESIZED_WIRE_73),
	.x1(SYNTHESIZED_WIRE_74),
	.x2(SYNTHESIZED_WIRE_75),
	.zero(SYNTHESIZED_WIRE_40),
	.out(SYNTHESIZED_WIRE_47),
	.out_funct3(SYNTHESIZED_WIRE_48));

assign	SYNTHESIZED_WIRE_69 =  ~SYNTHESIZED_WIRE_131;


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_118),
	.hlt(SYNTHESIZED_WIRE_78),
	.jump(SYNTHESIZED_WIRE_79),
	.stall(SYNTHESIZED_WIRE_80),
	.in_bubble(SYNTHESIZED_WIRE_81),
	.next(SYNTHESIZED_WIRE_82),
	.bubble(SYNTHESIZED_WIRE_113),
	.instruction(SYNTHESIZED_WIRE_1),
	.nextPC(SYNTHESIZED_WIRE_23),
	.PC(SYNTHESIZED_WIRE_24));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_118),
	.reg_write(SYNTHESIZED_WIRE_84),
	.do_reg_write(SYNTHESIZED_WIRE_114),
	.do_write_reg(SYNTHESIZED_WIRE_117),
	.read_reg1(SYNTHESIZED_WIRE_115),
	.read_reg2(SYNTHESIZED_WIRE_116),
	.write_data(SYNTHESIZED_WIRE_120),
	.write_reg(SYNTHESIZED_WIRE_128),
	.out_reg_write(SYNTHESIZED_WIRE_9),
	.out_read_reg1(SYNTHESIZED_WIRE_27),
	.out_read_reg2(SYNTHESIZED_WIRE_28),
	.out_write_reg(SYNTHESIZED_WIRE_30),
	.read_data1(SYNTHESIZED_WIRE_25),
	.read_data2(SYNTHESIZED_WIRE_26));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_131),
	.data0x(SYNTHESIZED_WIRE_130),
	.data1x(SYNTHESIZED_WIRE_124),
	.result(SYNTHESIZED_WIRE_37));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_94),
	.mem_write(SYNTHESIZED_WIRE_95),
	.address(SYNTHESIZED_WIRE_121),
	.write_data(SYNTHESIZED_WIRE_97),
	.out_alu_result(SYNTHESIZED_WIRE_111),
	.read_data(SYNTHESIZED_WIRE_112));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_127),
	.jalr(SYNTHESIZED_WIRE_126),
	.instruction(SYNTHESIZED_WIRE_100),
	.itype(SYNTHESIZED_WIRE_101),
	.out_jal(SYNTHESIZED_WIRE_10),
	.out_jalr(SYNTHESIZED_WIRE_11),
	.imm(SYNTHESIZED_WIRE_21),
	.out_itype(SYNTHESIZED_WIRE_22));


branch_logic	b2v_inst8(
	.jal(SYNTHESIZED_WIRE_102),
	.jalr(SYNTHESIZED_WIRE_103),
	.branch(SYNTHESIZED_WIRE_104),
	.zero(SYNTHESIZED_WIRE_105),
	.alu_result(SYNTHESIZED_WIRE_121),
	.funct3(SYNTHESIZED_WIRE_107),
	.imm(SYNTHESIZED_WIRE_108),
	.PC(SYNTHESIZED_WIRE_109),
	.jump(SYNTHESIZED_WIRE_79),
	.out_jal(SYNTHESIZED_WIRE_35),
	.out_jalr(SYNTHESIZED_WIRE_34),
	.fuck_imm(fuck_imm),
	.fuck_PC(fuck_PC),
	.next(SYNTHESIZED_WIRE_82));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_110),
	.data0x(SYNTHESIZED_WIRE_111),
	.data1x(SYNTHESIZED_WIRE_112),
	.result(SYNTHESIZED_WIRE_32));


endmodule
