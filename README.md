# Multiplexer-verilog
# 2:1 Multiplexer - behavioral  level description  and Gate Level in  Verilog with testbench and  waveform.

This project implements a 2:1 multiplexer using  behavioral  level description & gate-level approach  in Verilog.  
It also includes a testbench to verify all input combinations.

## Multiplexer Details for Behavioral level description:-

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

--------------------------------------------------------------------------------------
 Gate-Level approach:-

- Implemented a 2:1 multiplexer using basic logic gates (AND, OR, NOT).
- Boolean equation: out = (a AND NOT(sel)) OR (b AND sel)
- Intermediate wires:
  - nsel = NOT(sel)
  - a_path = a AND NOT(sel)
  - b_path = b AND sel
- Verified using Behavioral Simulation in Vivado.

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


Files in this Repository:-

multiplexer.v :  Verilog code  
multiplexer_tb.v : Testbench for simulation  
waveform.png :  simulation waveform 
elaborated_design.png : schematic screenshot
