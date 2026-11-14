program FunctionMaksimum;
uses crt;
var a, b : integer;

function Maks(x, y : integer) : integer;
begin
  if x < y then Maks := y else Maks := x;
end;

begin
  clrscr;
  write('Masukkan A = '); readln(a);
  write('Masukkan B = '); readln(b);
  writeln('Nilai maksimum = ', Maks(a,b));
  readln;
end.