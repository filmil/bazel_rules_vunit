library vunit_lib;
context vunit_lib.vunit_context;

entity tb is
end entity;

architecture sim of tb is
begin
    process
    begin
        info("Hello world!");
        std.env.finish;
    end process;
end architecture;
