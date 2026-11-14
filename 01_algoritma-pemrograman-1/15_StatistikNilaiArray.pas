program StatistikNilaiArray;
uses crt;
type
   array_angka = array[1..5] of integer;
var
   data_angka: array_angka;
   i, jumlah, tertinggi, terendah: integer;
   rata_rata: real;
begin
   clrscr;
   for i := 1 to 5 do
   begin
      write('Input data ke-', i, ': ');
      readln(data_angka[i]);
   end;

   jumlah := 0;
   tertinggi := data_angka[1];
   terendah := data_angka[1];

   for i := 1 to 5 do
   begin
      jumlah := jumlah + data_angka[i];
      if data_angka[i] > tertinggi then
         tertinggi := data_angka[i];
      if data_angka[i] < terendah then
         terendah := data_angka[i];
   end;

   rata_rata := jumlah / 5;

   writeln;
   writeln('=== HASIL DATA ===');
   writeln('Jumlah data     : ', 5);
   writeln('Nilai tertinggi : ', tertinggi);
   writeln('Nilai terendah  : ', terendah);
   writeln('Rata-rata       : ', rata_rata:0:2);
   readln;
end.