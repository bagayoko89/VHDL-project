library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity compas is

	port	(
				clk_50, raz_n, continu, start_stop, in_pwm: in std_logic;
				data_valid: out std_logic;
				data_compas: out std_logic_vector(7 downto 0):= (others => '0')
			
			);
			

end compas;

architecture bhv of compas is

	--- Signals declarés 
	
	signal fin: std_logic; 
	signal entree_compteur: std_logic;
	signal entree_timer: std_logic;
	signal entree_registre: std_logic; 
	signal clk_compteur: std_logic;
	signal clk_div1khz: std_logic;
	signal data_vld: std_logic_vector (7 downto 0);
	
	--- Compoenents utilisés
	
	component MAE is 
		port ( 	clk_50, start_stop, in_pwm, fin, reset:in std_logic;
					go_cmp, go_tmr2, load: out std_logic
            );
	end component MAE;
	
	component divider1khz is
		Port ( clk : in STD_LOGIC;
				rst : in STD_LOGIC;
				clk_out, fin : out STD_LOGIC);
				
	end component divider1khz;
	
	component divider10khz
	
		Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_out : out STD_LOGIC);
  end component divider10khz;
  
  component compteur is
		port (clk, reset,go : in std_logic;
         o:    out std_logic_vector(7 downto 0));
			
	end component compteur;
	
	component Register8bit is
		Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR(7 downto 0);
           data_out : out STD_LOGIC_VECTOR(7 downto 0));
			  
	end component Register8bit; 
	
--- Les ports maps
	
	
begin
	
	mac: component MAE
	
		port map	(
						clk_50 => clk_50,
						reset => raz_n,
						start_stop => start_stop,
						in_pwm => in_pwm,
						fin => fin,
						go_cmp => entree_compteur,
						go_tmr2 => entree_timer, 
						load => entree_registre
					);
					
					
	div_10khz: component divider10khz
	
		port map	(
						clk => clk_50,
						rst => raz_n,
						clk_out => clk_compteur
					);
					
	div_1khz: component divider1khz
	
		port map	(
						clk => clk_50,
						rst => raz_n,
						clk_out => clk_div1khz,
						fin => fin
					);
					
	compt: component compteur
	
		port map	(
						clk => clk_compteur,
						reset=> raz_n,
						go => entree_compteur,
						O => data_vld
					);
					
	registre: component Register8bit
	
		port map	(
						clk => clk_50,
						reset => raz_n,
						load => entree_registre,
						data_in => data_vld,
						data_out => data_compas
					);

				
end bhv;