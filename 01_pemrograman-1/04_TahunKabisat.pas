program TahunKabisat;
uses crt;
var
   tahun: integer;
begin
   clrscr;
   write('Input tahun: '); readln(tahun);
   if (tahun mod 4 = 0) then
      writeln('Tahun Kabisat')
   else
      writeln('Bukan Tahun Kabisat');
   readln;
end.