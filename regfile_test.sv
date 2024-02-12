module regfile_test;

logic				clk_i		;	
logic				rst_n_i		;	
logic	[4:0]		radr1_i		;	
logic	[4:0]		radr2_i		;	
logic	[4:0]		wadr_i		;	
logic	[31:0]		wdata_i		;	
logic	[31:0]		rdata1_o	;	
logic	[31:0]		rdata2_o	;	


regfile dut(.*);

initial begin 
clk_i <= 0;
forever #5 clk_i <= ~clk_i;
end 
logic[5:0] i;
initial begin 
rst_n_i = 0;
# 12 rst_n_i <= 1;
radr1_i = 0;
radr2_i = 0;
for(i = 0; i <32; i++)
	begin 
		wadr_i = i;
		wdata_i = i;
		repeat(5) @(posedge clk_i);
	end 
	
for(i = 0; i <32; i++)
	begin 
		radr1_i = i;
		repeat(5) @(posedge clk_i);
		$display("radr1 = %h rdata = %h", radr1_i, rdata1_o);
	end 
	
for(i = 0; i <32; i++)
	begin 
		radr2_i = i;
		repeat(5) @(posedge clk_i);
		$display("radr2 = %h rdata = %h", radr2_i, rdata2_o);
	end 
	#10 $finish;
end

endmodule  