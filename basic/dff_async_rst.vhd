-- Author 	: Antony. Han
-- Description
--			: Rising edge D Flip Flop with asynchronous reset

library IEEE;
use IEEE.std_logic_1164.all;

entity dff_async_rst is
	port(
		reset 	: in std_logic;
		data 	: in std_logic;
		clk 	: in std_logic;
		q 		: out std_logic
	);
end dff_async_rst;

architecture behav of dff_async_rst is
begin

process (clk, reset) begin
	if (reset = '0') then
		q <= '0';
	elsif (clk'event and clk = '1') then
		q <= data;
	end if;
	
end process;

end behav;
