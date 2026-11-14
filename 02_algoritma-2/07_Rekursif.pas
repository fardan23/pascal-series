program Rekursif;
uses crt;
var a, b : integer;
    neg : real;

function pangkat(x, y : integer) : longint;
begin
  if y = 0 then
    pangkat := 1
  else
    pangkat := x * pangkat(x, y - 1);
end;

begin
  clrscr;
  writeln('menghitung a pangkat b');
  write('masukkan bilangan a : '); readln(a);
  write('masukkan nilai b    : '); readln(b);
  if b < 0 then
  begin
    neg := 1 / (pangkat(a, abs(b)));
    writeln(a, ' pangkat ', b, ' = ', neg:0:4);
  end
  else
    writeln(a, ' pangkat ', b, ' = ', pangkat(a, b));
  readln;
end.