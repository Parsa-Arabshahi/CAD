library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY eightbit_fulladder_testbench IS
END eightbit_fulladder_testbench;
 
ARCHITECTURE behavior OF eightbit_fulladder_testbench IS 
 
 
    COMPONENT eightbit_fulladder
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

   signal S : std_logic_vector(7 downto 0);
   signal Cout : std_logic;

 
BEGIN
 

   uut: eightbit_fulladder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );


   stim_proc: process
   begin	
	A<="00000001";
	B<="00000001";
	wait for 10 ns;			
	A<="00000001";
	B<="00000010";
	wait for 10 ns;	
	A<="00100001";
	B<="00010010";
	wait for 10 ns;	
	A<="00000101";
	B<="00000110";
	wait for 10 ns;
	A<="11100101";
	B<="11001010";
	wait for 10 ns;	
	A<="10100011";
	B<="11111101";
	wait for 10 ns;	
	A<="00000110";
	B<="00000111";
	wait for 10 ns;	
	A<="00001111";
	B<="00010100";
	wait for 10 ns;	
	A<="00101001";
	B<="01111100";
	wait for 10 ns;
	A<="01111111";
	B<="10000000";
	wait for 10 ns;		

      wait;
   end process;

END;