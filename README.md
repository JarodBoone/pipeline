# pipeline
Verilog files specifying a pipelined RISC-V processor. Build for the Altera DE2 FPGA and using the Quartus II software suite. I had a stable operating frequency of about 30MHz so we will mark our improvements against that benchmark 

## How to install 
- Clone the repository 
- Start a new Quartus II project. Select the directory to be the newly cloned directory.
- Select the Cyclone ii EP2C35F672C6 Board as the target model
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
 - After the new project is set up you need to enable in system memory viewing during runtime. To do this go to Assignments > Settings > Analysis and Synthesis Settings > Default Paramaters and type the parameter name `CYCLONEII_SAFE_WRITE` and assign its default value `RESTRUCTURE`
### Setup Signal Tap 
We use signal tap for debugging. Follow these steps to setup signal tap.
- Import the pin assignments csv (Assignments > Import Assignments) 
- Set the operating mode value field of nCEO to regular I/O (Assigments > Device > Device and Pin Options > Dual-Purpose Pins)
- Compile the design (This hiked my warnings by a lot!) 
- Create a new Signal Tap File (File > New > SignalTap II Logic Analyzer File) or load the pipeline.stp file as the signal tap file 
	- Change which stp file is signal tap configuration by Assignments > Settings > Signal Tap 

## Notes 
When you update or change megafunctions it will add qip files to the project. these are fine to include and don't affect too much as far as I can tell. Will let them through the gitignore in the near future 

Note that you are working in a vanilla Quartus Project and thus have made no compiler or synthesis optimizations 
## Todo List 
- Speed up Single Cycle processor 
	- Megafunction Multiplication
  	- Explicit Combinational Immediate Generation
- Setup Signal Tap
- Unclock Branching Logic  
- Implement 3 Stage Pipeline

## Current Status 
| Date        | Code Version  |  Frequency           | Board  | Notes	| 
| ------------- |:-------------:| -----:| -----:|
| 04/23/2019    | 1.0 | 30Mhz | 11 |
| 04/24/2019	| 1.0 | 30 MHz | 5 | Converted immediate generator to assign not functional yet



