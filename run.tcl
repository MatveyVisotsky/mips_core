##### Create the Project/Lib #####
# vlib work
# map the library
# vmap work work

set test pc_test
set design program_counter
 
##### Compile the verilog #####
vlog pc_test.sv program_counter.sv

 
##### Start Simulation #####
vsim work.pc_test work.program_counter
add wave -binary clk_i
add wave -binary rst_n_i
add wave -hexadecimal pc_new_value_i
add wave -hexadecimal pc_value_o
add wave -hexadecimal ex_value
run -all
 


