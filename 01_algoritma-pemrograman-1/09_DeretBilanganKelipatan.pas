program DeretBilanganKelipatan;
uses crt;
var
   i, kelipatan: integer;
begin
   clrscr;
   write('Input angka kelipatan: ');
   readln(kelipatan);

   writeln('Bilangan kelipatan ', kelipatan, ' antara 0-100');
   i := kelipatan;
   while (i <= 100) do
   begin
      write(i, ' ');
      i := i + kelipatan;
   end;
   readln;
end.