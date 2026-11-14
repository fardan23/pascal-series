program ParameterProcedurePenjumlahan;
uses crt;

procedure contoh(A, B : integer);
var C : integer;
begin
  C := A + B;
  writeln('Nilai C : ', C);
end;

var x, y : integer;
begin
  clrscr;
  write('Nilai x = '); readln(x);
  write('Nilai y = '); readln(y);
  contoh(x, y);
  readln;
end.