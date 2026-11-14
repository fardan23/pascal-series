program RecordBerisiArray;
uses crt;
const MAX = 100;

type
  tsiswa = record
    NIM   : string [8];
    nama  : string [25];
    nilai : array [1..3] of real;
  end;

  tkumpulansiswa = array[1..MAX] of tsiswa;

var
  A    : tkumpulansiswa;
  i, N : integer;
  NA   : real;

begin
  clrscr;
  write('masukan jumlah siswa yang akan di isikan : ');
  readln(N);
  writeln;
  writeln('-----------------------------------------------------');
  for i:=1 to N do
  begin
    writeln('data siswa ke_ ', i);
    with A[i] do
    begin
      write('NIM               :'); readln(NIM);
      write('nama              :'); readln(nama);
      writeln('nilai');
      write('nilai ke-1 (kuis) :'); readln(nilai[1]);
      write('nilai ke-2 (UTS)  :'); readln(nilai[2]);
      write('nilai ke-3 (UAS)  :'); readln(nilai[3]);
    end;
    writeln;
  end;

  {menampilkan data}
  writeln('           DAFTAR NILAI MAHASISWA           ');
  writeln('-----------------------------------------------------');
  writeln('NIM':8, '':2, 'nama':15, '':2, 'NILAI');
  writeln('-----------------------------------------------------');
  for i:=1 to N do
  begin
    with A[i] do
    begin
      NA := (0.2*nilai[1]) + (0.3*nilai[2]) + (0.5*nilai[3]);
      write(NIM:8, '':2, nama:15, '':2, NA:0:2);
    end;
    writeln;
  end;
  readln;
end.