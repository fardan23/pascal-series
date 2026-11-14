program ForDowntoDo;
uses crt;
var
   i: integer;
begin
   clrscr;
   for i:= 10 downto 0 do
   begin
      writeln('Hitung mundur: ', i);
   end;
   readln;
end.