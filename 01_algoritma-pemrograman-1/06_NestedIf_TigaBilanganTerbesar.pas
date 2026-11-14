program TigaBilanganTerbesar;
uses crt;
var
   a, b, c: integer;
begin
   clrscr;
   write('Input bilangan pertama: '); readln(a);
   write('Input bilangan kedua: '); readln(b);
   write('Input bilangan ketiga: '); readln(c);
   if (a > b) then
      if (a > c) then
         writeln('Angka terbesar: ', a)
      else
         writeln('Angka terbesar: ', c)
   else
      if (b > c) then
         writeln('Angka terbesar: ', b)
      else
         writeln('Angka terbesar: ', c);
   readln;
end.
