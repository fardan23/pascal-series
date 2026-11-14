program SelectionSortMaxAsc;
uses crt;
const MAX = 100;
var
  L: array[1..MAX] of integer;
  n, i, j, imaks, maks, temp: integer;

procedure InputData;
var idx: integer;
begin
  write('Masukkan jumlah elemen: ');
  readln(n);
  for idx := 1 to n do
  begin
    write('Elemen ke-', idx, ': ');
    readln(L[idx]);
  end;
end;

procedure TampilkanData;
var idx: integer;
begin
  for idx := 1 to n do
    write(L[idx]:5);
  writeln;
end;

{ Algoritme Selection Maks (Asc): cari elemen maksimum lalu tukar ke posisi akhir }
procedure SelectionMaxAsc;
begin
  for i := n downto 2 do
  begin
    imaks := 1;
    maks  := L[1];
    for j := 2 to i do
    begin
      if L[j] > maks then
      begin
        imaks := j;
        maks  := L[j];
      end;
    end;
    temp      := L[i];
    L[i]      := maks;
    L[imaks]  := temp;
    write('Pass ', (n - i + 1), ': ');
    TampilkanData;
  end;
end;

begin
  clrscr;
  InputData;
  writeln;
  writeln('Data sebelum diurutkan:');
  TampilkanData;
  writeln;
  writeln('Proses Selection Sort (Maksimum, Ascending):');
  SelectionMaxAsc;
  writeln;
  writeln('Data setelah diurutkan:');
  TampilkanData;
  readln;
end.