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
// CREATED		"Tue Apr 30 13:53:29 2019"

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

wire	SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_104;
wire	[4:0] SYNTHESIZED_WIRE_105;
wire	[4:0] SYNTHESIZED_WIRE_106;
wire	[4:0] SYNTHESIZED_WIRE_107;
wire	[4:0] SYNTHESIZED_WIRE_108;
wire	[4:0] SYNTHESIZED_WIRE_109;
wire	SYNTHESIZED_WIRE_110;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_111;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[2:0] SYNTHESIZED_WIRE_18;
wire	[6:0] SYNTHESIZED_WIRE_19;
wire	[31:0] SYNTHESIZED_WIRE_20;
wire	[2:0] SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_22;
wire	[31:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[4:0] SYNTHESIZED_WIRE_26;
wire	[4:0] SYNTHESIZED_WIRE_27;
wire	[31:0] SYNTHESIZED_WIRE_112;
wire	[4:0] SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	[31:0] SYNTHESIZED_WIRE_31;
wire	[31:0] SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	[31:0] SYNTHESIZED_WIRE_36;
wire	[31:0] SYNTHESIZED_WIRE_113;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	[31:0] SYNTHESIZED_WIRE_46;
wire	[2:0] SYNTHESIZED_WIRE_47;
wire	[31:0] SYNTHESIZED_WIRE_114;
wire	[31:0] SYNTHESIZED_WIRE_115;
wire	[31:0] SYNTHESIZED_WIRE_50;
wire	[31:0] SYNTHESIZED_WIRE_51;
wire	[4:0] SYNTHESIZED_WIRE_116;
wire	SYNTHESIZED_WIRE_53;
wire	[31:0] SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_117;
wire	SYNTHESIZED_WIRE_118;
wire	SYNTHESIZED_WIRE_119;
wire	[2:0] SYNTHESIZED_WIRE_64;
wire	[6:0] SYNTHESIZED_WIRE_65;
wire	[2:0] SYNTHESIZED_WIRE_66;
wire	[31:0] SYNTHESIZED_WIRE_67;
wire	[31:0] SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_72;
wire	[31:0] SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_75;
wire	[4:0] SYNTHESIZED_WIRE_81;
wire	SYNTHESIZED_WIRE_82;
wire	SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_86;
wire	[31:0] SYNTHESIZED_WIRE_88;
wire	[31:0] SYNTHESIZED_WIRE_91;
wire	[2:0] SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_93;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;
wire	SYNTHESIZED_WIRE_96;
wire	[2:0] SYNTHESIZED_WIRE_98;
wire	[31:0] SYNTHESIZED_WIRE_99;
wire	[31:0] SYNTHESIZED_WIRE_100;
wire	[31:0] SYNTHESIZED_WIRE_102;
wire	[31:0] SYNTHESIZED_WIRE_103;





pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_110),
	.c1(SYNTHESIZED_WIRE_85)
	);


iDecoder	b2v_inst1(
	.bubble(SYNTHESIZED_WIRE_0),
	.instruction(SYNTHESIZED_WIRE_1),
	.reg_write(SYNTHESIZED_WIRE_75),
	.branch(SYNTHESIZED_WIRE_111),
	.mem_reg(SYNTHESIZED_WIRE_13),
	.mem_write(SYNTHESIZED_WIRE_14),
	.alu_src(SYNTHESIZED_WIRE_15),
	.jal(SYNTHESIZED_WIRE_119),
	.jalr(SYNTHESIZED_WIRE_118),
	.hlt(SYNTHESIZED_WIRE_70),
	.forward(SYNTHESIZED_WIRE_91),
	.funct3(SYNTHESIZED_WIRE_18),
	.funct7(SYNTHESIZED_WIRE_19),
	.itype(SYNTHESIZED_WIRE_92),
	.read_reg1(SYNTHESIZED_WIRE_105),
	.read_reg2(SYNTHESIZED_WIRE_106),
	.write_reg(SYNTHESIZED_WIRE_81));


forwardingUnit	b2v_inst10(
	.exMem_reg_write(SYNTHESIZED_WIRE_104),
	.decode_read_reg1(SYNTHESIZED_WIRE_105),
	.decode_read_reg2(SYNTHESIZED_WIRE_106),
	.exMem_write_reg(SYNTHESIZED_WIRE_107),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_108),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_109),
	.forwardA(SYNTHESIZED_WIRE_53),
	.forwardB(SYNTHESIZED_WIRE_35),
	.forwardC(SYNTHESIZED_WIRE_16),
	.forwardD(SYNTHESIZED_WIRE_17));


fetchExecute	b2v_inst11(
	.clk(SYNTHESIZED_WIRE_110),
	.in_reg_write(SYNTHESIZED_WIRE_9),
	.in_jal(SYNTHESIZED_WIRE_10),
	.in_jalr(SYNTHESIZED_WIRE_11),
	.in_branch(SYNTHESIZED_WIRE_111),
	.in_mem_reg(SYNTHESIZED_WIRE_13),
	.in_mem_write(SYNTHESIZED_WIRE_14),
	.in_alu_src(SYNTHESIZED_WIRE_15),
	.in_forwardC(SYNTHESIZED_WIRE_16),
	.in_forwardD(SYNTHESIZED_WIRE_17),
	.in_funct3(SYNTHESIZED_WIRE_18),
	.in_funct7(SYNTHESIZED_WIRE_19),
	.in_imm(SYNTHESIZED_WIRE_20),
	.in_itype(SYNTHESIZED_WIRE_21),
	.in_nextPC(SYNTHESIZED_WIRE_22),
	.in_PC(SYNTHESIZED_WIRE_23),
	.in_read_data1(SYNTHESIZED_WIRE_24),
	.in_read_data2(SYNTHESIZED_WIRE_25),
	.in_read_reg1(SYNTHESIZED_WIRE_26),
	.in_read_reg2(SYNTHESIZED_WIRE_27),
	.in_write_data(SYNTHESIZED_WIRE_112),
	.in_write_reg(SYNTHESIZED_WIRE_29),
	.out_mem_write(SYNTHESIZED_WIRE_40),
	.out_branch(SYNTHESIZED_WIRE_41),
	.out_jal(SYNTHESIZED_WIRE_42),
	.out_jalr(SYNTHESIZED_WIRE_43),
	.out_reg_write(SYNTHESIZED_WIRE_44),
	.out_mem_reg(SYNTHESIZED_WIRE_45),
	.out_alu_src(SYNTHESIZED_WIRE_82),
	.out_funct3(SYNTHESIZED_WIRE_64),
	.out_funct7(SYNTHESIZED_WIRE_65),
	.out_imm(SYNTHESIZED_WIRE_114),
	.out_itype(SYNTHESIZED_WIRE_66),
	.out_nextPC(SYNTHESIZED_WIRE_50),
	.out_PC(SYNTHESIZED_WIRE_51),
	.out_read_data1(SYNTHESIZED_WIRE_54),
	.out_read_data2(SYNTHESIZED_WIRE_115),
	.out_read_reg1(SYNTHESIZED_WIRE_108),
	.out_read_reg2(SYNTHESIZED_WIRE_109),
	.out_write_reg(SYNTHESIZED_WIRE_116));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_30),
	.data0x(SYNTHESIZED_WIRE_31),
	.data1x(SYNTHESIZED_WIRE_32),
	.result(SYNTHESIZED_WIRE_112));

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_33 | SYNTHESIZED_WIRE_34;


lpm_mux0	b2v_inst14(
	.sel(SYNTHESIZED_WIRE_35),
	.data0x(SYNTHESIZED_WIRE_36),
	.data1x(SYNTHESIZED_WIRE_113),
	.result(SYNTHESIZED_WIRE_68));


executeMem	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_110),
	.in_zero(SYNTHESIZED_WIRE_39),
	.in_mem_write(SYNTHESIZED_WIRE_40),
	.in_branch(SYNTHESIZED_WIRE_41),
	.in_jal(SYNTHESIZED_WIRE_42),
	.in_jalr(SYNTHESIZED_WIRE_43),
	.in_reg_write(SYNTHESIZED_WIRE_44),
	.in_mem_reg(SYNTHESIZED_WIRE_45),
	.in_alu_result(SYNTHESIZED_WIRE_46),
	.in_funct3(SYNTHESIZED_WIRE_47),
	.in_imm(SYNTHESIZED_WIRE_114),
	.in_mem_write_data(SYNTHESIZED_WIRE_115),
	.in_nextPC(SYNTHESIZED_WIRE_50),
	.in_PC(SYNTHESIZED_WIRE_51),
	.in_write_reg(SYNTHESIZED_WIRE_116),
	.out_mem_write(SYNTHESIZED_WIRE_86),
	.out_reg_write(SYNTHESIZED_WIRE_104),
	.out_mem_reg(SYNTHESIZED_WIRE_117),
	.out_jal(SYNTHESIZED_WIRE_93),
	.out_jalr(SYNTHESIZED_WIRE_94),
	.out_branch(SYNTHESIZED_WIRE_95),
	.out_zero(SYNTHESIZED_WIRE_96),
	.out_alu_result(SYNTHESIZED_WIRE_113),
	.out_funct3(SYNTHESIZED_WIRE_98),
	.out_imm(SYNTHESIZED_WIRE_99),
	.out_mem_write_data(SYNTHESIZED_WIRE_88),
	.out_nextPC(SYNTHESIZED_WIRE_32),
	.out_PC(SYNTHESIZED_WIRE_100),
	.out_write_reg(SYNTHESIZED_WIRE_107));


lpm_mux0	b2v_inst16(
	.sel(SYNTHESIZED_WIRE_53),
	.data0x(SYNTHESIZED_WIRE_54),
	.data1x(SYNTHESIZED_WIRE_113),
	.result(SYNTHESIZED_WIRE_67));


hazardDetectionUnit	b2v_inst17(
	.branch(SYNTHESIZED_WIRE_111),
	.exMem_mem_reg(SYNTHESIZED_WIRE_117),
	.jalr(SYNTHESIZED_WIRE_118),
	.jal(SYNTHESIZED_WIRE_119),
	.exMem_write_reg(SYNTHESIZED_WIRE_107),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_108),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_109),
	.ifEx_write_reg(SYNTHESIZED_WIRE_116),
	.stall(SYNTHESIZED_WIRE_72));


ALU	b2v_inst2(
	.funct3(SYNTHESIZED_WIRE_64),
	.funct7(SYNTHESIZED_WIRE_65),
	.itype(SYNTHESIZED_WIRE_66),
	.x1(SYNTHESIZED_WIRE_67),
	.x2(SYNTHESIZED_WIRE_68),
	.zero(SYNTHESIZED_WIRE_39),
	.out(SYNTHESIZED_WIRE_46),
	.out_funct3(SYNTHESIZED_WIRE_47));


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_110),
	.hlt(SYNTHESIZED_WIRE_70),
	.jump(SYNTHESIZED_WIRE_71),
	.stall(SYNTHESIZED_WIRE_72),
	.next(SYNTHESIZED_WIRE_73),
	.bubble(SYNTHESIZED_WIRE_0),
	.instruction(SYNTHESIZED_WIRE_1),
	.nextPC(SYNTHESIZED_WIRE_22),
	.PC(SYNTHESIZED_WIRE_23));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_110),
	.reg_write(SYNTHESIZED_WIRE_75),
	.do_reg_write(SYNTHESIZED_WIRE_104),
	.do_write_reg(SYNTHESIZED_WIRE_107),
	.read_reg1(SYNTHESIZED_WIRE_105),
	.read_reg2(SYNTHESIZED_WIRE_106),
	.write_data(SYNTHESIZED_WIRE_112),
	.write_reg(SYNTHESIZED_WIRE_81),
	.out_reg_write(SYNTHESIZED_WIRE_9),
	.out_read_reg1(SYNTHESIZED_WIRE_26),
	.out_read_reg2(SYNTHESIZED_WIRE_27),
	.out_write_reg(SYNTHESIZED_WIRE_29),
	.read_data1(SYNTHESIZED_WIRE_24),
	.read_data2(SYNTHESIZED_WIRE_25));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_82),
	.data0x(SYNTHESIZED_WIRE_115),
	.data1x(SYNTHESIZED_WIRE_114),
	.result(SYNTHESIZED_WIRE_36));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_85),
	.mem_write(SYNTHESIZED_WIRE_86),
	.address(SYNTHESIZED_WIRE_113),
	.write_data(SYNTHESIZED_WIRE_88),
	.out_alu_result(SYNTHESIZED_WIRE_102),
	.read_data(SYNTHESIZED_WIRE_103));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_119),
	.jalr(SYNTHESIZED_WIRE_118),
	.instruction(SYNTHESIZED_WIRE_91),
	.itype(SYNTHESIZED_WIRE_92),
	.out_jal(SYNTHESIZED_WIRE_10),
	.out_jalr(SYNTHESIZED_WIRE_11),
	.imm(SYNTHESIZED_WIRE_20),
	.out_itype(SYNTHESIZED_WIRE_21));


branch_logic	b2v_inst8(
	.jal(SYNTHESIZED_WIRE_93),
	.jalr(SYNTHESIZED_WIRE_94),
	.branch(SYNTHESIZED_WIRE_95),
	.zero(SYNTHESIZED_WIRE_96),
	.alu_result(SYNTHESIZED_WIRE_113),
	.funct3(SYNTHESIZED_WIRE_98),
	.imm(SYNTHESIZED_WIRE_99),
	.PC(SYNTHESIZED_WIRE_100),
	.jump(SYNTHESIZED_WIRE_71),
	.out_jal(SYNTHESIZED_WIRE_34),
	.out_jalr(SYNTHESIZED_WIRE_33),
	.fuck_imm(fuck_imm),
	.fuck_PC(fuck_PC),
	.next(SYNTHESIZED_WIRE_73));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_117),
	.data0x(SYNTHESIZED_WIRE_102),
	.data1x(SYNTHESIZED_WIRE_103),
	.result(SYNTHESIZED_WIRE_31));


endmodule
