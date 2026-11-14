program PolaAngka2;
uses crt;
var
   baris, angka: integer;
begin
   clrscr;
   for baris := 5 downto 1 do
   begin
      for angka := baris downto 1 do
      begin
         write(angka, ' ');
      end;
      writeln;
   end;
   readln;
end.