program SegitigaPerkalian;
uses crt;
var
   n, baris, kolom: integer;
begin
   clrscr;
   write('Jumlah baris segitiga: '); readln(n);

   for baris := n downto 1 do
   begin
      for kolom := n downto n - baris + 1 do
      begin
         write(baris * kolom, ' ');
      end;
      writeln;
   end;
   readln;
end.