ENTITY TROCADOR IS 
PORT(	a: in bit_vector(3 downto 0);
	b: in bit_vector(3 downto 0);
	sel: in bit;
	s0: out bit_vector(3 downto 0);
	s1: out bit_vector(3 downto 0));
end TROCADOR;

ARCHITECTURE BEHAVIOR OF TROCADOR IS
begin
	PROCESS(a,b,sel)
	begin
	if (sel='0') then
	s0 <= a;
	s1 <= b;
	else
	s0 <= b;
	s1 <= a;
	end if;
	end process;
end BEHAVIOR;


