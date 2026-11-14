program IfThenElseIf;
uses crt;
var
   bilangan: integer;
begin
   clrscr;
   write('Input bilangan: '); readln(bilangan);
   if (bilangan > 0) then
      begin
         writeln('Bilangan Positif');
      end
   else if (bilangan < 0) then
      begin
         writeln('Bilangan Negatif');
      end
   else
      begin
         writeln('Bilangan Nol');
      end;
   readln;
end.
