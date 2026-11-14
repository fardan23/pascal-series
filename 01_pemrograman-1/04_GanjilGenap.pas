program GanjilGenap;
uses crt;
var
   angka: integer;
begin
   clrscr;
   write('Input sebuah bilangan: '); readln(angka);
   if (angka mod 2 = 0) then
      writeln('Angka Genap')
   else
      writeln('Angka Ganjil');
   readln;
end.