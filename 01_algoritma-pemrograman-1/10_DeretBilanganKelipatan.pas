program DeretBilanganKelipatan;
uses crt;
var
   i, kelipatan: integer;
begin
   clrscr;
   write('Input angka kelipatan yang diinginkan: '); readln(kelipatan);
   writeln('Bilangan kelipatan ', kelipatan, ' antara 0-100');

   i := kelipatan;
   repeat
      write(i, ' ');
      i := i + kelipatan;
   until i > 100;
   readln;
end.