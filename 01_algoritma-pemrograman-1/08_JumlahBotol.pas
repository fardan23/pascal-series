program JumlahBotol;
uses crt;
var
   air, botol600, botol300, sisa: integer;
begin
   clrscr;
   write('Input Jumlah Air: '); readln(air);
   botol600 := air div 600;
   sisa := air mod 600;
   botol300 := sisa div 300;
   writeln('Jumlah Botol 600 ml: ', botol600);
   writeln('Jumlah Botol 300 ml: ', botol300);
   readln;
end.