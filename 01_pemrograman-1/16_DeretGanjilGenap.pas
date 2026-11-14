program DeretGanjilGenap;
uses crt;
var
   n, i, jumlah: integer;
   npm_terakhir: integer;
begin
   clrscr;
   write('Masukkan digit terakhir NPM: '); readln(npm_terakhir);
   write('Input bilangan (n): '); readln(n);

   i := 1;
   jumlah := 0;
   if npm_terakhir mod 2 = 1 then
   begin
      writeln('Deret bilangan ganjil:');
      while i < n do
      begin
         if i mod 2 = 1 then
         begin
            write(i, ' ');
            jumlah := jumlah + i;
         end;
         i := i + 1;
      end;
   end
   else
   begin
      writeln('Deret bilangan genap:');
      i := 1;
      while i < n do
      begin
         if i mod 2 = 0 then
         begin
            write(i, ' ');
            jumlah := jumlah + i;
         end;
         i := i + 1;
      end;
   end;
   writeln;
   writeln('Total jumlah : ', jumlah);
   readln;
end.