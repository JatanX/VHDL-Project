Library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

--library UNISIM;
--use UNISIM.VComponents.all;
entity s88V2 is
	port
	(
		OnboardClock : in std_logic;
--		LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, GPIO14, GPIO16, GPIO17 : out std_logic;
		LED0 : out std_logic
	);
end s88V2;

architecture default of s88V2 is

	begin

		timer : process(OnboardClock)
variable counter : unsigned(20 downto 0) := (others => '0');
variable booleam : BIT := '0';
		begin
			if(rising_edge(OnboardClock)) then
				booleam := '1';
				if(booleam = '1') then
					LED0 <= '1';
				else
					LED0 <= '0';
				end if;
			end if;
	end process;

end architecture default;