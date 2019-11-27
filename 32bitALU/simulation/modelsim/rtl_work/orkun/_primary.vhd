library verilog;
use verilog.vl_types.all;
entity orkun is
    port(
        zero            : out    vl_logic;
        \out\           : out    vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic;
        cout            : out    vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        op              : in     vl_logic_vector(2 downto 0);
        asd             : out    vl_logic_vector(31 downto 0);
        dsa             : out    vl_logic_vector(30 downto 0);
        less            : out    vl_logic
    );
end orkun;
