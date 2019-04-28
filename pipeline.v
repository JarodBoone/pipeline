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
// CREATED		"Sun Apr 28 18:31:25 2019"

module pipeline(
	CLOCK_50
);


input wire	CLOCK_50;

wire	[31:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[2:0] SYNTHESIZED_WIRE_9;
wire	[6:0] SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	[2:0] SYNTHESIZED_WIRE_12;
wire	[31:0] SYNTHESIZED_WIRE_13;
wire	[31:0] SYNTHESIZED_WIRE_14;
wire	[31:0] SYNTHESIZED_WIRE_15;
wire	[31:0] SYNTHESIZED_WIRE_16;
wire	[4:0] SYNTHESIZED_WIRE_17;
wire	[4:0] SYNTHESIZED_WIRE_18;
wire	[4:0] SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	[31:0] SYNTHESIZED_WIRE_33;
wire	[2:0] SYNTHESIZED_WIRE_34;
wire	[31:0] SYNTHESIZED_WIRE_80;
wire	[31:0] SYNTHESIZED_WIRE_81;
wire	[31:0] SYNTHESIZED_WIRE_37;
wire	[31:0] SYNTHESIZED_WIRE_38;
wire	[4:0] SYNTHESIZED_WIRE_39;
wire	[2:0] SYNTHESIZED_WIRE_40;
wire	[6:0] SYNTHESIZED_WIRE_41;
wire	[2:0] SYNTHESIZED_WIRE_42;
wire	[31:0] SYNTHESIZED_WIRE_43;
wire	[31:0] SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	[31:0] SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;
wire	[4:0] SYNTHESIZED_WIRE_52;
wire	[4:0] SYNTHESIZED_WIRE_53;
wire	[4:0] SYNTHESIZED_WIRE_54;
wire	[31:0] SYNTHESIZED_WIRE_55;
wire	[4:0] SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_61;
wire	[31:0] SYNTHESIZED_WIRE_82;
wire	[31:0] SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_65;
wire	[31:0] SYNTHESIZED_WIRE_66;
wire	[2:0] SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_71;
wire	[2:0] SYNTHESIZED_WIRE_73;
wire	[31:0] SYNTHESIZED_WIRE_74;
wire	[31:0] SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_76;
wire	[31:0] SYNTHESIZED_WIRE_77;
wire	[31:0] SYNTHESIZED_WIRE_78;





pll	b2v_inst(
	.inclk0(CLOCK_50),
	.c0(SYNTHESIZED_WIRE_79),
	.c1(SYNTHESIZED_WIRE_60));


iDecoder	b2v_inst1(
	.instruction(SYNTHESIZED_WIRE_0),
	.reg_write(SYNTHESIZED_WIRE_50),
	.branch(SYNTHESIZED_WIRE_5),
	.mem_reg(SYNTHESIZED_WIRE_6),
	.mem_write(SYNTHESIZED_WIRE_7),
	.alu_src(SYNTHESIZED_WIRE_8),
	.jal(SYNTHESIZED_WIRE_64),
	.jalr(SYNTHESIZED_WIRE_65),
	.hlt(SYNTHESIZED_WIRE_46),
	.forward(SYNTHESIZED_WIRE_66),
	.funct3(SYNTHESIZED_WIRE_9),
	.funct7(SYNTHESIZED_WIRE_10),
	.itype(SYNTHESIZED_WIRE_67),
	.read_reg1(SYNTHESIZED_WIRE_53),
	.read_reg2(SYNTHESIZED_WIRE_54),
	.write_reg(SYNTHESIZED_WIRE_56));


fetchExecute	b2v_inst11(
	.clk(SYNTHESIZED_WIRE_79),
	.in_reg_write(SYNTHESIZED_WIRE_2),
	.in_jal(SYNTHESIZED_WIRE_3),
	.in_jalr(SYNTHESIZED_WIRE_4),
	.in_branch(SYNTHESIZED_WIRE_5),
	.in_mem_reg(SYNTHESIZED_WIRE_6),
	.in_mem_write(SYNTHESIZED_WIRE_7),
	.in_alu_src(SYNTHESIZED_WIRE_8),
	.in_funct3(SYNTHESIZED_WIRE_9),
	.in_funct7(SYNTHESIZED_WIRE_10),
	.in_imm(SYNTHESIZED_WIRE_11),
	.in_itype(SYNTHESIZED_WIRE_12),
	.in_nextPC(SYNTHESIZED_WIRE_13),
	.in_PC(SYNTHESIZED_WIRE_14),
	.in_read_data1(SYNTHESIZED_WIRE_15),
	.in_read_data2(SYNTHESIZED_WIRE_16),
	.in_read_reg1(SYNTHESIZED_WIRE_17),
	.in_read_reg2(SYNTHESIZED_WIRE_18),
	.in_write_reg(SYNTHESIZED_WIRE_19),
	.out_mem_write(SYNTHESIZED_WIRE_27),
	.out_branch(SYNTHESIZED_WIRE_28),
	.out_jal(SYNTHESIZED_WIRE_29),
	.out_jalr(SYNTHESIZED_WIRE_30),
	.out_reg_write(SYNTHESIZED_WIRE_31),
	.out_mem_reg(SYNTHESIZED_WIRE_32),
	.out_alu_src(SYNTHESIZED_WIRE_57),
	.out_funct3(SYNTHESIZED_WIRE_40),
	.out_funct7(SYNTHESIZED_WIRE_41),
	.out_imm(SYNTHESIZED_WIRE_80),
	.out_itype(SYNTHESIZED_WIRE_42),
	.out_nextPC(SYNTHESIZED_WIRE_37),
	.out_PC(SYNTHESIZED_WIRE_38),
	.out_read_data1(SYNTHESIZED_WIRE_43),
	.out_read_data2(SYNTHESIZED_WIRE_81),
	.out_write_reg(SYNTHESIZED_WIRE_39));


lpm_mux0	b2v_inst12(
	.sel(SYNTHESIZED_WIRE_20),
	.data0x(SYNTHESIZED_WIRE_21),
	.data1x(SYNTHESIZED_WIRE_22),
	.result(SYNTHESIZED_WIRE_55));

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;


executeMem	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_79),
	.in_zero(SYNTHESIZED_WIRE_26),
	.in_mem_write(SYNTHESIZED_WIRE_27),
	.in_branch(SYNTHESIZED_WIRE_28),
	.in_jal(SYNTHESIZED_WIRE_29),
	.in_jalr(SYNTHESIZED_WIRE_30),
	.in_reg_write(SYNTHESIZED_WIRE_31),
	.in_mem_reg(SYNTHESIZED_WIRE_32),
	.in_alu_result(SYNTHESIZED_WIRE_33),
	.in_funct3(SYNTHESIZED_WIRE_34),
	.in_imm(SYNTHESIZED_WIRE_80),
	.in_mem_write_data(SYNTHESIZED_WIRE_81),
	.in_nextPC(SYNTHESIZED_WIRE_37),
	.in_PC(SYNTHESIZED_WIRE_38),
	.in_write_reg(SYNTHESIZED_WIRE_39),
	.out_mem_write(SYNTHESIZED_WIRE_61),
	.out_reg_write(SYNTHESIZED_WIRE_51),
	.out_mem_reg(SYNTHESIZED_WIRE_76),
	.out_jal(SYNTHESIZED_WIRE_68),
	.out_jalr(SYNTHESIZED_WIRE_69),
	.out_branch(SYNTHESIZED_WIRE_70),
	.out_zero(SYNTHESIZED_WIRE_71),
	.out_alu_result(SYNTHESIZED_WIRE_82),
	.out_funct3(SYNTHESIZED_WIRE_73),
	.out_imm(SYNTHESIZED_WIRE_74),
	.out_mem_write_data(SYNTHESIZED_WIRE_63),
	.out_nextPC(SYNTHESIZED_WIRE_22),
	.out_PC(SYNTHESIZED_WIRE_75),
	.out_write_reg(SYNTHESIZED_WIRE_52));


ALU	b2v_inst2(
	.funct3(SYNTHESIZED_WIRE_40),
	.funct7(SYNTHESIZED_WIRE_41),
	.itype(SYNTHESIZED_WIRE_42),
	.x1(SYNTHESIZED_WIRE_43),
	.x2(SYNTHESIZED_WIRE_44),
	.zero(SYNTHESIZED_WIRE_26),
	.out(SYNTHESIZED_WIRE_33),
	.out_funct3(SYNTHESIZED_WIRE_34));


ProgramServer	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_79),
	.hlt(SYNTHESIZED_WIRE_46),
	.jump(SYNTHESIZED_WIRE_47),
	.next(SYNTHESIZED_WIRE_48),
	.instruction(SYNTHESIZED_WIRE_0),
	.nextPC(SYNTHESIZED_WIRE_13),
	.PC(SYNTHESIZED_WIRE_14));


RegisterFile	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_79),
	.reg_write(SYNTHESIZED_WIRE_50),
	.do_reg_write(SYNTHESIZED_WIRE_51),
	.do_write_reg(SYNTHESIZED_WIRE_52),
	.read_reg1(SYNTHESIZED_WIRE_53),
	.read_reg2(SYNTHESIZED_WIRE_54),
	.write_data(SYNTHESIZED_WIRE_55),
	.write_reg(SYNTHESIZED_WIRE_56),
	.out_reg_write(SYNTHESIZED_WIRE_2),
	.out_read_reg1(SYNTHESIZED_WIRE_17),
	.out_read_reg2(SYNTHESIZED_WIRE_18),
	.out_write_reg(SYNTHESIZED_WIRE_19),
	.read_data1(SYNTHESIZED_WIRE_15),
	.read_data2(SYNTHESIZED_WIRE_16));


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_57),
	.data0x(SYNTHESIZED_WIRE_81),
	.data1x(SYNTHESIZED_WIRE_80),
	.result(SYNTHESIZED_WIRE_44));


MemoryController	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_60),
	.mem_write(SYNTHESIZED_WIRE_61),
	.address(SYNTHESIZED_WIRE_82),
	.write_data(SYNTHESIZED_WIRE_63),
	.out_alu_result(SYNTHESIZED_WIRE_77),
	.read_data(SYNTHESIZED_WIRE_78));


ImmediateGenerator	b2v_inst7(
	.jal(SYNTHESIZED_WIRE_64),
	.jalr(SYNTHESIZED_WIRE_65),
	.instruction(SYNTHESIZED_WIRE_66),
	.itype(SYNTHESIZED_WIRE_67),
	.out_jal(SYNTHESIZED_WIRE_3),
	.out_jalr(SYNTHESIZED_WIRE_4),
	.imm(SYNTHESIZED_WIRE_11),
	.out_itype(SYNTHESIZED_WIRE_12));


branch_logic	b2v_inst8(
	.jal(SYNTHESIZED_WIRE_68),
	.jalr(SYNTHESIZED_WIRE_69),
	.branch(SYNTHESIZED_WIRE_70),
	.zero(SYNTHESIZED_WIRE_71),
	.alu_result(SYNTHESIZED_WIRE_82),
	.funct3(SYNTHESIZED_WIRE_73),
	.imm(SYNTHESIZED_WIRE_74),
	.PC(SYNTHESIZED_WIRE_75),
	.jump(SYNTHESIZED_WIRE_47),
	.out_jal(SYNTHESIZED_WIRE_24),
	.out_jalr(SYNTHESIZED_WIRE_23),
	.next(SYNTHESIZED_WIRE_48));


lpm_mux0	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_76),
	.data0x(SYNTHESIZED_WIRE_77),
	.data1x(SYNTHESIZED_WIRE_78),
	.result(SYNTHESIZED_WIRE_21));


endmodule
