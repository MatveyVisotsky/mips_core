module pc_test;

logic clk_i					;
logic rst_n_i				;	
logic [15:0] pc_new_value_i	;	
logic [15:0] pc_value_o		;	

program_counter dut(
	.clk_i					(clk_i					),
	.rst_n_i				(rst_n_i				),
	.pc_new_value_i			(pc_new_value_i			),
	.pc_value_o				(pc_value_o				)
);

int counter;
logic [15:0] ex_value;
parameter OPN = 100;
initial begin 
	clk_i <= 0;
	forever #5 clk_i <= ~clk_i;
end 

initial begin 
	counter = 0;
	rst_n_i = 0;
	pc_new_value_i = $urandom();
	ex_value = pc_value_o;
	#12 rst_n_i <= 1;
	@(posedge clk_i);
	
	repeat(OPN) begin
		counter++;	
		
		ex_value = pc_value_o;
		@(posedge clk_i);
		@(posedge clk_i);
		if(pc_value_o != pc_new_value_i)
			break;
		pc_new_value_i = $urandom();
	end 
	if(counter == OPN)
		$display("PC test finished succesfully");
	else 
		$display("PC test failed !!!");
		
	#1 $finish;
end 

endmodule