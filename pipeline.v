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
// CREATED		"Mon Apr 29 22:12:00 2019"

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
wire	SYNTHESIZED_WIRE_89;
wire	[4:0] SYNTHESIZED_WIRE_90;
wire	[4:0] SYNTHESIZED_WIRE_3;
wire	[4:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_91;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[2:0] SYNTHESIZED_WIRE_13;
wire	[6:0] SYNTHESIZED_WIRE_14;
wire	[31:0] SYNTHESIZED_WIRE_15;
wire	[2:0] SYNTHESIZED_WIRE_16;
wire	[31:0] SYNTHESIZED_WIRE_17;
wire	[31:0] SYNTHESIZED_WIRE_18;
wire	[31:0] SYNTHESIZED_WIRE_19;
wire	[31:0] SYNTHESIZED_WIRE_20;
wire	[4:0] SYNTHESIZED_WIRE_21;
wire	[4:0] SYNTHESIZED_WIRE_22;
wire	[4:0] SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	[31:0] SYNTHESIZED_WIRE_30;
wire	[31:0] SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	[31:0] SYNTHESIZED_WIRE_40;
wire	[2:0] SYNTHESIZED_WIRE_41;
wire	[31:0] SYNTHESIZED_WIRE_93;
wire	[31:0] SYNTHESIZED_WIRE_94;
wire	[31:0] SYNTHESIZED_WIRE_44;
wire	[31:0] SYNTHESIZED_WIRE_45;
wire	[4:0] SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	[31:0] SYNTHESIZED_WIRE_48;
wire	[2:0] SYNTHESIZED_WIRE_50;
wire	[6:0] SYNTHESIZED_WIRE_51;
wire	[2:0] SYNTHESIZED_WIRE_52;
wire	[31:0] SYNTHESIZED_WIRE_53;
wire	[31:0] SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	[31:0] SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_60;
wire	[4:0] SYNTHESIZED_WIRE_63;
wire	[4:0] SYNTHESIZED_WIRE_64;
wire	[31:0] SYNTHESIZED_WIRE_65;
wire	[4:0] SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_71;
wire	[31:0] SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_75;
wire	[31:0] SYNTHESIZED_WIRE_76;
wire	[2:0] SYNTHESIZED_WIRE_77;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_81;
wire	[2:0] SYNTHESIZED_WIRE_83;
wire	[31:0] SYNTHESIZED_WIRE_84;
wire	[31:0] SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_86;
wire	[31:0] SYNTHESIZED_WIRE_87;
wire	[31:0] SYNTHESIZED_WIRE_88;





pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_91),
	.c1(SYNTHESIZED_WIRE_70),
	.c2(fastclk));


iDecoder	b2v_inst1(
	.instruction(SYNTHESIZED_WIRE_0),
	.reg_write(SYNTHESIZED_WIRE_60),
	.branch(SYNTHESIZED_WIRE_9),
	.mem_reg(SYNTHESIZED_WIRE_10),
	.mem_write(SYNTHESIZED_WIRE_11),
	.alu_src(SYNTHESIZED_WIRE_12),
	.jal(SYNTHESIZED_WIRE_74),
	.jalr(SYNTHESIZED_WIRE_75),
	.hlt(SYNTHESIZED_WIRE_56),
	.forward(SYNTHESIZED_WIRE_76),
	.funct3(SYNTHESIZED_WIRE_13),
	.funct7(SYNTHESIZED_WIRE_14),
	.itype(SYNTHESIZED_WIRE_77),
	.read_reg1(SYNTHESIZED_WIRE_63),
	.read_reg2(SYNTHESIZED_WIRE_64),
	.write_reg(SYNTHESIZED_WIRE_66));


forwardingUnit	b2v_inst10(
	.exMem_reg_write(SYNTHESIZED_WIRE_89),
	.exMem_write_reg(SYNTHESIZED_WIRE_90),
	.ifEx_read_reg1(SYNTHESIZED_WIRE_3),
	.ifEx_read_reg2(SYNTHESIZED_WIRE_4),
	.forwardA(SYNTHESIZED_WIRE_47),
	.forwardB(SYNTHESIZED_WIRE_29));


fetchExecute	b2v_inst11(
	.clk(SYNTHESIZED_WIRE_91),
	.in_reg_write(SYNTHESIZED_WIRE_6),
	.in_jal(SYNTHESIZED_WIRE_7),
	.in_jalr(SYNTHESIZED_WIRE_8),
	.in_branch(SYNTHESIZED_WIRE_9),
	.in_mem_reg(SYNTHESIZED_WIRE_10),
	.in_mem_write(SYNTHESIZED_WIRE_11),
	.in_alu_src(SYNTHESIZED_WIRE_12),
	.in_funct3(SYNTHESIZED_WIRE_13),
	.in_funct7(SYNTHESIZED_WIRE_14),
	.in_imm(SYNTHESIZED_WIRE_15),
	.in_itype(SYNTHESIZED_WIRE_16),
	.in_nextPC(SYNTHESIZED_WIRE_17),
	.in_PC(SYNTHESIZED_WIRE_18),
	.in_read_data1(SYNTHESIZED_WIRE_19),
	.in_read_data2(SYNTHESIZED_WIRE_20),
	.in_read_reg1(SYNTHESIZED_WIRE_21),
	.in_read_reg2(SYNTHESIZED_WIRE_22),
	.in_write_reg(SYNTHESIZED_WIRE_23),
	.out_mem_write(SYNTHESIZED_WIRE_34),
	.out_branch(SYNTHESIZED_WIRE_35),
	.out_jal(SYNTHESIZED_WIRE_36),
	.out_jalr(SYNTHESIZED_WIRE_37),
	.out_reg_write(SYNTHESIZED_WIRE_38),
	.out_mem_reg(SYNTHESIZED_WIRE_39),
	.out_alu_src(SYNTHESIZED_WIRE_67),
	.out_funct3(SYNTHESIZED_WIRE_50),
	.out_funct7(SYNTHESIZED_WIRE_51),
	.out_imm(SYNTHESIZED_WIRE_93),
	.out_itype(SYNTHESIZED_WIRE_52),
	.out_nextPC(SYNTHESIZED_WIRE_44),
	.out_PC(SYNTHESIZED_WIRE_45),
	.out_read_data1(SYNTHESIZED_WIRE_48),
	.out_read_data2(SYNTHESIZED_WIRE_94),
	.out_read_reg1(SYNTHESIZED_WIRE_3),
	.out_read_reg2(SYNTHESIZED_WIRE_4),
	.out_write_reg(SYNTHESIZED_WIRE_46));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_24),
	.data0x(SYNTHESIZED_WIRE_25),
	.data1x(SYNTHESIZED_WIRE_26),
	.result(SYNTHESIZED_WIRE_65));

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;


lpm_mux0	b2v_inst14(
	.sel(SYNTHESIZED_WIRE_29),
	.data0x(SYNTHESIZED_WIRE_30),
	.data1x(SYNTHESIZED_WIRE_92),
	.result(SYNTHESIZED_WIRE_54));


executeMem	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_91),
	.in_zero(SYNTHESIZED_WIRE_33),
	.in_mem_write(SYNTHESIZED_WIRE_34),
	.in_branch(SYNTHESIZED_WIRE_35),
	.in_jal(SYNTHESIZED_WIRE_36),
	.in_jalr(SYNTHESIZED_WIRE_37),
	.in_reg_write(SYNTHESIZED_WIRE_38),
	.in_mem_reg(SYNTHESIZED_WIRE_39),
	.in_alu_result(SYNTHESIZED_WIRE_40),
	.in_funct3(SYNTHESIZED_WIRE_41),
	.in_imm(SYNTHESIZED_WIRE_93),
	.in_mem_write_data(SYNTHESIZED_WIRE_94),
	.in_nextPC(SYNTHESIZED_WIRE_44),
	.in_PC(SYNTHESIZED_WIRE_45),
	.in_write_reg(SYNTHESIZED_WIRE_46),
	.out_mem_write(SYNTHESIZED_WIRE_71),
	.out_reg_write(SYNTHESIZED_WIRE_89),
	.out_mem_reg(SYNTHESIZED_WIRE_86),
	.out_jal(SYNTHESIZED_WIRE_78),
	.out_jalr(SYNTHESIZED_WIRE_79),
	.out_branch(SYNTHESIZED_WIRE_80),
	.out_zero(SYNTHESIZED_WIRE_81),
	.out_alu_result(SYNTHESIZED_WIRE_92),
	.out_funct3(SYNTHESIZED_WIRE_83),
	.out_imm(SYNTHESIZED_WIRE_84),
	.out_mem_write_data(SYNTHESIZED_WIRE_73),
	.out_nextPC(SYNTHESIZED_WIRE_26),
	.out_PC(SYNTHESIZED_WIRE_85),
	.out_write_reg(SYNTHESIZED_WIRE_90));


lpm_mux0	b2v_inst16(
	.sel(SYNTHESIZED_WIRE_47),
	.data0x(SYNTHESIZED_WIRE_48),
	.data1x(SYNTHESIZED_WIRE_92),
	.result(SYNTHESIZED_WIRE_53));


ALU	b2v_inst2(
	.funct3(SYNTHESIZED_WIRE_50),
	.funct7(SYNTHESIZED_WIRE_51),
	.itype(SYNTHESIZED_WIRE_52),
	.x1(SYNTHESIZED_WIRE_53),
	.x2(SYNTHESIZED_WIRE_54),
	.zero(SYNTHESIZED_WIRE_33),
	.out(SYNTHESIZED_WIRE_40),
	.out_funct3(SYNTHESIZED_WIRE_41));


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_91),
	.hlt(SYNTHESIZED_WIRE_56),
	.jump(SYNTHESIZED_WIRE_57),
	.next(SYNTHESIZED_WIRE_58),
	.instruction(SYNTHESIZED_WIRE_0),
	.nextPC(SYNTHESIZED_WIRE_17),
	.PC(SYNTHESIZED_WIRE_18));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_91),
	.reg_write(SYNTHESIZED_WIRE_60),
	.do_reg_write(SYNTHESIZED_WIRE_89),
	.do_write_reg(SYNTHESIZED_WIRE_90),
	.read_reg1(SYNTHESIZED_WIRE_63),
	.read_reg2(SYNTHESIZED_WIRE_64),
	.write_data(SYNTHESIZED_WIRE_65),
	.write_reg(SYNTHESIZED_WIRE_66),
	.out_reg_write(SYNTHESIZED_WIRE_6),
	.out_read_reg1(SYNTHESIZED_WIRE_21),
	.out_read_reg2(SYNTHESIZED_WIRE_22),
	.out_write_reg(SYNTHESIZED_WIRE_23),
	.read_data1(SYNTHESIZED_WIRE_19),
	.read_data2(SYNTHESIZED_WIRE_20));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_67),
	.data0x(SYNTHESIZED_WIRE_94),
	.data1x(SYNTHESIZED_WIRE_93),
	.result(SYNTHESIZED_WIRE_30));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_70),
	.mem_write(SYNTHESIZED_WIRE_71),
	.address(SYNTHESIZED_WIRE_92),
	.write_data(SYNTHESIZED_WIRE_73),
	.out_alu_result(SYNTHESIZED_WIRE_87),
	.read_data(SYNTHESIZED_WIRE_88));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_74),
	.jalr(SYNTHESIZED_WIRE_75),
	.instruction(SYNTHESIZED_WIRE_76),
	.itype(SYNTHESIZED_WIRE_77),
	.out_jal(SYNTHESIZED_WIRE_7),
	.out_jalr(SYNTHESIZED_WIRE_8),
	.imm(SYNTHESIZED_WIRE_15),
	.out_itype(SYNTHESIZED_WIRE_16));


branch_logic	b2v_inst8(
	.jal(SYNTHESIZED_WIRE_78),
	.jalr(SYNTHESIZED_WIRE_79),
	.branch(SYNTHESIZED_WIRE_80),
	.zero(SYNTHESIZED_WIRE_81),
	.alu_result(SYNTHESIZED_WIRE_92),
	.funct3(SYNTHESIZED_WIRE_83),
	.imm(SYNTHESIZED_WIRE_84),
	.PC(SYNTHESIZED_WIRE_85),
	.jump(SYNTHESIZED_WIRE_57),
	.out_jal(SYNTHESIZED_WIRE_28),
	.out_jalr(SYNTHESIZED_WIRE_27),
	.fuck_imm(fuck_imm),
	.fuck_PC(fuck_PC),
	.next(SYNTHESIZED_WIRE_58));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_86),
	.data0x(SYNTHESIZED_WIRE_87),
	.data1x(SYNTHESIZED_WIRE_88),
	.result(SYNTHESIZED_WIRE_25));


endmodule
