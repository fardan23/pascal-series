Program BinarySearch;
Uses crt;
Const
  A : array [1..14] of integer = (10,12,14,15,16,18,19,20,22,24,25,26,28,29);
Var
  idxAwal,   { indeks array awal }
  idxAkhir,  { indeks array akhir }
  k,         { indeks pemenggal/pembatas }
  x : integer;      { nilai yang dicari }
  ketemu : boolean; { status: ditemukan atau tidak }
begin
  clrscr;
  write('masukkan nilai yang akan dicari : '); readln(x);

  { melakukan pencarian }
  idxAwal := 1;
  idxAkhir := 14; { 14 adalah jumlah elemen array A }
  ketemu := false;

  while (not ketemu) and (idxAwal <= idxAkhir) do begin
    k := (idxAwal + idxAkhir) div 2; { proses pembelahan }
    if A[k] = x then begin
      ketemu := true;
    end else begin
      if A[k] < x then begin
        idxAwal := k + 1; { mencari di bagian kanan }
      end else begin
        idxAkhir := k - 1; { mencari di bagian kiri }
      end;
    end;
  end;

  { memeriksa, ketemu atau tidak }
  if ketemu then begin
    writeln(x, ' ditemukan pada indeks ke-', k);
  end else begin
    writeln(x, ' tidak ditemukan');
  end;
  readln;
end.
