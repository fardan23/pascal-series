program OperasiMatrik;
uses crt;

const
  baris = 3;
  kolom = 3;

type
  data = array [1..baris, 1..kolom] of integer;

var
  A, B : data;
  i, j : integer;
  pilihan : integer;

procedure jumlahmatrik(m1, m2 : data);
var
  hasil : data;
  i, j  : integer;
begin
  for i := 1 to baris do
    for j := 1 to kolom do
    begin
      hasil[i, j] := m1[i, j] + m2[i, j];
    end;

  clrscr;
  writeln('Hasil Penjumlahan MATRIK');
  writeln;
  for i := 1 to baris do
  begin
    for j := 1 to kolom do
      write(hasil[i, j]:6);
    writeln;
  end;
  readln;
end;

procedure kurangmatrik(m1, m2 : data);
var
  hasil : data;
  i, j  : integer;
begin
  for i := 1 to baris do
    for j := 1 to kolom do
    begin
      hasil[i, j] := m1[i, j] - m2[i, j];
    end;

  clrscr;
  writeln('Hasil Pengurangan MATRIK');
  writeln;
  for i := 1 to baris do
  begin
    for j := 1 to kolom do
      write(hasil[i, j]:6);
    writeln;
  end;
  readln;
end;

begin
  clrscr;
  writeln('Masukkan Matriks A (', baris, 'x', kolom, ')');
  for i := 1 to baris do
    for j := 1 to kolom do
    begin
      write('A[', i, ',', j, '] = ');
      readln(A[i, j]);
    end;
  writeln;

  writeln('Masukkan Matriks B (', baris, 'x', kolom, ')');
  for i := 1 to baris do
    for j := 1 to kolom do
    begin
      write('B[', i, ',', j, '] = ');
      readln(B[i, j]);
    end;

  writeln;
  writeln('Pilih Operasi:');
  writeln('1. Penjumlahan Matriks');
  writeln('2. Pengurangan Matriks');
  write('Pilihan Anda : ');
  readln(pilihan);

  case pilihan of
    1 : jumlahmatrik(A, B);
    2 : kurangmatrik(A, B);
  else
    writeln('Pilihan tidak valid!');
  end;
  readln;
end.