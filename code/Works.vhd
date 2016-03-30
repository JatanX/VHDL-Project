
library IEEE;
use IEEE . STD_LOGIC_1164 .ALL;
use IEEE . NUMERIC_STD .ALL;


--library UNISIM;
--use UNISIM.VComponents.all;
entity s88 is
	port
	(
		OnboardClock, HighBit, DataOut : in std_logic;
		LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, Clock, Load, Reset : out std_logic
	);
end s88;

architecture s88Timing of s88 is
	signal TimingCounter : unsigned (24 downto 0) := ( others => '0');
	begin
		--Genereren van de CustomClock
		timer : process(OnboardClock)
		--Variabelen
		variable ClockCounter : unsigned (24 downto 0) := (others => '0');
		variable TijdseenheidCounter : unsigned (7 downto 0) := (others => '0');
		--daadwerkelijk process
		begin
			if(rising_edge(OnboardClock)) then
				ClockCounter := ClockCounter + 1;
				TimingCounter <= ClockCounter;
				if(
TimingCounter(0) = '0' and TimingCounter(1) = '0' and TimingCounter(2) = '0' and TimingCounter(3) = '0' and TimingCounter(4) = '0' and TimingCounter(5) = '0' and TimingCounter(6) = '1' and TimingCounter(7) = '0' and TimingCounter(8) = '1' and TimingCounter(9) = '1' and TimingCounter(10) = '0' and TimingCounter(11) = '1' and TimingCounter(12) = '0' and TimingCounter(13) = '0' and TimingCounter(14) = '1' and TimingCounter(15) = '0' and TimingCounter(16) = '0' and TimingCounter(17) = '0' and TimingCounter(18) = '1' and TimingCounter(19) = '1' and TimingCounter(20) = '0' and TimingCounter(21) = '0' and TimingCounter(22) = '1' and TimingCounter(23) = '0' and TimingCounter(24) = '0'
)then

					TimingCounter <= "0000000000000000000000000";
					TijdseenheidCounter := TijdseenheidCounter + 1;
	     case TijdseenheidCounter is
			 when "00000001" =>
 			Load <= '1';
			 when "00000010" =>
			 Clock <= '1';
			 when "00000011" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED0 <= DataOut;
			 end if;
			 when "00000100" =>
 			Reset <= '1';
			when "00000101" =>
			Reset <= '0';
			when "00000111" =>
			Load <= '0';
			 when "00001000" =>
			 Clock <= '1';
			 when "00001001" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED1 <= DataOut;
			 end if;
			 when "00001110" =>
			 Clock <= '1';
			 when "00001111" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED2 <= DataOut;
			 end if;
			 when "00010100" =>
			 Clock <= '1';
			 when "00010101" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED3 <= DataOut;
			 end if;
			 when "00011010" =>
			 Clock <= '1';
			 when "00011011" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED4 <= DataOut;
			 end if;
			 when "00100000" =>
			 Clock <= '1';
			 when "00100001" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED5 <= DataOut;
			 end if;
			 when "00100110" =>
			 Clock <= '1';
			 when "00100111" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED6 <= DataOut;
			 end if;
			 when "00101100" =>
			 Clock <= '1';
			 when "00101101" =>
			 Clock <= '0';
			 if(HighBit = '0') then
			 LED7 <= DataOut;
			 end if;
			 when "00110010" =>
			 Clock <= '1';
			 when "00110011" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED0 <= DataOut;
			 end if;
			 when "00111000" =>
			 Clock <= '1';
			 when "00111001" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED1 <= DataOut;
			 end if;
			 when "00111110" =>
			 Clock <= '1';
			 when "00111111" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED2 <= DataOut;
			 end if;
			 when "01000100" =>
			 Clock <= '1';
			 when "01000101" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED3 <= DataOut;
			 end if;
			 when "01001010" =>
			 Clock <= '1';
			 when "01001011" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED4 <= DataOut;
			 end if;
			 when "01010000" =>
			 Clock <= '1';
			 when "01010001" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED5 <= DataOut;
			 end if;
			 when "01010110" =>
			 Clock <= '1';
			 when "01010111" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED6 <= DataOut;
			 end if;
			 when "01011100" =>
			 Clock <= '1';
			 when "01011101" =>
			 Clock <= '0';
			 if(HighBit = '1') then
			 LED7 <= DataOut;
			 end if;

			 when others =>
        	--niks
      end case;

 				end if;
 			end if;
 end process;
 end s88Timing;
CODE BACKUP.txt
CODE BACKUP.txt wordt weergegeven.
