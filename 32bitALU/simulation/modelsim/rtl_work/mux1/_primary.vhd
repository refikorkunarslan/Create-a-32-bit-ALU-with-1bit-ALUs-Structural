library verilog;
use verilog.vl_types.all;
entity mux1 is
    port(
        \out\           : out    vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        c2              : in     vl_logic;
        c3              : in     vl_logic;
        s1              : in     vl_logic_vector(1 downto 0)
    );
end mux1;
