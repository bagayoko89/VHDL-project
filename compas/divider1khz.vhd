library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divider1khz is
    Port ( clk, go : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_out, fin : out STD_LOGIC);
end divider1khz;

architecture bhv of divider1khz is
    signal count : integer range 0 to 49999 := 0; 
	 signal tmp: std_logic:='0';
	 signal lib: std_logic:='0';

begin
    process(clk, rst)
    begin
        if rst = '1' then
            count <= 0;
            tmp <= '0';
        elsif rising_edge(clk) then
				if go='1' then
					if count = 49999 then  
						 count <= 0;
						 lib <= '0';
						 tmp <= not tmp;
					else
						 count <= count + 1;
						 lib <= '0';
					end if;
				end if;
        end if;
    end process;
	 clk_out<=tmp;
	 fin <= lib;
end bhv;