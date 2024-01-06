library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register8Bit is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR(7 downto 0);
           data_out : out STD_LOGIC_VECTOR(7 downto 0));
end Register8Bit;

architecture bhv of Register8Bit is
    
begin
    process(clk)
    begin
		if reset='0' then 
			data_out <= (others => '0');
		elsif rising_edge(clk) then
			if load = '1' then
				data_out <= data_in;
			end if;
		end if;
    end process;


end bhv;
