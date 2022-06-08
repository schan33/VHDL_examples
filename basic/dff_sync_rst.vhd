-- Author 	: Antony. Han
-- Description
--			: Rising edge D Flip Flop with synchronous reset

library IEEE;
use IEEE.std_logic_1164.all;

entity dff_sync_rst is
	port(
		reset 	: in std_logic; -- active low
		data 	: in std_logic;
		clk 	: in std_logic;
		q 		: out std_logic
	);
end dff_sync_rst;

architecture behav of dff_sync_rst is
begin

process (clk, reset) begin

	if (clk'event and clk = '1') then
		if (reset = '0') then
			q <= '0';
		else
			q <= data;
		end if;
	end if;
	
end process;

end behav;
