library IEEE;
use IEEE . STD_LOGIC_1164 .ALL;
use IEEE . NUMERIC_STD .ALL;


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
	signal TimingCounter : unsigned (20 downto 0) := ( others => '0');
	begin
		--Genereren van de CustomClock
		timer : process(OnboardClock)
		--Variabelen
		variable ClockCounter : unsigned (20 downto 0) := (others => '0');
		variable TijdseenheidCounter : integer := 0;
		--daadwerkelijk process
		begin
			if(rising_edge(OnboardClock)) then
				ClockCounter := ClockCounter + 1;
				TimingCounter <= ClockCounter;
				if(TimingCounter(20) = '1') then
					TimingCounter <= "000000000000000000000";
					TijdseenheidCounter := TijdseenheidCounter + 1;
					case TijdseenheidCounter is

						when 0 =>
							LD0 <= '0';
						when 1 =>
							LD0 <= '1';
						when others =>

					end case;
					--Hiermee wordt de CustomClock getoggled
				end if;
			end if;
end process;
--
-- s88Protocol : process(OnboardClock)
-- 	begin
-- 		if(rising_edge(OnboardClock)) then
-- 			case TijdseenheidCounter is
-- 				when 0 =>
-- 					LD0 <= '0';
-- 				when 1 =>
-- 				LD0 <= '1';
--
-- 					when others =>
-- 						--doe niks
-- 				end case;
-- 		end if;
-- end process;

end s88Timing;
