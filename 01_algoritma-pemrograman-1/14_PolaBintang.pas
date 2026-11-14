program PolaBintang;
uses crt;
var
   baris: integer;
   kolom: integer;
begin
   clrscr;
   for baris:= 1 to 5 do
   begin
      for kolom:= 1 to baris do
      begin
         write('* ');
      end;
      writeln();
   end;
   readln;
end.