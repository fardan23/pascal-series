program DeretBilanganKelipatan5;
uses crt;
var
   i: integer;
begin
   clrscr;
   writeln('Bilangan kelipatan 5 antara 0-100');
   i:= 5;
   repeat
      begin
         write(i, ' ');
         i:= i + 5;
      end;
   until i > 100;
   readln;
end.