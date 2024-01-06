library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity MAE  is

  port ( clk_50, start_stop, in_pwm, fin, reset:in std_logic;
         go_cmp, go_tmr2, load: out std_logic
            );


end MAE;


architecture bhv of MAE is
 
  type state is (idle, wait_pwm, etat0, etat1, etat2, etat3);
  signal current_state, next_state: state;

  begin
 
 
  -- 1. process sequentielle

  process(clk_50,reset)
  begin
        if reset = '1' then
    
            current_state<= idle;
       
        elsif (rising_edge(clk_50)) then
       
            current_state<= next_state;
           
        end if;
           
    end process; 
 
  --- 2. Process qui depend des entrees et de l'etat present

  process(current_state,start_stop, in_pwm)
  begin
 
       case current_state is
       
            when idle =>
                if start_stop='1' then
                    next_state<=wait_pwm;
                else
                    next_state<=idle;
                end if;
           
            when wait_pwm =>
             
                if in_pwm='0' then
                    next_state<=etat0;
                else
                    next_state<=wait_pwm;
                end if;
             
            when etat0 =>
                if in_pwm='1' then
                    next_state<=etat1;
                else
                    next_state<=etat0;
                end if;
					 
				when etat1 =>
                if fin='1' then
                    next_state<=etat2;
                else
                    next_state<=etat1;
                end if;
           
             
            when etat2=>
             
                if in_pwm='0' then
                    next_state<=etat3;
                else
                    next_state<=etat2;
                end if;
             
            when etat3=>
                if start_stop='1' then
                    next_state<=idle;
                else
                    next_state<=etat3;
                end if;
               
            when others =>
                next_state<=idle;   
               
        end case;     
    end process;
    
    -- 3 PROCESS: de l'etat present

  process(current_state)
  begin
 
       case current_state is
             
            when etat2=>
                go_cmp<='1';
                go_tmr2<='0';
					 load<='0';
             
            when etat3=>
                go_cmp<='0';
                go_tmr2<='1';
					 load<='0';
           
            when others =>
                go_cmp<='0';
                go_tmr2<='0';
					 load<='1';
           
        end case;     
    end process;
    
    
end bhv;