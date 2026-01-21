library vunit_lib;
context vunit_lib.vunit_context;

entity tb is
    generic(
        runner_cfg: string := runner_cfg_default
    );
end entity;

architecture sim of tb is
begin
    process
        variable logger : logger_t := get_logger("test/UART");
    begin
        test_runner_setup(runner, runner_cfg);
        info(logger, "Hello world!");
        check_true(true, "oops");
        test_runner_cleanup(runner);
    end process;
end architecture;
