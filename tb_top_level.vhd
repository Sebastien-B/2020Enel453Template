-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 14.9.2020 19:06:39 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_top_level is
end tb_top_level;

architecture tb of tb_top_level is

    component top_level
        port (clk   : in std_logic;
              reset : in std_logic;
              s     : in std_logic;
              in0   : in std_logic;
              in1   : in std_logic;
              in2   : in std_logic;
              in3   : in std_logic;
              LEDR  : out std_logic_vector (3 downto 0));
    end component;

    signal clk   : std_logic;
    signal reset : std_logic;
    signal s     : std_logic;
    signal in0   : std_logic;
    signal in1   : std_logic;
    signal in2   : std_logic;
    signal in3   : std_logic;
    signal LEDR  : std_logic_vector (3 downto 0);

    constant TbPeriod : time      := 20 ns; -- EDIT Put right period here(Denis: 1/50 MHz = 20 ns)
    signal TbClock    : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : top_level
    port map (clk   => clk,
              reset => reset,
              s     => s,
              in0   => in0,
              in1   => in1,
              in2   => in2,
              in3   => in3,
              LEDR  => LEDR);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        s   <= '0';
        in0 <= '0';
        in1 <= '0';
        in2 <= '0';
        in3 <= '0';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;
		  s   <= '0';
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '0'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '0'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;
        in0 <= '1'; in1 <= '0'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '0'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '0'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '0'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;		  
        wait for 100 * TbPeriod;
		  s   <= '1';
        in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '0'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '0'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '0'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '0'; in1 <= '1'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;
        in0 <= '1'; in1 <= '0'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '0'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '0'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '0'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '0'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '0'; in3 <= '1'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '1'; in3 <= '0'; wait for 10 * TbPeriod;
		  in0 <= '1'; in1 <= '1'; in2 <= '1'; in3 <= '1'; wait for 10 * TbPeriod;				  
        wait for 100 * TbPeriod;
        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_top_level of tb_top_level is
    for tb
    end for;
end cfg_tb_top_level;