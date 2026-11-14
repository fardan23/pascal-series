program SuhuTertinggi;
uses crt;

var
  Suhu : array[1..3, 1..4] of real;
  waktu : array[1..4] of string;
  i, j, hariMaks, waktuMaks : integer;
  maks : real;

begin
  clrscr;
  waktu[1] := 'Pagi';
  waktu[2] := 'Siang';
  waktu[3] := 'Sore';
  waktu[4] := 'Malam';

  for i := 1 to 3 do
  begin
    writeln('Hari ke-', i);
    for j := 1 to 4 do
    begin
      write('  Suhu ', waktu[j], ' : ');
      readln(Suhu[i, j]);
    end;
  end;

  maks := Suhu[1, 1];
  hariMaks := 1;
  waktuMaks := 1;

  for i := 1 to 3 do
    for j := 1 to 4 do
      if Suhu[i, j] > maks then
      begin
        maks := Suhu[i, j];
        hariMaks := i;
        waktuMaks := j;
      end;

  writeln;
  writeln('=== HASIL ===');
  writeln('Suhu tertinggi = ', maks:0:1, ' derajat');
  writeln('Terjadi pada Hari ke-', hariMaks, ', waktu ', waktu[waktuMaks]);

  readln;
end.