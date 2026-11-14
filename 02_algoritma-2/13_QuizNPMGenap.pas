program QuizNPMGenap;
{ Quiz Algoritma 2 - NPM akhir GENAP

1. Input 8 digit terakhir NPM
2. Tampilkan data sebelum sorting
3. Urutkan dengan Bubble Sort (ascending)
4. Tampilkan data setelah sorting
5. Cari DIGIT PERTAMA NPM dengan Binary Search
6. Tampilkan posisi data ditemukan
7. Hitung dan tampilkan nilai rata-rata data
}

uses crt;

const
  N = 8;

type
  TArray = array[1..N] of integer;

var
  L, LAsli: TArray;
  i, j, temp, cari, posisi, low, high, mid: integer;
  ditemukan: boolean;
  jumlah, rerata: real;

procedure InputData;
begin
  writeln('=== Input 8 digit terakhir NPM ===');

  for i := 1 to N do
  begin
    write('Digit ke-', i, ': ');
    readln(L[i]);
  end;

  for i := 1 to N do
    LAsli[i] := L[i];
end;

procedure TampilkanArray(var Arr: TArray);
begin
  for i := 1 to N do
    write(Arr[i]:5);
  writeln;
end;

procedure GravitySortAsc;
begin
  for i := 1 to N - 1 do
    for j := 1 to N - i do
      if L[j] > L[j+1] then
      begin
        temp := L[j];
        L[j] := L[j+1];
        L[j+1] := temp;
      end;
end;

procedure BinarySearch(x: integer);
begin
  low := 1;
  high := N;
  ditemukan := false;
  posisi := -1;

  while (low <= high) and (not ditemukan) do
  begin
    mid := (low + high) div 2;

    if L[mid] = x then
    begin
      ditemukan := true;
      posisi := mid;
    end
    else if L[mid] < x then
      low := mid + 1
    else
      high := mid - 1;
  end;
end;

begin
  clrscr;

  InputData;

  writeln;
  writeln('Data sebelum sorting:');
  TampilkanArray(LAsli);

  GravitySortAsc;

  writeln;
  writeln('Data setelah sorting (Bubble Sort - Ascending):');
  TampilkanArray(L);

  { digit pertama NPM, diambil dari data asli sebelum diurutkan }
  cari := LAsli[1];
  BinarySearch(cari);

  writeln;
  writeln('=== Binary Search ===');
  writeln('Mencari digit pertama NPM: ', cari);

  if ditemukan then
    writeln('Data ditemukan pada posisi ke-', posisi,
            ' (dalam array yang sudah terurut)')
  else
    writeln('Data tidak ditemukan');

  jumlah := 0;

  for i := 1 to N do
    jumlah := jumlah + L[i];

  rerata := jumlah / N;

  writeln;
  writeln('Rata-rata data : ', rerata:0:2);

  readln;
end.