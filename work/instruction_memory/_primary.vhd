library verilog;
use verilog.vl_types.all;
entity instruction_memory is
    port(
        adr_i           : in     vl_logic_vector(15 downto 0);
        instr_o         : out    vl_logic_vector(31 downto 0)
    );
end instruction_memory;
