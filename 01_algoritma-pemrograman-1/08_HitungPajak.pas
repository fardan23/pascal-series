program HitungPajak;
uses crt;
var
   penghasilan, pajak: real;
   persen: integer;
begin
   clrscr;
   write('Input Penghasilan Setahun: '); readln(penghasilan);
   if (penghasilan <= 60000000) then
      begin
         persen := 5;
         pajak := penghasilan * 0.05;
      end
   else
      begin
         persen := 10;
         pajak := penghasilan * 0.10;
      end;
   
   writeln('Besaran Pajak adalah: ', persen, '%');
   writeln('Jumlah pajak yang dibayarkan adalah: Rp', pajak:0:0);
   readln;
end.