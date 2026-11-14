program TanyaHitungVarLokal;
uses crt;

procedure Tanya_Hitung;
var X,Y : real;
begin
  write('Nilai X ? '); readln(X);
  Y := X * X;
  writeln('Nilai Y = ', Y:6:2);
end;

begin
  clrscr;
  Tanya_Hitung;
  readln;
end.