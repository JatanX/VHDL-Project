library IEEE;
use IEEE . STD_LOGIC_1164 .ALL;
use IEEE . NUMERIC_STD .ALL;


--library UNISIM;
--use UNISIM.VComponents.all;
entity s88 is
	port
	(
		OnboardClock, DataOut, HighBit : in std_logic;
		LED0 , LED1 , LED2 , LED3 , LED4 , LED5 , LED6 , LED7 , Load, Reset, Clock : out std_logic
	);
end s88;

architecture s88Timing of s88 is
	signal TimingCounter : unsigned (24 downto 0) := ( others => '0');
	begin
		--Genereren van de CustomClock
		timer : process(OnboardClock)
		--Variabelen
		variable ClockCounter : unsigned (24 downto 0) := (others => '0');
		variable TijdseenheidCounter : integer := 0;
		--daadwerkelijk process
		begin
			if(rising_edge(OnboardClock)) then
				ClockCounter := ClockCounter + 1;
				TimingCounter <= ClockCounter;
				if(
                                TimingCounter(0) = '0' and TimingCounter(1) = '0' and TimingCounter(2) = '0' and TimingCounter(3) = '0' and TimingCounter(4) = '0' and TimingCounter(5) = '0' and TimingCounter(6) = '1' and TimingCounter(7) = '0' and TimingCounter(8) = '0' and TimingCounter(9) = '0' and TimingCounter(10) = '0' and TimingCounter(11) = '1' and TimingCounter(12) = '1' and TimingCounter(13) = '1' and TimingCounter(14) = '1' and TimingCounter(15) = '0' and TimingCounter(16) = '1' and TimingCounter(17) = '0' and TimingCounter(18) = '1' and TimingCounter(19) = '1' and TimingCounter(20) = '1' and TimingCounter(21) = '1' and TimingCounter(22) = '1' and TimingCounter(23) = '0' and TimingCounter(24) = '1') then
					TimingCounter <= "0000000000000000000000000";
					TijdseenheidCounter := TijdseenheidCounter + 1;
                                        --init
					case TijdseenheidCounter is
                                                when 0 =>
                                                -- niks
						when 1 =>
                                                Load <= '1';
                                                when 5 =>
                                                Reset <= '1';
                                                when 6 =>
                                                Reset <= '0';
                                                Load <= '1';
						when others =>
                                                --niks

					end case;
                                        --Leds
                                        case TijdseenheidCounter is
when 2 =>
 Clock <= '1';
 when 3 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED0 <= DataOut;
 end if;
 when 8 =>
 Clock <= '1';
 when 9 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED1 <= DataOut;
 end if;
 when 14 =>
 Clock <= '1';
 when 15 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED2 <= DataOut;
 end if;
 when 20 =>
 Clock <= '1';
 when 21 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED3 <= DataOut;
 end if;
 when 26 =>
 Clock <= '1';
 when 27 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED4 <= DataOut;
 end if;
 when 32 =>
 Clock <= '1';
 when 33 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED5 <= DataOut;
 end if;
 when 38 =>
 Clock <= '1';
 when 39 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED6 <= DataOut;
 end if;
 when 44 =>
 Clock <= '1';
 when 45 =>
 Clock <= '0';
 if(HighBit = '0') then
 LED7 <= DataOut;
 end if;
 when 50 =>
 Clock <= '1';
 when 51 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED0 <= DataOut;
 end if;
 when 56 =>
 Clock <= '1';
 when 57 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED1 <= DataOut;
 end if;
 when 62 =>
 Clock <= '1';
 when 63 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED2 <= DataOut;
 end if;
 when 68 =>
 Clock <= '1';
 when 69 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED3 <= DataOut;
 end if;
 when 74 =>
 Clock <= '1';
 when 75 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED4 <= DataOut;
 end if;
 when 80 =>
 Clock <= '1';
 when 81 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED5 <= DataOut;
 end if;
 when 86 =>
 Clock <= '1';
 when 87 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED6 <= DataOut;
 end if;
 when 92 =>
 Clock <= '1';
 when 93 =>
 Clock <= '0';
 if(HighBit = '1') then
 LED7 <= DataOut;
 end if;

 when others =>
 -- niks
                                        end case;

 				end if;
 			end if;
 end process;
 end s88Timing;
