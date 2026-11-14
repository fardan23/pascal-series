program MencetakNilaiArrayPerulangan;
uses crt;
type
   array_angka= array[1..5] of integer;
var
   data_angka: array_angka;
   bilangan: integer;
begin
   clrscr;
   bilangan:= 100;
   data_angka[1]:=45;
   data_angka[2]:=35;
   data_angka[3]:=45;
   data_angka[4]:=15;
   data_angka[5]:=54;
   for bilangan := 1 to 5 do
   begin
      writeln(data_angka[bilangan], ' ');
   end;
   readln;
end.
