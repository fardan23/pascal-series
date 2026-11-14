program FunctionKali;
uses crt;

function Kali(x, y : integer) : longint;
var Hasil : longint;
begin
  Hasil := x * y;
  Kali := Hasil;
end;

var A : longint;
begin
  clrscr;
  A := Kali(10, 5);
  writeln('Hasil = ', A);
  readln;
end.