
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
	
 
ENTITY tbPC IS
END tbPC;
 
ARCHITECTURE behavior OF tbPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         Data : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         DataOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal DataOut : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          Data => Data,
          rst => rst,
          clk => clk,
          DataOut => DataOut
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;	
			Data <= x"00000000"; 
      
		rst <= '0'; 
		wait for 20 ns;
		Data <= x"00000001";
		wait for 20 ns;
		Data <= x"00000002";
		wait for 20 ns;
		Data <= x"00000003";
      wait;
		
   end process;

END;
