program SoalTugasProcedure;
uses crt;

procedure GajiKaryawan;
var
  nama : string;
  gajiPokok, tunjangan, totalGaji : real;
begin
  clrscr;
  writeln('=== SOAL 1: GAJI KARYAWAN ===');
  write('Nama karyawan : '); readln(nama);
  write('Gaji pokok    : '); readln(gajiPokok);

  tunjangan := 0.2 * gajiPokok;
  totalGaji := gajiPokok + tunjangan;

  writeln;
  writeln('Nama Karyawan : ', nama);
  writeln('Gaji Pokok    : ', gajiPokok:0:2);
  writeln('Tunjangan     : ', tunjangan:0:2);
  writeln('Total Gaji    : ', totalGaji:0:2);
  readln;
end;

procedure LuasKeliling;
var
  panjang, lebar, luas, keliling : real;
begin
  clrscr;
  writeln('=== SOAL 2: LUAS & KELILING PERSEGI PANJANG ===');
  write('Panjang : '); readln(panjang);
  write('Lebar   : '); readln(lebar);

  luas := panjang * lebar;
  keliling := 2 * (panjang + lebar);

  writeln;
  writeln('Luas     = ', luas:0:2);
  writeln('Keliling = ', keliling:0:2);
  readln;
end;

procedure NilaiMahasiswa;
var
  nilai : real;
  grade : char;
begin
  clrscr;
  writeln('=== SOAL 3: NILAI MAHASISWA ===');
  write('Masukkan nilai (0-100) : '); readln(nilai);

  if nilai >= 80 then
    grade := 'A'
  else if nilai >= 70 then
    grade := 'B'
  else if nilai >= 60 then
    grade := 'C'
  else if nilai >= 50 then
    grade := 'D'
  else
    grade := 'E';

  writeln;
  writeln('Nilai = ', nilai:0:2, ' -> Grade = ', grade);
  readln;
end;

var
  pilihan : integer;

begin
  clrscr;

  writeln('==============================');
  writeln('       MENU SOAL PROCEDURE');
  writeln('==============================');
  writeln('1. Gaji Karyawan');
  writeln('2. Luas & Keliling Persegi Panjang');
  writeln('3. Nilai Mahasiswa');
  writeln('==============================');
  write('Pilih soal [1-3] : ');
  readln(pilihan);

  if pilihan = 1 then
    GajiKaryawan
  else if pilihan = 2 then
    LuasKeliling
  else if pilihan = 3 then
    NilaiMahasiswa
  else
  begin
    writeln;
    writeln('Pilihan tidak tersedia!');
    readln;
  end;
end.