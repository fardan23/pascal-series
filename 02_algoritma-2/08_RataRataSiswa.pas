program RataRataSiswa;
uses crt;

var
  Nilai : array[1..4, 1..3] of real;
  i, j  : integer;
  jumlah, rata : real;

begin
  clrscr;
  for i := 1 to 4 do
  begin
    writeln('Data Siswa ke-', i);
    for j := 1 to 3 do
    begin
      write('  Nilai Mapel ke-', j, ' : ');
      readln(Nilai[i, j]);
    end;
  end;

  writeln;
  writeln('=== HASIL RATA-RATA ===');

  for i := 1 to 4 do
  begin
    jumlah := 0;
    for j := 1 to 3 do
      jumlah := jumlah + Nilai[i, j];

    rata := jumlah / 3;
    writeln('Siswa ke-', i, ' => Rata-rata = ', rata:0:2);
  end;

  readln;
end.