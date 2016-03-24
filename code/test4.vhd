library IEEE;
use IEEE . STD_LOGIC_1164 .ALL;
use IEEE . NUMERIC_STD .ALL;


--library UNISIM;
--use UNISIM.VComponents.all;
entity s88 is
	port
	(
		OnboardClock, DataOut : in std_logic;
		LED0 : out std_logic
	);
end s88;

architecture s88Timing of s88 is
		timer : process(OnboardClock)

		begin
			if(rising_edge(OnboardClock)) then
			LED0 <= DataOut;
		end if;
		end process;
end s88Timing;
