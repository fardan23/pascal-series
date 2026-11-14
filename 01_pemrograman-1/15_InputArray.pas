program InputArray;
uses crt;
type
   array_angka= array[1..5] of integer;
var
   data_angka: array_angka;
   i: integer;
begin
   clrscr;
   for i:= 1 to 5 do
   begin
      write('Input data ke-', i, ': ');
      readln(data_angka[i]);
   end;
   for i := 1 to 5 do
   begin
      write(data_angka[i], ' ');
   end;
   readln;
end.
