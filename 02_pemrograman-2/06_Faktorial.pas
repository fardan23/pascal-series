program Faktorial;
uses crt;
var n : integer;

function f(n : integer) : longint;
var i, hasil : longint;
begin
  hasil := 1;
  for i := 1 to n do
    hasil := hasil * i;
  f := hasil;
end;

begin
  clrscr;
  write('Masukkan jumlah faktorial : '); readln(n);
  writeln('Hasil faktorial = ', f(n));
  readln;
end.