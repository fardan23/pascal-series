Program ArrayKonstan;
Uses crt;
Const
  Bulan : array [1..12] of string = ('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus',
  'September', 'Oktober', 'Nopember', 'Desember');
var
  noBulan : integer;
begin
  clrscr;
  write('Masukkan nomor bulan: '); readln(noBulan);
  write('Nama bulan ke-', noBulan, ' adalah ', Bulan[noBulan]);
  readln;
end.
