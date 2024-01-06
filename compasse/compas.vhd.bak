library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity compas is

	port	(
				clk, raz_n, start_stop : in std_logic;
				data_out:    out std_logic_vector(7 downto 0)
			);
			
end compas;

architecture bhv of compas is

	signal regist_in: std_logic_vector (7 downto 0);
	signal sign_pwm: std_logic;
	
	--- Signals declarés 
	
	signal fin: std_logic; 
	signal entree_compteur: std_logic;
	signal entree_timer: std_logic;
	signal entree_registre: std_logic; 
	signal clk10k: std_logic;
	signal clk_div1khz: std_logic;
	signal sortie_pwm: std_logic;
	signal data_vld: std_logic_vector (7 downto 0);



	component divider10khz is
		port	(	
					clk : in STD_LOGIC;
					rst : in STD_LOGIC;
					clk_out : out STD_LOGIC
				);
	end component divider10khz;
	
	
	component pwm is
		port	(	
					clk : in STD_LOGIC;
					reset : in STD_LOGIC;
					pwm_out : out STD_LOGIC
				);
	end component pwm;
	
	
	
		
	component compteur is
		port	(
					clk, reset,go : in std_logic;
					o:    out std_logic_vector(7 downto 0)
				);
					
	end component compteur;
	
	component Register8Bit is
		port	(
					clk, reset,load : in std_logic;
					data_in : in STD_LOGIC_VECTOR(7 downto 0);
					data_out : out STD_LOGIC_VECTOR(7 downto 0)
				);
				
	end component Register8Bit;
	
	component MAE is
		port	(
					clk_50, start_stop, in_pwm, reset:in std_logic;
					go_cmp, load: out std_logic
				);
				
	end component MAE;
		
	
begin 


	div10k: component divider10khz
	
	port map	(
					clk => clk,
					rst => raz_n,
					clk_out => clk10k
				);
				

				
				
	compt: component compteur
	
	port map	(
					clk => clk10k,
					reset => raz_n,
					go => entree_compteur,
					o => regist_in
				);
				
				
	pmw: component pwm
	
	port map	(
					clk => clk,
					reset => raz_n,
					pwm_out => sortie_pwm
				);
				
	machine: component MAE
	
	port map	(
					clk_50 => clk,
					reset => raz_n,
					go_cmp => entree_compteur,
					load => entree_registre,
					start_stop => start_stop,
					in_pwm => sortie_pwm
				);
				
	regis: component Register8Bit
	
	port map	(
					clk => clk,
					reset => raz_n,
					load => entree_registre,
					data_in => regist_in,
					data_out => data_out
				);
				
end bhv;