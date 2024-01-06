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
    signal register_data : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                register_data <= (others => '0');
            else
                if load = '1' then
                    register_data <= data_in;
                end if;
            end if;
        end if;
    end process;

    data_out <= register_data;
end bhv;
