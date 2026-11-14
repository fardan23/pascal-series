program QuizNPMGanjil;
{ Quiz Algoritma 2 - NPM akhir GANJIL
  1. Input 8 digit terakhir NPM
  2. Tampilkan data sebelum sorting
  3. Urutkan dengan Gravity Sort (ascending)
  4. Tampilkan data setelah sorting
  5. Cari DIGIT TERAKHIR NPM dengan Sequential Search
  6. Tampilkan posisi data ditemukan
  7. Tampilkan nilai terbesar dan terkecil }

uses crt;

const
  N = 8;

type
  TArray = array[1..N] of integer;

var
  L, LAsli: TArray;
  i, j, temp, cari, posisi: integer;
  ditemukan: boolean;

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

procedure SequentialSearch(x: integer);
begin
  ditemukan := false;
  posisi := -1;
  i := 1;

  while (i <= N) and (not ditemukan) do
  begin
    if L[i] = x then
    begin
      ditemukan := true;
      posisi := i;
    end;

    i := i + 1;
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
  writeln('Data setelah sorting (Gravity Sort - Ascending):');
  TampilkanArray(L);

  { Digit terakhir NPM }
  cari := LAsli[N];
  SequentialSearch(cari);

  writeln;
  writeln('=== Sequential Search ===');
  writeln('Mencari digit terakhir NPM: ', cari);

  if ditemukan then
    writeln('Data ditemukan pada posisi ke-', posisi,
            ' (dalam array yang sudah terurut)')
  else
    writeln('Data tidak ditemukan');

  writeln;
  writeln('Nilai terbesar : ', L[N]);
  writeln('Nilai terkecil : ', L[1]);

  readln;
end.