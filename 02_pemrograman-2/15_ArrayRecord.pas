program ArrayRecord;   { array berisi record }

uses crt;

type
  mahasiswa = record
    nama  : string;
    npm   : string;
    nilai : integer;
  end;

var
  mhs : array[1..10] of mahasiswa;
  jum : byte;
  i, j : integer;

procedure input;
begin
  writeln('DATA MAHASISWA');
  write('Jumlah data : ');
  readln(jum);
  writeln;

  for i := 1 to jum do
  begin
    writeln('Data ke-', i);
    write('Nama  : '); readln(mhs[i].nama);
    write('NPM   : '); readln(mhs[i].npm);
    write('Nilai : '); readln(mhs[i].nilai);
    writeln;
  end;
end;

procedure tampil;
begin
  clrscr;

  writeln('==========================================================');
  writeln('                    DATA MAHASISWA');
  writeln('==========================================================');
  writeln(' No  Nama                     NPM                 Nilai');
  writeln('----------------------------------------------------------');

  for i := 1 to jum do
  begin
    gotoxy(2, 5 + i);
    write(i);

    gotoxy(7, 5 + i);
    write(mhs[i].nama);

    gotoxy(32, 5 + i);
    write(mhs[i].npm);

    gotoxy(52, 5 + i);
    write(mhs[i].nilai);
  end;

  gotoxy(1, 6 + jum);
  writeln('----------------------------------------------------------');
end;

{ Program utama }
begin
  clrscr;

  input;
  tampil;

  readln;
end.