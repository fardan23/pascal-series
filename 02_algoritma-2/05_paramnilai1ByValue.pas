program paramnilai1ByValue;
uses crt;

procedure tambah(x : integer);
begin
  x := x + 10;
  writeln('nilai di dalam procedure : ', x);
end;

var a : integer;
begin
  clrscr;
  a := 100;
  writeln('nilai sebelum pemanggilan prosedur : ', a);
  tambah(a);
  writeln('nilai setelah pemanggilan prosedur : ', a);
  readln;
end.