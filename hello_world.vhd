entity hello_world is
port(
	A, B: in bit;
	Sor, Sand: out bit
);
end entity;

architecture behaviour of hello_world is
begin
	Sor <= A or A;
	Sand <= A and B;
end architecture;