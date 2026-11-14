program Pangkat;
uses crt;
var
   a, b, counter, hasil: integer;
begin
   clrscr;
   write('Input bilangan pertama: '); readln(a);
   write('Input bilangan kedua: '); readln(b);

   hasil:= 1;
   for counter:= 1 to b do
   begin
      hasil := hasil * a;
   end;
   writeln('Maka nilai ', a, ' pangkat ', b, ' adalah: ', hasil);
   readln;
end.
