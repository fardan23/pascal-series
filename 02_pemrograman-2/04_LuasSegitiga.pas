program LuasSegitiga;
uses crt;

procedure hitungluas;
var alas, tinggi, luas : real;
begin
  write('alas  : '); readln(alas);
  write('tinggi: '); readln(tinggi);
  luas := (alas * tinggi) / 2;
  writeln('luas segitiga : ', luas:0:2);
end;

begin
  clrscr;
  writeln('menghitung luas segitiga');
  hitungluas;
  readln;
end.