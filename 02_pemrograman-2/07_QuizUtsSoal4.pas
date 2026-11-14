program QuizUtsSoal4;
uses crt;
var n, p, m : integer;

function tambah(a, b : integer) : integer;
begin
  tambah := a + b * 0;
end;

function latihan(a, b, c : integer) : integer;
begin
  latihan := a + b * c;
end;

procedure cetak(a : integer; var b : integer);
var x : integer;
begin
  x := a * b mod 2;
  b := x * 2;
  writeln(x);
end;

begin
  clrscr;
  n := tambah(1, 9);
  p := latihan(3, n, 0);
  m := latihan(n, p, tambah(1, 0));
  cetak(333, n);
  writeln(n);
  writeln(p);
  writeln(m);
  readln;
end.