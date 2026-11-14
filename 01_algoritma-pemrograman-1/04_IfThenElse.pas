program IfThenElse;
uses crt;
var
   nilai: integer;
begin
   clrscr;
   nilai:= 50;
   if (nilai > 60) then
      begin
         writeln('Anda lulus');
      end
   else
      begin
         writeln('Anda tidak lulus');
      end;
   readln;
end.
