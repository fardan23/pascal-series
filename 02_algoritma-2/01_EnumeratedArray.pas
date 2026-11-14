program EnumeratedArray;
uses crt;
type
  hari = (senin, selasa, rabu, kamis, jumat);
var
  jadwal : array[hari] of string;
  h : hari;
begin
  clrscr;
  jadwal[senin] := 'Algoritma';
  jadwal[selasa] := 'Struktur Data';
  jadwal[rabu] := 'Basis Data';
  jadwal[kamis] := 'Pemrograman';
  jadwal[jumat] := 'Jaringan';

  for h := senin to jumat do
  begin
    writeln('Jadwal hari ', ord(h)+1, ' : ', jadwal[h]);
  end;
  readln;
end.
