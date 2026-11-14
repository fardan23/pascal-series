program QuizUtsSoal2;
uses crt;

procedure Hitung(A, B, C : integer);
begin
  C := A + B;
  writeln;
  writeln(' A=', A, ' B=', B, ' C=', C);
end;

var X, Y, Z : integer;
begin
  clrscr;
  X := 5; Y := 8; Z := 0;
  Hitung(X, Y, Z);
  writeln(' X=', X, ' Y=', Y, ' Z=', Z);
  readln;
end.