program FuncHitungParamVar;
uses crt;

function Hitung(var A, B : integer) : integer;
begin
  Hitung := A + B;
end;

var X, Y : integer;
begin
  clrscr;
  write('Nilai X ? '); readln(X);
  write('Nilai Y ? '); readln(Y);
  writeln;
  writeln(X, ' + ', Y, ' = ', Hitung(X, Y));
  readln;
end.