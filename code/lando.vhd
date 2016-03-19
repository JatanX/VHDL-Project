library IEEE ;

use IEEE . STD_LOGIC_1164 .ALL;

use IEEE . NUMERIC_STD .ALL;

-- library UNISIM ;

--use UNISIM . VComponents . all;

entity mainfile is

port (

OnboardClock , SW0 , GPIO12 : in std_logic ;

LED0 , LED1 , LED2 , LED3 , LED4 , LED5 , LED6 , LED7 , GPIO14 , GPIO16 , GPIO17 : out std_logic

);

end mainfile ;

14

architecture Behavioral of mainfile is

signal timing : unsigned (20 downto 0) := ( others = > ’0 ’);

signal data : unsigned (3 downto 0) := ( others = > ’0 ’);

convertClock : process ( OnboardClock )

variable clock : unsigned (20 downto 0) := "100000000000000000000";

if rising_edge ( OnboardClock ) then

end if ;

end process ;

begin

clock := clock + 1;

timing <= clock ;

10 Apendix containing Source Listings

timingModule : process ( timing )

begin

if ( timing (20) = ’1 ’) then

GPIO16 <= ’1 ’;

if ( timing (19) = ’0 ’ and timing (18) = ’0 ’

and timing (17) = ’1 ’) then

GPIO14 <= ’1 ’;

else

GPIO14 <= ’0 ’;

end if ;

if ( timing (19) = ’0 ’ and timing (18) = ’1 ’

and timing (17) = ’1 ’) then

GPIO17 <= ’1 ’;

else

GPIO17 <= ’0 ’;

end if ;

else

GPIO16 <= ’0 ’;

GPIO14 <= timing (15);

end if ;

end process ;

assignment : process ( timing (15))

begin

if ( rising_edge ( timing (15)) and timing (20) = ’0 ’) then

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’0 ’

and data (1) = ’0 ’ and data (0) = ’0 ’) then

end if ;

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’0 ’

and data (1) = ’0 ’ and data (0) = ’1 ’) then

end if ;

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’0 ’

and data (1) = ’1 ’ and data (0) = ’0 ’) then

end if ;

LED0 <= GPIO12 ;

LED1 <= GPIO12 ;

LED2 <= GPIO12 ;

16

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’0 ’

and data (1) = ’1 ’ and data (0) = ’1 ’) then

LED3 <= GPIO12 ;

end if ;

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’1 ’

and data (1) = ’0 ’ and data (0) = ’0 ’) then

LED4 <= GPIO12 ;

end if ;

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’1 ’

and data (1) = ’0 ’ and data (0) = ’1 ’) then

LED5 <= GPIO12 ;

end if ;

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’1 ’

and data (1) = ’1 ’ and data (0) = ’0 ’) then

LED6 <= GPIO12 ;

end if ;

if ( SW0 = ’0 ’ and data (3) = ’0 ’ and data (2) = ’1 ’

and data (1) = ’1 ’ and data (0) = ’1 ’) then

LED7 <= GPIO12 ;

end if ;

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’0 ’

and data (1) = ’0 ’ and data (0) = ’0 ’) then

LED0 <= GPIO12 ;

end if ;

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’0 ’

and data (1) = ’0 ’ and data (0) = ’1 ’) then

LED1 <= GPIO12 ;

end if ;

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’0 ’

and data (1) = ’1 ’ and data (0) = ’0 ’) then

LED2 <= GPIO12 ;

end if ;

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’0 ’

and data (1) = ’1 ’ and data (0) = ’1 ’) then

LED3 <= GPIO12 ;

end if ;

10 Apendix containing Source Listings

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’1 ’

and data (1) = ’0 ’ and data (0) = ’0 ’) then

end if ;

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’1 ’

and data (1) = ’0 ’ and data (0) = ’1 ’) then

end if ;

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’1 ’

and data (1) = ’1 ’ and data (0) = ’0 ’) then

end if ;

if ( SW0 = ’1 ’ and data (3) = ’1 ’ and data (2) = ’1 ’

and data (1) = ’1 ’ and data (0) = ’1 ’) then

end if ;

data <= data + 1;

end if ;

end process ;

end Behavioral ;

LED4 <= GPIO12 ;

LED5 <= GPIO12 ;

LED6 <= GPIO12 ;

LED7 <= GPIO12 ;