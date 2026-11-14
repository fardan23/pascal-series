program ProcedureMaksimum;
uses crt;
var a,b,c : integer;

procedure maksimum;
var maks : integer;
begin
  if a > b then maks := a else maks := b;
  if c > maks then maks := c;
  writeln('Nilai maksimum = ', maks);
end;

begin
  clrscr;
  write('Masukkan a = '); readln(a);
  write('Masukkan b = '); readln(b);
  write('Masukkan c = '); readln(c);
  maksimum;
  readln;
end.