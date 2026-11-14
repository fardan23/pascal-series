program InsertionSort;
uses crt;
const MAX = 100;
var
  L: array[1..MAX] of integer;
  n, i, j, y: integer;
  ketemu: boolean;

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

procedure InsertSortAsc;
begin
  for i := 2 to n do
  begin
    y := L[i];
    j := i - 1;
    ketemu := false;
    while (j >= 1) and (not ketemu) do
    begin
      if y < L[j] then
      begin
        L[j+1] := L[j];
        j := j - 1;
      end
      else
        ketemu := true;
    end;
    L[j+1] := y;
    write('Pass ', i, ': ');
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
  writeln('Proses Insertion Sort (Ascending):');
  InsertSortAsc;
  writeln;
  writeln('Data setelah diurutkan:');
  TampilkanData;
  readln;
end.