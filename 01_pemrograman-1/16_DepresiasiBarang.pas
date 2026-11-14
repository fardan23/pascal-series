program DepresiasiBarang;
uses crt;
var
   harga_awal, harga: real;
   depresiasi: real;
   tahun: integer;
begin
   clrscr;
   write('Harga Awal Barang: '); readln(harga_awal);
   write('Input Nilai Depresiasi per tahun (%): '); readln(depresiasi);
   
   harga := harga_awal;
   tahun := 1;
   repeat
      writeln('Tahun ke-', tahun, ': ', harga:0:0);
      harga := harga - (harga * depresiasi / 100);
      tahun := tahun + 1;
   until tahun > 5;
   readln;
end.