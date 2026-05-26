----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2026 09:30:00 PM
-- Design Name: 
-- Module Name: funnyhex_seven - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;	   
use ieee.numeric_std.all;			

entity funnyhex_seven is 
	port (
	fhex : in std_logic_vector(3 downto 0);
	segments : out std_logic_vector(6 downto 0));
end entity;

architecture dataflow of funnyhex_seven is
begin

	segments <= not "0111111" when fhex = "0000" else -- 0
	            not "0000110" when fhex = "0001" else -- 1
	            not "1011011" when fhex = "0010" else -- 2
	            not "1001111" when fhex = "0011" else -- 3
	            not "1100110" when fhex = "0100" else -- 4
	            not "1101101" when fhex = "0101" else -- 5
	            not "1111101" when fhex = "0110" else -- 6
	            not "0000111" when fhex = "0111" else -- 7
	            not "1111111" when fhex = "1000" else -- 8
	            not "1100111" when fhex = "1001" else -- 9
	            not "1110111" when fhex = "1010" else -- A
	            not "0111001" when fhex = "1011" else -- C
	            not "1110001" when fhex = "1100" else -- H
	            not "1110110" when fhex = "1101" else -- F
	            not "1110011" when fhex = "1110" else -- P
	            not "0111110" when fhex = "1111" else -- U
	            (others => '0'); -- default case          

end architecture;