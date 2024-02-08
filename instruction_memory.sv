module instruction_memory
(
	input 		[15:0] 		adr_i		,
	output		[31:0]		instr_o		
);

reg[31:0] mem [15:0];

initial $readmemh("program.txt", mem);


assign  instr_o = mem[adr_i];

endmodule