
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RegisterFile is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           rst : in  STD_LOGIC;
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0);
           DWR : in  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

begin

	process(rst,rs1,rs2,rd,DWR)
	begin
		
		if(rst = '1')then
				crs1 <= (others=>'0');
				crs2 <= (others=>'0');
		else
				crs1 <= rs1;
				crs2 <= rs2;
		end if;
		
	end process;

end Behavioral;

