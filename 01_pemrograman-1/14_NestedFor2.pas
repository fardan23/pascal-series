program NestedFor;
uses crt;
var
   i: integer;
   baris: integer;
begin
   clrscr;
   for baris:= 1 to 3 do
   begin
      for i:= 1 to 5 do
      begin
         write('* ');
      end;
      writeln();
   end;
   readln;
end.