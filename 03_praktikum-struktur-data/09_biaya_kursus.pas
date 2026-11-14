program BiayaKursus;
uses crt;
const
  MaxSiswa = 100;
  { lebar kolom tabel }
  WNo    = 16;
  WNama  = 24;
  WNilai = 7;
  WGrade = 7;
  WBiaya = 12;
type
  { Record yang berisi array }
  DataKursus = record
    NoDaftar : array[1..MaxSiswa] of string[10];
    Nama     : array[1..MaxSiswa] of string[30];
    Nilai    : array[1..MaxSiswa] of integer;
    Grade    : array[1..MaxSiswa] of char;
    Biaya    : array[1..MaxSiswa] of longint;
  end;
var
  Siswa : DataKursus;
  n, i  : integer;
{ Mengulang karakter c sebanyak k kali }
function Ulang(c: char; k: integer): string;
var s: string; j: integer;
begin
  s := '';
  for j := 1 to k do s := s + c;
  Ulang := s;
end;
{ Merapikan teks s ke lebar w. mode: 'L' = rata kiri, 'R' = rata kanan, 'C' = tengah }
function Pad(s: string; w: integer; mode: char): string;
var sisa, kiri: integer;
begin
  if length(s) >= w then
    Pad := copy(s, 1, w)
  else
  begin
    sisa := w - length(s);
    if mode = 'L' then
      Pad := s + Ulang(' ', sisa)
    else if mode = 'R' then
      Pad := Ulang(' ', sisa) + s
    else
    begin
      kiri := sisa div 2;
      Pad := Ulang(' ', kiri) + s + Ulang(' ', sisa - kiri);
    end;
  end;
end;
{ Mengubah angka menjadi string }
function KeStr(x: longint): string;
var s: string;
begin
  str(x, s);
  KeStr := s;
end;
{ Menentukan grade dan biaya berdasarkan nilai }
procedure HitungBiaya(nilai: integer; var g: char; var b: longint);
begin
  if (nilai >= 1) and (nilai <= 50) then
  begin g := '0'; b := 5500000; end
  else if (nilai >= 51) and (nilai <= 55) then
  begin g := 'E'; b := 4500000; end
  else if (nilai >= 56) and (nilai <= 60) then
  begin g := 'D'; b := 4000000; end
  else if (nilai >= 61) and (nilai <= 70) then
  begin g := 'C'; b := 3500000; end
  else if (nilai >= 71) and (nilai <= 85) then
  begin g := 'B'; b := 2500000; end
  else
  begin g := 'A'; b := 1500000; end;
end;
{ Mencetak garis pemisah tabel }
procedure Garis(c: char);
begin
  writeln(Ulang(c, WNo + WNama + WNilai + WGrade + WBiaya + 6));
end;

var
  lebarTabel: integer;

begin
  clrscr;
  write('Masukkan jumlah Siswa Kursus yang akan diinput : '); readln(n);
  writeln(Ulang('-', 60));
  { Input data }
  for i := 1 to n do
  begin
    writeln('Siswa ke-', i);
    write('No Pendaftaran : '); readln(Siswa.NoDaftar[i]);
    write('Nama           : '); readln(Siswa.Nama[i]);
    write('Nilai          : '); readln(Siswa.Nilai[i]);
    HitungBiaya(Siswa.Nilai[i], Siswa.Grade[i], Siswa.Biaya[i]);
    writeln;
  end;
  { Tampilkan daftar }
  lebarTabel := WNo + WNama + WNilai + WGrade + WBiaya + 6;
  writeln;
  writeln(Pad('DAFTAR SISWA KURSUS', lebarTabel, 'C'));
  Garis('=');
  writeln('|', Pad('No Pendaftaran', WNo, 'C'),
          '|', Pad('Nama', WNama, 'C'),
          '|', Pad('Nilai', WNilai, 'C'),
          '|', Pad('Grade', WGrade, 'C'),
          '|', Pad('Biaya', WBiaya, 'C'), '|');
  Garis('=');
  for i := 1 to n do
  begin
    writeln('| ', Pad(Siswa.NoDaftar[i], WNo - 1, 'L'),
            '| ', Pad(Siswa.Nama[i], WNama - 1, 'L'),
            '|', Pad(KeStr(Siswa.Nilai[i]), WNilai, 'C'),
            '|', Pad(Siswa.Grade[i], WGrade, 'C'),
            '|', Pad(KeStr(Siswa.Biaya[i]) + ' ', WBiaya, 'R'), '|');
  end;
  Garis('=');
  readln;
end.