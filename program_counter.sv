module program_counter
(
	input 				clk_i			,
	input				rst_n_i			,
	input				pc_new_value_i	,
	output				pc_value_o		
);

reg pc_r;

always_ff@(posedge clk_i, negedge rst_n_i)
begin
	if(!rst_n_i)
		pc_r <= 0;
	else 
		pc_r <= pc_new_value_i;
end 

assign pc_value_o = pc_r;

endmodule
	
