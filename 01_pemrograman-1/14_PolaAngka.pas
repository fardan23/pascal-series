program PolaAngka;
uses crt;
var
   baris, angka: integer;
begin
   clrscr;
   for baris := 5 downto 1 do
   begin
      for angka := 5 downto baris do
      begin
         write(angka, ' ');
      end;
      writeln;
   end;
   readln;
end.