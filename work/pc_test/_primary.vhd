library verilog;
use verilog.vl_types.all;
entity pc_test is
    generic(
        OPN             : integer := 100
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OPN : constant is 1;
end pc_test;
