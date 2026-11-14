program DeretBilanganKelipatan5;
uses crt;
var
   i: integer;
begin
   clrscr;
   i:= 5;
   writeln('Bilangan kelipatan 5 antara 0-100');
   while (i <= 100) do
   begin
      write(i, ' ');
      i:= i + 5;
   end;
   readln;
end.