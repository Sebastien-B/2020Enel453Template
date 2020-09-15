library ieee;
use ieee.std_logic_1164.all;

entity tb_top_level is
end tb_top_level;

architecture tb of tb_top_level is

    component top_level
        port (/*[name] : direction] [type]*/);
    end component;
    -- signal [name] : type;

    constant TbPeriod : time      := 20 ns; -- EDIT Put right period here(Denis: 1/50 MHz = 20 ns)
    signal TbClock    : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    uut : top_level
    port map (/*[signal name] => [port name]*/);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    stimuli : process
    begin
        -- Stimuli
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_top_level of tb_top_level is
    for tb
    end for;
end cfg_tb_top_level;