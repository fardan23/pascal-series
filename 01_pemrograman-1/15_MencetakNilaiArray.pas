program MencetakNilaiArray;
uses crt;
type
   array_angka= array[1..5] of integer;
var
   data_angka: array_angka;
   bilangan: integer;
begin
   clrscr;
   bilangan:= 100;
   writeln(bilangan);
   data_angka[1]:=45;
   data_angka[2]:=35;
   writeln(data_angka[1]);
   writeln(data_angka[2]);
   readln;
end.
