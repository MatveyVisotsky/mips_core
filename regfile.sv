module regfile
(
	input 					clk_i			,
//	input					rst_n_i			,
	input		[4:0]		radr1_i			,
	input		[4:0]		radr2_i			,
	input		[4:0]		wadr_i			,
	input		[31:0]		wdata_i			,
	output		[31:0]		rdata1_o		,
	output		[31:0]		rdata2_o		
);
reg[31:0] regs_r[31:0];
always_ff@(posedge clk_i/*, negedge rst_n_i*/)
begin 
	 regs_r[wadr_i] <= wdata_i;
end 

assign rdata1_o = (radr1_i != 0) ? regs_r[radr1_i] : 0;
assign rdata2_o = (radr2_i != 0) ? regs_r[radr2_i] : 0;

endmodule 