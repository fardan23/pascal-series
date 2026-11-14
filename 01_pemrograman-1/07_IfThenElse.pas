program IfThenElse;
uses crt;
var
   bilangan: integer;
begin
   clrscr;
   write('Input bilangan: '); readln(bilangan);
   if (bilangan = 1) then
      writeln('Satu')
   else if (bilangan = 2) then
      writeln('Dua')
   else if (bilangan = 3) then
      writeln('Tiga')
   else if (bilangan = 4) then
      writeln('Empat');
   readln;
end.