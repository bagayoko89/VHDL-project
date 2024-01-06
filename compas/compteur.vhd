library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity compteur is
   
   port (clk, reset,go : in std_logic;
         o:    out std_logic_vector(7 downto 0));
end compteur;


architecture comp of compteur is
   
   signal count : std_logic_vector(7 downto 0);

begin
   process (clk)
   begin
    if reset='1' then
        count<=(others => '0');
   
    elsif (clk'event and clk = '0')then
    
        if go='1' then
            if count = "11111111" then count <= "00000000";
            else  count <= count + 1;
            end if;
            
        end if;
        
    end if;    
   end process;

    o <= count ;
    
end comp;      