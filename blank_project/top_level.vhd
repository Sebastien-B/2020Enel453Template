-- Top-level reference code for introduction to Quartus and ModelSim
---------------------------------------------------------------------
-- 1. Library Declaration (the libraries we are using in this module)
---------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- we always use this package
-- use IEEE.NUMERIC_STD.ALL; -- we often use this package   

-------------------------------------------------------------------------------------------
-- 2. Entity Declaration (describes the external interface (i.e. I/O ports) of this module)
-------------------------------------------------------------------------------------------
entity top_level is
    Port (/*[entity name] : [direction] [signal type]*/);
           
end entity; -- can also be written as "end top_level;" or "end;"

----------------------------------------------------
-- 3. Architecture (describes what this module does)
----------------------------------------------------
architecture structural of top_level is

-- All architectures are structured as component declarations followed by instatiations.

-----
-- Declarations
-----

-- Signals are declared as follows:
-- signal [signal name] : [signal type];
-- Examples of siangl types are STD_LOGIC, INTEGER, and STD_LOGIC_VECTOR

-- Components are declared as follows:
/*
component [component name] is
port ([port name] : [direction] [signal type]);
end component;
*/

begin

----
-- Instatiation
----

-- Signals are assigned as follows:
-- in_bus <= in0 & in1 & in2 & in3; (& is the concatentation operator)
-- ...Or should the concatentation order be the following way?
-- in_bus <= in3 & in2 & in1 & in0;
-- Why? 
-- The first concatenation makes in0 the MSB and the second makes in3 the MSB.
-- It doesn't matter what you use so long as it's consistent within your design.
-- 'downto' specifies the LSB as the 0th bus element (little-endian) - it makes sense with the 2nd.
-- 'to' specifies the MSB as the 0th bus element (big-endian) - it makes sense with the 1st.

-- Component instantiations (these instantiation "bring" the components into the design for use)
/*
[instance name]: [component name] PORT MAP(
       [port name] => [signal name]
		 );
*/

end structural; -- can also be written as "end;"