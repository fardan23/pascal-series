program KonversiSuhu;
uses crt;
var
  celsius, fahrenheit, reamur: Real;
begin
  clrscr;
  writeln('=== Konversi Suhu ===');
  write('Masukkan suhu dalam Celsius: '); readln(celsius);
  writeln;

  fahrenheit := (celsius * 1.8) + 32;
  reamur := celsius * 4 / 5;

  writeln('Fahrenheit = ', fahrenheit:0:2);
  writeln('Reamur     = ', reamur:0:2);
  readln;
end.