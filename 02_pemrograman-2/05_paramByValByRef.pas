program paramByValByRef;
uses crt;

procedure tmbhsatuval(x : integer);
begin
  x := x + 2;
  writeln('nilai a di dalam procedure by nilai ', x);
end;

procedure tmbhsaturef(var x : integer);
begin
  x := x + 2;
  writeln('nilai b di dalam procedure by reference ', x);
end;

var a, b : integer;
begin
  clrscr;
  a := 5;
  writeln('nilai a sebelum pemanggilan by value : ', a);
  tmbhsatuval(a);
  writeln('nilai a setelah pemanggilan by value : ', a);

  b := 5;
  writeln('nilai b sebelum pemanggilan by reference : ', b);
  tmbhsaturef(b);
  writeln('nilai b setelah pemanggilan by reference : ', b);
  readln;
end.