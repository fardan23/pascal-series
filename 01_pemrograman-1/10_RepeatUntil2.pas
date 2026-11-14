program RepeatUntil;
uses crt;
var
   i: integer;
begin
   clrscr;
   i:= 6;
   repeat
      begin
         writeln('pascal');
         i:= i + 1;
      end;
   until i >= 5;
   readln;
end.