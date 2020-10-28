-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/28/2020 07:09:03"
                                                            
-- Vhdl Test Bench template for design  :  Practica5
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                

ENTITY Practica5_vhd_tst IS
END Practica5_vhd_tst;

ARCHITECTURE Practica5_arch OF Practica5_vhd_tst IS
-- constants                                                 
-- signals                                                   
	SIGNAL a : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL b : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL ov : STD_LOGIC;
	SIGNAL S0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL S1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	
	COMPONENT Practica5
		PORT (
		a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		b : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		ov : OUT STD_LOGIC;
		S0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		S1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;

BEGIN
	i1 : Practica5
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	ov => ov,
	S0 => S0,
	S1 => S1
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
	for i in 0 to 31 loop
		a <= std_logic_vector(to_unsigned(i, 5));
		
		for j in 0 to 31 loop
			b <= std_logic_vector(to_unsigned(j, 5));
			wait for 100 ns;
			assert unsigned(c_out&s) = i+j
			report "fallo en la suma"
			severity failure;
		end loop;
	end loop;
		
WAIT;                                                        
END PROCESS always;                                          
END Practica5_arch;
