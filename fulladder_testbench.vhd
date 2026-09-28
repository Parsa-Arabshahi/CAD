library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY fulladder_testbench IS
END fulladder_testbench;
 
ARCHITECTURE behavior OF fulladder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin	

      A <= '0';
      B <= '0';
      Cin <= '0';
      wait for 10 ns;
	
      A <= '1';
      B <= '0';
      Cin <= '0';
      wait for 10 ns;
 
      A <= '0';
      B <= '1';
      Cin <= '0';
      wait for 10 ns;
 
      A <= '1';
      B <= '1';
      Cin <= '0';
      wait for 10 ns;
 
      A <= '0';
      B <= '0';
      Cin <= '1';
      wait for 10 ns;
 
      A <= '1';
      B <= '0';
      Cin <= '1';
      wait for 10 ns;
 
      A <= '0';
      B <= '1';
      Cin <= '1';
      wait for 10 ns;
 
      A <= '1';
      B <= '1';
      Cin <= '1';
      wait for 10 ns;

      wait;
   end process;

END;