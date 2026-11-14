program VolumeBalok;
uses crt;
var
   panjang, lebar, tinggi, volume: Real;
begin
   clrscr;
   writeln('=== Menghitung Volume Balok ===');
   write('Masukkan panjang : '); readln(panjang);
   write('Masukkan lebar   : '); readln(lebar);
   write('Masukkan tinggi  : '); readln(tinggi);
   writeln;

   volume := panjang * lebar * tinggi;
   writeln('Volume Balok = ', volume:0:2);
   readln;
end.