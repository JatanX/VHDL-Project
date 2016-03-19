library IEEE;
use IEEE . STD_LOGIC_1164 .ALL;
use IEEE . NUMERIC_STD .ALL;


--library UNISIM;
--use UNISIM.VComponents.all;
entity s88 is
	port
	(
		OnboardClock, DataOut : in std_logic;
		LED0 , LED1 , LED2 , LED3 , LED4 , LED5 , LED6 , LED7 , Load, Reset, Clock : out std_logic
	);
end s88;

architecture s88Timing of s88 is
	signal TimingCounter : unsigned (25 downto 0) := ( others => '0');
	begin
		--Genereren van de CustomClock
		timer : process(OnboardClock)
		--Variabelen
		variable ClockCounter : unsigned (25 downto 0) := (others => '0');
		variable TijdseenheidCounter : integer := 0;
		--daadwerkelijk process
		begin
			if(rising_edge(OnboardClock)) then
				ClockCounter := ClockCounter + 1;
				TimingCounter <= ClockCounter;
				if(
                                TimingCounter(0) = '0' and
                                TimingCounter(1) = '0' and
                                TimingCounter(2) = '0' and
                                TimingCounter(3) = '0' and
                                TimingCounter(4) = '0' and
                                TimingCounter(5) = '0' and
                                TimingCounter(6) = '1' and
                                TimingCounter(7) = '0' and
                                TimingCounter(8) = '0' and
                                TimingCounter(9) = '0' and
                                TimingCounter(10) = '0' and
                                TimingCounter(11) = '1' and
                                TimingCounter(12) = '1' and
                                TimingCounter(13) = '1' and
                                TimingCounter(14) = '1' and
                                TimingCounter(15) = '0' and
                                TimingCounter(16) = '1' and
                                TimingCounter(17) = '0' and
                                TimingCounter(18) = '1' and
                                TimingCounter(19) = '1' and
                                TimingCounter(20) = '1' and
                                TimingCounter(21) = '1' and
                                TimingCounter(22) = '1' and
                                TimingCounter(23) = '0' and
                                TimingCounter(24) = '1') then
					TimingCounter <= "00000000000000000000000000";
					TijdseenheidCounter := TijdseenheidCounter + 1;
					case TijdseenheidCounter is
                                                when 0 =>
                                                -- niks
						when 1 =>
                                                Load <= '1';
						when 2 =>
						clock <= '1';
                                                when 3 =>
                                                clock <= '0';
                                                LED0 <= DataOut;
                                                when 4 =>
                                                --niks
                                                when 5 =>
                                                Reset <= '1';
                                                when 6 =>
                                                Reset <= '0';
                                                Load <= '1';
                                                when 7 =>
                                                --niks
                                                when 8 =>
                                                clock <= '1';
                                                when 9 =>
                                                clock <= '0';
                                                LED2 <= DataOut;


						when others =>

					end case;
					--Hiermee wordt de CustomClock getoggLED
				end if;
			end if;
end process;
end s88Timing;
