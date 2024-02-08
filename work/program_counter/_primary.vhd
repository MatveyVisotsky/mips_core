library verilog;
use verilog.vl_types.all;
entity program_counter is
    port(
        clk_i           : in     vl_logic;
        rst_n_i         : in     vl_logic;
        pc_new_value_i  : in     vl_logic_vector(15 downto 0);
        pc_value_o      : out    vl_logic_vector(15 downto 0)
    );
end program_counter;
