program BolaPantul;
uses crt;
var
   tinggi: real;
   pantulan: integer;
begin
   clrscr;
   write('Input ketinggian bola: '); readln(tinggi);
   pantulan := 0;
   while (tinggi > 20) do
   begin
      pantulan:= pantulan + 1;
      tinggi := tinggi / 2;
   end;
   writeln('Jumlah pantulan: ', pantulan);
   readln;
end.