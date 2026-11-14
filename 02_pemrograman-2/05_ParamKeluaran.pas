program ParamKeluaran;
uses crt;

procedure kali(x, y : integer; var hasil : integer);
begin
  hasil := x * y;
end;

var a, b, c : integer;
begin
  clrscr;
  a := 10;
  b := 50;
  kali(a, b, c);
  writeln('nilai c = ', c);
  readln;
end.