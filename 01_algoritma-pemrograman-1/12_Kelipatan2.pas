program Kelipatan2;
uses crt;
var
   i: integer;
begin
   clrscr;
   writeln('Angka kelipatan 2 dari 0-100');
   for i := 0 to 100 do
   begin
      if i mod 2 = 0 then
         write(i, ' ');
   end;
   readln;
end.