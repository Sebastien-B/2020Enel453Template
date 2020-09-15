-- Top-level reference code for introduction to Quartus and ModelSim

-- 1. Library Declaration (the libraries we are using in this module)
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- we always use this package
-- use IEEE.NUMERIC_STD.ALL; -- we often use this package   

-- 2. Entity Declaration (describes the external interface (i.e. I/O ports) of this module)
-------------------------------------------------------------------------------------------
entity top_level is
    Port (clk             : in  STD_LOGIC; -- list elements de-limited by semi-colons
          reset           : in  STD_LOGIC;
          s               : in  STD_LOGIC;
          in0,in1,in2,in3 : in  STD_LOGIC;
          LEDR            : out STD_LOGIC_VECTOR (3 downto 0) -- notice no semi-colon on last item of list
          );
           
end entity; -- can also be written as "end top_level;" or "end;"

-- 3. Architecture (describes what this module does)
----------------------------------------------------
architecture structural of top_level is

-- signal declarations
signal in_bus  : std_logic_vector(3 downto 0); -- coming from input switches
signal logic_bus  : std_logic_vector(3 downto 0); -- coming from logic applied to input switches
signal mux_out : std_logic_vector(3 downto 0); -- output to LEDs
-- signal mux_out,logic_bus,in_bus : std_logic_vector(3 downto 0); -- could have written this instead of using the 3 lines above

-- component declarations
component MUX2TO1 is
port ( in1     : in  std_logic_vector(3 downto 0);
       in2     : in  std_logic_vector(3 downto 0);
       s       : in  std_logic;
       mux_out : out std_logic_vector(3 downto 0) 
      );
end component;

component some_logic is
    Port ( 
           in0,in1          : in  STD_LOGIC;
           output0, output1 : out STD_LOGIC;
           clk              : in  STD_LOGIC;
           reset            : in  STD_LOGIC
           );
end component;

begin

in_bus <= in0 & in1 & in2 & in3; -- & is the concatentation operator
-- or should the concatentation order be the following way?
-- in_bus <= in3 & in2 & in1 & in0; -- should concatentation be this way? Why? 

-- component instantiations (these instantiation "bring" the components into the design for use)

some_logic_ins_0: some_logic PORT MAP(
--   component's port => signal or port pin where component is instantiated  
       in0     => in0, -- could have written "in_bus(0),"
       in1     => in1, -- could have written "in_bus(1),"
       output0 => logic_bus(0),
       output1 => logic_bus(1),
       clk     => clk,
       reset   => reset
       );

some_logic_ins_1: some_logic PORT MAP( -- this is the second instantiation of the some_logic component
       clk     => clk,
       reset   => reset,
       in0     => in_bus(2), -- could have written "in2,"
       in1     => in_bus(3), -- could have written "in3,"
       output0 => logic_bus(2),
       output1 => logic_bus(3)
       );

       
MUX2TO1_ins:   MUX2TO1 PORT MAP(                                   
       in1     => in_bus,
       in2     => logic_bus, -- "0101", -- can use in2 => "0101," to test LEDs for debugging (to hard-code a value for the 2nd mux input)
       s       => s,  -- 0: in1 , 1:in2
       mux_out => mux_out -- notice no comma for last element of this list
       );

LEDR <= mux_out; -- this line assigns mux_out to the LEDR outputs
                 -- can use LEDR <= "0101;" to test LEDs for debugging (to hard-code a value on the LEDs)
      
end structural; -- can also be written as "end;"