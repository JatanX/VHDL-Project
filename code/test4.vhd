
library IEEE;
use IEEE . STD_LOGIC_1164 .ALL;
use IEEE . NUMERIC_STD .ALL;


--library UNISIM;
--use UNISIM.VComponents.all;
entity s88 is
	port
	(
		OnboardClock, DataOut : in std_logic;
		LED0, Clock, Load : out std_logic
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
TimingCounter(0) = '0' and TimingCounter(1) = '0' and TimingCounter(2) = '0' and TimingCounter(3) = '0' and TimingCounter(4) = '0' and TimingCounter(5) = '0' and TimingCounter(6) = '1' and TimingCounter(7) = '0' and TimingCounter(8) = '0' and TimingCounter(9) = '0' and TimingCounter(10) = '0' and TimingCounter(11) = '1' and TimingCounter(12) = '1' and TimingCounter(13) = '1' and TimingCounter(14) = '1' and TimingCounter(15) = '0' and TimingCounter(16) = '1' and TimingCounter(17) = '0' and TimingCounter(18) = '1' and TimingCounter(19) = '1' and TimingCounter(20) = '1' and TimingCounter(21) = '1' and TimingCounter(22) = '1' and TimingCounter(23) = '0' and TimingCounter(24) = '1') then
					TimingCounter <= "0000000000000000000000000";
					TijdseenheidCounter := TijdseenheidCounter + 1;
		case TijdseenheidCounter is
			when "00000001" =>
			Load <= '1';
			when "00000010" =>
			clock <= '1';
			when "00000011" =>
			clock <= '1';
			when others =>
			-- niks
		end case;
		LED0 <= DataOut;


 				end if;
 			end if;
 end process;
 end s88Timing;
