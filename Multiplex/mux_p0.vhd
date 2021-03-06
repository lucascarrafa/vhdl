library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux_p0 is
	port (
	i0, i1, i2, i3 : in bit;
	s0, s1 : in bit;
	ot : out bit
);
end mux_p0;

architecture teste of mux_p0 is
	signal int0, int1, int2, int3 : bit;
begin
	process(i0, i1, i2, i3, s0, s1, int0, int1, int2, int3)
	begin
		ot <= int0 or int1 or int2 or int3;
		int0 <= i0 and not s1 and not s0;
		int1 <= i1 and not s1 and s0;
		int2 <= i2 and s1 and not s0;
		int3 <= i3 and s1 and s0;
	end process;
end teste;