program GravitationSort;
uses crt;
const MAX = 100;
var
  A: array[1..MAX] of integer;
  n, i, j, temp: integer;

procedure InputData;
var idx: integer;
begin
  write('Masukkan jumlah elemen: ');
  readln(n);
  for idx := 1 to n do
  begin
    write('Elemen ke-', idx, ': ');
    readln(A[idx]);
  end;
end;

procedure TampilkanData;
var idx: integer;
begin
  for idx := 1 to n do
    write(A[idx]:5);
  writeln;
end;

procedure GravitySortAsc;
begin
  for i := 1 to n - 1 do
  begin
    for j := 1 to n - i do
    begin
      if A[j] > A[j+1] then
      begin
        temp   := A[j];
        A[j]   := A[j+1];
        A[j+1] := temp;
      end;
    end;
    write('Langkah ke-', i, ': ');
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
  writeln('Proses Gravitation Sort (Ascending):');
  GravitySortAsc;
  writeln;
  writeln('Data setelah diurutkan:');
  TampilkanData;
  readln;
end.