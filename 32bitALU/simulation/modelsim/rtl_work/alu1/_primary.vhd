library verilog;
use verilog.vl_types.all;
entity alu1 is
    port(
        \out\           : out    vl_logic;
        set             : out    vl_logic;
        cout            : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        less            : in     vl_logic;
        op              : in     vl_logic_vector(2 downto 0)
    );
end alu1;
