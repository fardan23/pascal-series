program BubbleSort;
uses crt;
const MAX = 100;
var
  L: array[1..MAX] of integer;
  n, i, k, temp: integer;

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

procedure BubbleSortAsc;
begin
  for i := 1 to n - 1 do
  begin
    for k := n downto i + 1 do
    begin
      if L[k] < L[k-1] then
      begin
        temp   := L[k];
        L[k]   := L[k-1];
        L[k-1] := temp;
      end;
    end;
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
  writeln('Proses Bubble Sort (Ascending):');
  BubbleSortAsc;
  writeln;
  writeln('Data setelah diurutkan:');
  TampilkanData;
  readln;
end.