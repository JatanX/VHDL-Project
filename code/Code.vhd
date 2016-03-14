Library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

--library UNISIM;
--use UNISIM.VComponents.all;
entity s88V2 is
	port
	(
		OnboardClock, SW0, GPIO12 : in std_logic;
--		LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, GPIO14, GPIO16, GPIO17 : out std_logic;


		clock			: in std_logic;
		data_input		: in std_logic;
		load_output		: out std_logic := '0';
		clock_output	: out std_logic := '0';
		reset_output	: out std_logic := '0';	
		data_output		: out std_logic := '0';
		test_output 	: out std_logic := '0'
	);
end s88V2;


architecture s88TimingV2 of s88V2 is
signal CounterForTheClock 	: integer := 0;				-- gebruikt om de hoeveelheid klokslagen bij te houden
signal CounterForTheTime 	: integer := 0;				-- 
signal HertzToUse			: integer := 1;
begin

	increase_CounterForTheClock_on_clock : process(clock)
	begin
		if rising_edge(clock) then
			if CounterForTheClock = HertzToUse then 
					--als er de gewenste hoeveelheid klokslagen verstreken zijn dan wordt de CounterForTheTime verhoogd.
				if CounterForTheTime > 8 then
					CounterForTheTime <= 0;
				else
					CounterForTheTime <= CounterForTheTime + 1;
				end if;
				CounterForTheClock <= 0;
			else
			CounterForTheClock <= CounterForTheClock + 1; --houdt bij hoeveel klokslagen er zijn geweest, 
			end if;
		end if;
	
	end process increase_CounterForTheClock_on_clock;
	
	Read_IO_Case : process(CounterForTheTime)
		begin
			case CounterForTheTime is
				when 0 =>
					--doe niks
				when 1 =>
					load_output 	<= '1';
				when 2 =>
					clock_output 	<= '1';
				when 3 =>
					clock_output 	<= '0';
					data_output	<= '1';
				when 4 =>
					reset_output	<= '1';	
				when 5 =>	
					reset_output	<= '0';
				when 6 =>
					load_output 	<= '0';
				when 7 =>
					clock_output	<= '1';	
				when 8 =>
					clock_output	<= '0';
					data_output	<= '0';
				when others =>
					--doe niks		
			end case;
		end process Read_IO_Case;
	
end s88TimingV2;