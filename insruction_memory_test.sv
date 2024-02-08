module insruction_memory_test;

logic [15:0] adr_i	 ;
logic [31:0] instr_o ;

instruction_memory dut(.*);


initial begin 
$monitor("adr = %h  instr = %h", adr_i, instr_o);
	for(adr_i = 0; adr_i < 16'd8; adr_i++)
		#5;
		
	#10 $finish;
end 

endmodule 
