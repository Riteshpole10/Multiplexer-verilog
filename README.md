# Multiplexer-verilog
# 2:1 Multiplexer - Gate Level Verilog with simulation waveform.

This project implements a 2:1 multiplexer using  behavioral  level description & gate-level approach  in Verilog.  
It also includes a testbench to verify all input combinations.

## Multiplexer Details

Inputs: 
a : first input  
b : second input  
sel : select line  

Output-  
out : selected input

Functionality:
  - If sel = 0  then out = a 
  - If sel = 1 then  out = b

| sel | a | b | out |
| --- | - | - | --- |
| 0   | 0 | 0 | 0   |
| 0   | 0 | 1 | 0   |
| 0   | 1 | 0 | 1   |
| 0   | 1 | 1 | 1   |
| 1   | 0 | 0 | 0   |
| 1   | 0 | 1 | 1   |
| 1   | 1 | 0 | 0   |
| 1   | 1 | 1 | 1   |


Boolean Equation:  
out = (a AND NOT(sel)) OR (b AND sel)
out = (a · ~sel) + (b · sel) 




Files in this Repository:-

multiplexer.v : Gate-level Verilog code  
multiplexer_tb.v : Testbench for simulation  
waveform.png : Optional simulation waveform screenshot  
elaborated_design.png : Optional gate schematic screenshot
