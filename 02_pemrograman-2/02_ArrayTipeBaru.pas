program ArrayTipeBaru;
type
  lariknilai = array[1..5] of integer;
var
  nilai : lariknilai;
  i : integer;
begin
  writeln('Input Nilai Mahasiswa');
  for i := 1 to 5 do
  begin
    write('Masukkan nilai ke-', i, ' : ');
    readln(nilai[i]);
  end;

  writeln;
  writeln('Daftar Nilai Mahasiswa');
  { menampilkan nilai }
  for i := 1 to 5 do
  begin
    writeln('Nilai ke-', i, ' = ', nilai[i]);
  end;
  readln;
end.