library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

 
entity pwm is
port ( clk,reset: in std_logic;
--freq : unsigned(7 downto 0);
pwm_out: out std_logic);
end pwm;
 
architecture bhv of pwm is
 
signal count: integer:=1;
--signal count2: integer:=1;
signal freq : std_logic_vector(7 downto 0):="11000000";
signal duty: std_logic_vector(7 downto 0):="10000000";
signal period: integer := 256*(to_integer(unsigned(freq ))+1);
signal tmp : std_logic := '0';
begin
 
process(clk,reset)
begin
if(reset='0') then
count<=1;
tmp<='0';
elsif(clk'event and clk='1') then
count <=count+1;
if(count<period)then

if (count<to_integer(unsigned(duty))*to_integer(unsigned(freq))) then
tmp<='1';
else
tmp<='0';
end if;
else
count<=1;
end if;
end if;
pwm_out <= tmp;
end process;
end bhv;