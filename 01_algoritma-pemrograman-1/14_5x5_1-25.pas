program NestedFor;
uses crt;
var
   baris: integer;
   kolom: integer;
begin
   clrscr;
   for baris:= 1 to 5 do
   begin
      for kolom:= 1 to 5 do
      begin
         write(baris * kolom, ' ');
      end;
      writeln();
   end;
   readln;
end.
