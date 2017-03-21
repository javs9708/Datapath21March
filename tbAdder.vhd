LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
 
ENTITY tbAdder IS
END tbAdder;
 
ARCHITECTURE behavior OF tbAdder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         Op : IN  std_logic_vector(31 downto 0);
         Op2 : IN  std_logic_vector(31 downto 0);
         Result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Op : std_logic_vector(31 downto 0) := (others => '0');
   signal Op2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          Op => Op,
          Op2 => Op2,
          Result => Result
        );

   -- Stimulus process
   stim_proc: process
   begin		

      Op <="00000000000000000000000000000001";
		wait for 20 ns;
		Op2<="00000000000000000000000000000001";
		wait for 20 ns;

   end process;

END;
