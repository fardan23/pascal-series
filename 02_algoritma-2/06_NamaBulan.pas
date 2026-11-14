program NamaBulan;
uses crt;
var bln : integer;

function NamaBulan(bln : integer) : string;
begin
  case bln of
    1 : NamaBulan := 'Januari';
    2 : NamaBulan := 'Februari';
    3 : NamaBulan := 'Maret';
    4 : NamaBulan := 'April';
    5 : NamaBulan := 'Mei';
    6 : NamaBulan := 'Juni';
    7 : NamaBulan := 'Juli';
    8 : NamaBulan := 'Agustus';
    9 : NamaBulan := 'September';
    10: NamaBulan := 'Oktober';
    11: NamaBulan := 'November';
    12: NamaBulan := 'Desember';
  else
    NamaBulan := 'Bulan tidak valid';
  end;
end;

begin
  clrscr;
  write('Masukkan nomor bulan (1-12) = '); readln(bln);
  writeln('Nama bulan = ', NamaBulan(bln));
  readln;
end.