# pipeline
Verilog files specifying a pipelined RISC-V processor. Build for the Altera DE2 FPGA and using the Quartus II software suite. I had a stable operating frequency of about 30MHz so we will mark our improvements against that benchmark 

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

## Notes 
When you update or change megafunctions it will add qip files to the project. these are fine to include and don't affect too much as far as I can tell. Will let them through the gitignore in the near future 

## Todo List 
- Speed up Single Cycle processor 
	- Megafunction Multiplication
  	- Explicit Combinational Immediate Generation 
- Implement 3 Stage Pipeline

## Current Status 
| Date        | Code Version  |  Frequency           | Board  | 
| ------------- |:-------------:| -----:| -----:|
| 04/23/2019    | 1.0 | 30Mhz | 11 |




