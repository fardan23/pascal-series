program ParamMasukanKeluaran;
uses crt;

procedure tambahsatu(var x : integer);
begin
  x := x + 1;
end;

var a : integer;
begin
  clrscr;
  a := 10;
  tambahsatu(a);
  writeln('nilai a = ', a);
  readln;
end.