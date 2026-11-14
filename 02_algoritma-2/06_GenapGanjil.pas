program GenapGanjil;
uses crt;
var X : integer;

function Genap(n : integer) : boolean;
begin
  Genap := (n mod 2 = 0);
end;

begin
  clrscr;
  write('Masukkan bilangan = '); readln(X);
  if Genap(X) then writeln('Genap') else writeln('Ganjil');
  readln;
end.