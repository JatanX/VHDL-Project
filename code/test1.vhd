Library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

--library UNISIM;
--use UNISIM.VComponents.all;
entity s88 is
	port
	(
		OnboardClock : in std_logic;
--		LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, GPIO14, GPIO16, GPIO17 : out std_logic;
		LD0 : out std_logic
	);
end s88;

architecture s88Timing of s88 is
signal CustomClock : Bit := '0';
	begin

		--Genereren van de CustomClock
		timer : process(OnboardClock)
		--Variabelen
		variable ClockCounter : unsigned(24 downto 0 ) := (others => '0');

		--daadwerkelijk process
		begin
			if(rising_edge(OnboardClock)) then
				ClockCounter := ClockCounter + 1;
				if(ClockCounter > 25000000) then
					CustomClock <= CustomClock XOR '1';
					ClockCounter := (others => '0');

					--Hiermee wordt de CustomClock getoggled
				end if;
			end if;
end process;

s88Protocol : process(CustomClock)
	begin
		if(CustomClock = '1') then
			LD0 <= '1';
		end if;
end process;

end s88Timing;
