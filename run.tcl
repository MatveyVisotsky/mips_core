##### Create the Project/Lib #####
# vlib work
# map the library
# vmap work work

puts "Choose the block test"
puts "1 - PC"
puts "2 - Instruction memory"
gets stdin $test 

if { $test == 1 } { 
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
} elseif { $test == 2 } {
vlog instruction_memory.sv insruction_memory_test.sv

vsim work.instruction_memory work.insruction_memory_test

run -all
} else {
puts "Test doesn't exist" 
}

