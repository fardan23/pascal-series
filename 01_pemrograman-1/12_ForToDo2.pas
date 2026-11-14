program ForToDo;
uses crt;
var
   i: integer;
begin
   clrscr;
   writeln('Mencetak angka 1 hingga 100');
   for i:= 1 to 100 do
   begin
      write(i, ' ');
   end;
   readln;
end.