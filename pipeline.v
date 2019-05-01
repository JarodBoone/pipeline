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
// CREATED		"Wed May 01 10:59:28 2019"

module pipeline(
	CLOCK_50
);


input wire	CLOCK_50;

wire	SYNTHESIZED_WIRE_122;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_123;
wire	[4:0] SYNTHESIZED_WIRE_124;
wire	[4:0] SYNTHESIZED_WIRE_125;
wire	[4:0] SYNTHESIZED_WIRE_126;
wire	[4:0] SYNTHESIZED_WIRE_6;
wire	[4:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_127;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_128;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[2:0] SYNTHESIZED_WIRE_19;
wire	[2:0] SYNTHESIZED_WIRE_20;
wire	[6:0] SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_22;
wire	[2:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_26;
wire	[31:0] SYNTHESIZED_WIRE_27;
wire	[4:0] SYNTHESIZED_WIRE_28;
wire	[4:0] SYNTHESIZED_WIRE_29;
wire	[31:0] SYNTHESIZED_WIRE_129;
wire	[4:0] SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	[31:0] SYNTHESIZED_WIRE_33;
wire	[31:0] SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_130;
wire	[31:0] SYNTHESIZED_WIRE_38;
wire	[31:0] SYNTHESIZED_WIRE_131;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_132;
wire	SYNTHESIZED_WIRE_133;
wire	[31:0] SYNTHESIZED_WIRE_48;
wire	[2:0] SYNTHESIZED_WIRE_49;
wire	[31:0] SYNTHESIZED_WIRE_134;
wire	[31:0] SYNTHESIZED_WIRE_51;
wire	[31:0] SYNTHESIZED_WIRE_52;
wire	[31:0] SYNTHESIZED_WIRE_53;
wire	[4:0] SYNTHESIZED_WIRE_135;
wire	SYNTHESIZED_WIRE_136;
wire	[31:0] SYNTHESIZED_WIRE_137;
wire	SYNTHESIZED_WIRE_138;
wire	SYNTHESIZED_WIRE_139;
wire	[4:0] SYNTHESIZED_WIRE_140;
wire	SYNTHESIZED_WIRE_141;
wire	[31:0] SYNTHESIZED_WIRE_142;
wire	SYNTHESIZED_WIRE_70;
wire	[2:0] SYNTHESIZED_WIRE_72;
wire	[2:0] SYNTHESIZED_WIRE_73;
wire	[6:0] SYNTHESIZED_WIRE_74;
wire	[31:0] SYNTHESIZED_WIRE_75;
wire	[31:0] SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_143;
wire	SYNTHESIZED_WIRE_83;
wire	[31:0] SYNTHESIZED_WIRE_84;
wire	[31:0] SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_87;
wire	SYNTHESIZED_WIRE_88;
wire	SYNTHESIZED_WIRE_89;
wire	SYNTHESIZED_WIRE_90;
wire	[31:0] SYNTHESIZED_WIRE_91;
wire	SYNTHESIZED_WIRE_93;
wire	SYNTHESIZED_WIRE_103;
wire	SYNTHESIZED_WIRE_104;
wire	[31:0] SYNTHESIZED_WIRE_106;
wire	[31:0] SYNTHESIZED_WIRE_109;
wire	[2:0] SYNTHESIZED_WIRE_110;
wire	SYNTHESIZED_WIRE_111;
wire	SYNTHESIZED_WIRE_112;
wire	SYNTHESIZED_WIRE_113;
wire	SYNTHESIZED_WIRE_114;
wire	[2:0] SYNTHESIZED_WIRE_116;
wire	[31:0] SYNTHESIZED_WIRE_117;
wire	[31:0] SYNTHESIZED_WIRE_118;
wire	SYNTHESIZED_WIRE_119;
wire	[31:0] SYNTHESIZED_WIRE_120;
wire	[31:0] SYNTHESIZED_WIRE_121;





pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_127),
	.c1(SYNTHESIZED_WIRE_103));


iDecoder	b2v_inst1(
	.bubble(SYNTHESIZED_WIRE_122),
	.instruction(SYNTHESIZED_WIRE_1),
	.reg_write(SYNTHESIZED_WIRE_93),
	.branch(SYNTHESIZED_WIRE_128),
	.mem_reg(SYNTHESIZED_WIRE_13),
	.mem_write(SYNTHESIZED_WIRE_14),
	.alu_src(SYNTHESIZED_WIRE_15),
	.jal(SYNTHESIZED_WIRE_139),
	.jalr(SYNTHESIZED_WIRE_138),
	.hlt(SYNTHESIZED_WIRE_87),
	.ALUop(SYNTHESIZED_WIRE_19),
	.forward(SYNTHESIZED_WIRE_109),
	.funct3(SYNTHESIZED_WIRE_20),
	.funct7(SYNTHESIZED_WIRE_21),
	.itype(SYNTHESIZED_WIRE_110),
	.read_reg1(SYNTHESIZED_WIRE_124),
	.read_reg2(SYNTHESIZED_WIRE_125),
	.write_reg(SYNTHESIZED_WIRE_140));


forwardingUnit	b2v_inst10(
	.exMem_reg_write(SYNTHESIZED_WIRE_123),
	.decode_read_reg1(SYNTHESIZED_WIRE_124),
	.decode_read_reg2(SYNTHESIZED_WIRE_125),
	.exMem_write_reg(SYNTHESIZED_WIRE_126),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_6),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_7),
	.forwardA(SYNTHESIZED_WIRE_136),
	.forwardB(SYNTHESIZED_WIRE_141),
	.forwardC(SYNTHESIZED_WIRE_16),
	.forwardD(SYNTHESIZED_WIRE_17));


fetchExecute	b2v_inst11(
	.clk(SYNTHESIZED_WIRE_127),
	.in_reg_write(SYNTHESIZED_WIRE_9),
	.in_jal(SYNTHESIZED_WIRE_10),
	.in_jalr(SYNTHESIZED_WIRE_11),
	.in_branch(SYNTHESIZED_WIRE_128),
	.in_mem_reg(SYNTHESIZED_WIRE_13),
	.in_mem_write(SYNTHESIZED_WIRE_14),
	.in_alu_src(SYNTHESIZED_WIRE_15),
	.in_forwardC(SYNTHESIZED_WIRE_16),
	.in_forwardD(SYNTHESIZED_WIRE_17),
	.in_bubble(SYNTHESIZED_WIRE_122),
	.in_ALUop(SYNTHESIZED_WIRE_19),
	.in_funct3(SYNTHESIZED_WIRE_20),
	.in_funct7(SYNTHESIZED_WIRE_21),
	.in_imm(SYNTHESIZED_WIRE_22),
	.in_itype(SYNTHESIZED_WIRE_23),
	.in_nextPC(SYNTHESIZED_WIRE_24),
	.in_PC(SYNTHESIZED_WIRE_25),
	.in_read_data1(SYNTHESIZED_WIRE_26),
	.in_read_data2(SYNTHESIZED_WIRE_27),
	.in_read_reg1(SYNTHESIZED_WIRE_28),
	.in_read_reg2(SYNTHESIZED_WIRE_29),
	.in_write_data(SYNTHESIZED_WIRE_129),
	.in_write_reg(SYNTHESIZED_WIRE_31),
	.out_mem_write(SYNTHESIZED_WIRE_42),
	.out_branch(SYNTHESIZED_WIRE_43),
	.out_jal(SYNTHESIZED_WIRE_44),
	.out_jalr(SYNTHESIZED_WIRE_45),
	.out_reg_write(SYNTHESIZED_WIRE_132),
	.out_mem_reg(SYNTHESIZED_WIRE_133),
	.out_alu_src(SYNTHESIZED_WIRE_143),
	.out_ALUop(SYNTHESIZED_WIRE_72),
	.out_funct3(SYNTHESIZED_WIRE_73),
	.out_funct7(SYNTHESIZED_WIRE_74),
	.out_imm(SYNTHESIZED_WIRE_134),
	.out_nextPC(SYNTHESIZED_WIRE_52),
	.out_PC(SYNTHESIZED_WIRE_53),
	.out_read_data1(SYNTHESIZED_WIRE_137),
	.out_read_data2(SYNTHESIZED_WIRE_142),
	.out_read_reg1(SYNTHESIZED_WIRE_6),
	.out_read_reg2(SYNTHESIZED_WIRE_7),
	.out_write_reg(SYNTHESIZED_WIRE_135));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_32),
	.data0x(SYNTHESIZED_WIRE_33),
	.data1x(SYNTHESIZED_WIRE_34),
	.result(SYNTHESIZED_WIRE_129));

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_35 | SYNTHESIZED_WIRE_36;


lpm_mux0	b2v_inst14(
	.sel(SYNTHESIZED_WIRE_130),
	.data0x(SYNTHESIZED_WIRE_38),
	.data1x(SYNTHESIZED_WIRE_131),
	.result(SYNTHESIZED_WIRE_76));


executeMem	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_127),
	.in_zero(SYNTHESIZED_WIRE_41),
	.in_mem_write(SYNTHESIZED_WIRE_42),
	.in_branch(SYNTHESIZED_WIRE_43),
	.in_jal(SYNTHESIZED_WIRE_44),
	.in_jalr(SYNTHESIZED_WIRE_45),
	.in_reg_write(SYNTHESIZED_WIRE_132),
	.in_mem_reg(SYNTHESIZED_WIRE_133),
	.in_alu_result(SYNTHESIZED_WIRE_48),
	.in_funct3(SYNTHESIZED_WIRE_49),
	.in_imm(SYNTHESIZED_WIRE_134),
	.in_mem_write_data(SYNTHESIZED_WIRE_51),
	.in_nextPC(SYNTHESIZED_WIRE_52),
	.in_PC(SYNTHESIZED_WIRE_53),
	.in_write_reg(SYNTHESIZED_WIRE_135),
	.out_mem_write(SYNTHESIZED_WIRE_104),
	.out_reg_write(SYNTHESIZED_WIRE_123),
	.out_mem_reg(SYNTHESIZED_WIRE_119),
	.out_jal(SYNTHESIZED_WIRE_111),
	.out_jalr(SYNTHESIZED_WIRE_112),
	.out_branch(SYNTHESIZED_WIRE_113),
	.out_zero(SYNTHESIZED_WIRE_114),
	.out_alu_result(SYNTHESIZED_WIRE_131),
	.out_funct3(SYNTHESIZED_WIRE_116),
	.out_imm(SYNTHESIZED_WIRE_117),
	.out_mem_write_data(SYNTHESIZED_WIRE_106),
	.out_nextPC(SYNTHESIZED_WIRE_34),
	.out_PC(SYNTHESIZED_WIRE_118),
	.out_write_reg(SYNTHESIZED_WIRE_126));


lpm_mux0	b2v_inst16(
	.sel(SYNTHESIZED_WIRE_136),
	.data0x(SYNTHESIZED_WIRE_137),
	.data1x(SYNTHESIZED_WIRE_131),
	.result(SYNTHESIZED_WIRE_75));


hazardDetectionUnit	b2v_inst17(
	.branch(SYNTHESIZED_WIRE_128),
	.jalr(SYNTHESIZED_WIRE_138),
	.jal(SYNTHESIZED_WIRE_139),
	.ifEx_mem_reg(SYNTHESIZED_WIRE_133),
	.ifEx_reg_write(SYNTHESIZED_WIRE_132),
	.decode_read_reg1(SYNTHESIZED_WIRE_124),
	.decode_read_reg2(SYNTHESIZED_WIRE_125),
	.decode_write_reg(SYNTHESIZED_WIRE_140),
	.ifEx_write_reg(SYNTHESIZED_WIRE_135),
	.stall(SYNTHESIZED_WIRE_89),
	.bubble(SYNTHESIZED_WIRE_90));


lpm_mux0	b2v_inst18(
	.sel(SYNTHESIZED_WIRE_141),
	.data0x(SYNTHESIZED_WIRE_142),
	.data1x(SYNTHESIZED_WIRE_131),
	.result(SYNTHESIZED_WIRE_51));

assign	SYNTHESIZED_WIRE_130 = SYNTHESIZED_WIRE_70 & SYNTHESIZED_WIRE_141;


ALU	b2v_inst2(
	.ALUop(SYNTHESIZED_WIRE_72),
	.funct3(SYNTHESIZED_WIRE_73),
	.funct7(SYNTHESIZED_WIRE_74),
	.x1(SYNTHESIZED_WIRE_75),
	.x2(SYNTHESIZED_WIRE_76),
	.zero(SYNTHESIZED_WIRE_41),
	.multiply(SYNTHESIZED_WIRE_83),
	.out(SYNTHESIZED_WIRE_84),
	.out_funct3(SYNTHESIZED_WIRE_49));

assign	SYNTHESIZED_WIRE_70 =  ~SYNTHESIZED_WIRE_143;


MultiplicationUnit	b2v_inst21(
	.forwardA(SYNTHESIZED_WIRE_130),
	.forwardB(SYNTHESIZED_WIRE_136),
	.fwd(SYNTHESIZED_WIRE_131),
	.x1(SYNTHESIZED_WIRE_137),
	.x2(SYNTHESIZED_WIRE_142),
	.out(SYNTHESIZED_WIRE_85));


lpm_mux0	b2v_inst22(
	.sel(SYNTHESIZED_WIRE_83),
	.data0x(SYNTHESIZED_WIRE_84),
	.data1x(SYNTHESIZED_WIRE_85),
	.result(SYNTHESIZED_WIRE_48));


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_127),
	.hlt(SYNTHESIZED_WIRE_87),
	.jump(SYNTHESIZED_WIRE_88),
	.stall(SYNTHESIZED_WIRE_89),
	.in_bubble(SYNTHESIZED_WIRE_90),
	.next(SYNTHESIZED_WIRE_91),
	.bubble(SYNTHESIZED_WIRE_122),
	.instruction(SYNTHESIZED_WIRE_1),
	.nextPC(SYNTHESIZED_WIRE_24),
	.PC(SYNTHESIZED_WIRE_25));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_127),
	.reg_write(SYNTHESIZED_WIRE_93),
	.do_reg_write(SYNTHESIZED_WIRE_123),
	.do_write_reg(SYNTHESIZED_WIRE_126),
	.read_reg1(SYNTHESIZED_WIRE_124),
	.read_reg2(SYNTHESIZED_WIRE_125),
	.write_data(SYNTHESIZED_WIRE_129),
	.write_reg(SYNTHESIZED_WIRE_140),
	.out_reg_write(SYNTHESIZED_WIRE_9),
	.out_read_reg1(SYNTHESIZED_WIRE_28),
	.out_read_reg2(SYNTHESIZED_WIRE_29),
	.out_write_reg(SYNTHESIZED_WIRE_31),
	.read_data1(SYNTHESIZED_WIRE_26),
	.read_data2(SYNTHESIZED_WIRE_27));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_143),
	.data0x(SYNTHESIZED_WIRE_142),
	.data1x(SYNTHESIZED_WIRE_134),
	.result(SYNTHESIZED_WIRE_38));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_103),
	.mem_write(SYNTHESIZED_WIRE_104),
	.address(SYNTHESIZED_WIRE_131),
	.write_data(SYNTHESIZED_WIRE_106),
	.out_alu_result(SYNTHESIZED_WIRE_120),
	.read_data(SYNTHESIZED_WIRE_121));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_139),
	.jalr(SYNTHESIZED_WIRE_138),
	.instruction(SYNTHESIZED_WIRE_109),
	.itype(SYNTHESIZED_WIRE_110),
	.out_jal(SYNTHESIZED_WIRE_10),
	.out_jalr(SYNTHESIZED_WIRE_11),
	.imm(SYNTHESIZED_WIRE_22),
	.out_itype(SYNTHESIZED_WIRE_23));


branch_logic	b2v_inst8(
	.jal(SYNTHESIZED_WIRE_111),
	.jalr(SYNTHESIZED_WIRE_112),
	.branch(SYNTHESIZED_WIRE_113),
	.zero(SYNTHESIZED_WIRE_114),
	.alu_result(SYNTHESIZED_WIRE_131),
	.funct3(SYNTHESIZED_WIRE_116),
	.imm(SYNTHESIZED_WIRE_117),
	.PC(SYNTHESIZED_WIRE_118),
	.jump(SYNTHESIZED_WIRE_88),
	.out_jal(SYNTHESIZED_WIRE_36),
	.out_jalr(SYNTHESIZED_WIRE_35),
	.next(SYNTHESIZED_WIRE_91));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_119),
	.data0x(SYNTHESIZED_WIRE_120),
	.data1x(SYNTHESIZED_WIRE_121),
	.result(SYNTHESIZED_WIRE_33));


endmodule
