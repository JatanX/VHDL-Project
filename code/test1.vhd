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
		LED0 : out std_logic;
	);
end s88V2;

architecture default or s88V2 is
	begin
		LED0 <= '1';
end process
end;