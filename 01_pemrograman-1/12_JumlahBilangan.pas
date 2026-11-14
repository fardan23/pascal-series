program JumlahBilangan;
uses crt;
var
   i, batas, jumlah: integer;
begin
   clrscr;
   write('Input angka batasan: '); readln(batas);

   jumlah := 0;
   for i := 1 to batas do
   begin
      write(i, ' ');
      jumlah := jumlah + i;
   end;
   writeln;
   writeln('Jumlah seluruh angka: ', jumlah);
   readln;
end.