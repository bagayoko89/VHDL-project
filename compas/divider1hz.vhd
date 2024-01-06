library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divider1hz is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end divider1hz;

architecture bhv of divider1hz is
    signal count : integer range 0 to 49999999 := 0; 
	 signal tmp: std_logic:='0';

begin
    process(clk, rst)
    begin
        if rst = '1' then
            count <= 0;
            tmp <= '0';
        elsif rising_edge(clk) then
            if count = 49999999 then  
                count <= 0;
                tmp <= not tmp;
            else
                count <= count + 1;
            end if;
        end if;
    end process;
	 clk_out<=tmp;
end bhv;