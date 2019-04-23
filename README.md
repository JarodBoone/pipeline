# pipeline
Verilog files specifying a pipelined RISC-V processor. Build for the Altera DE2 FPGA and using the Quartus II software suite

## How to install 
- Clone the repository 
- Start a new Quartus project on the directory. Select the Cyclone ii EP2C35F672C6 Board as the model
- Add the following Verilog files to your project 
	- pipeline.v
	- shifter.v
	- RegisterFile.v
	- ProgramServer.v 
	- pll.v 
	- opDecoder.v 
	- MemoryController.v 
	- lmp_mux0.v 
	- ImmediateGenerator.v 
	- iDecoder.v 
	- datamem.v 
	- busmux_1.v 
	- busmux_0.v 
	- branch_logic.v 
	- ALU.v
 - You need to enable in system memory viewing during runtime. To do this go to Assignments > Settings > Analysis and Synthesis Settings > Default Paramaters and type the parameter name `CYCLONEII_SAFE_WRITE` and assign its default value `RESTRUCTURE`
