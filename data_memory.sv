module data_memory
(
	input					clk_i			,
	input					WE_i			, // write enable active 1
	input	[31:0]			adr_i			,
	input	[31:0]			write_data_i	,
	output	[31:0]			read_data_o		
);

reg [31:0] data_memory_r [31:0];

always_ff@(posedge clk_i)
begin 
	if(WE_i)
		data_memory_r[adr_i] <= write_data_i;
end 

assign read_data_o = data_memory_r[adr_i];

initial $readmemh("data_set.txt", data_memory_r);

endmodule 