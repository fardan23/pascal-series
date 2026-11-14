program ArrayVektorPenjumlahan;
uses crt;
var
  a, b, c : array[1..100] of integer;
  n, i : integer;
begin
  writeln('=============');
  write('masukan jumlah data : '); readln(n);

  writeln;
  for i:= 1 to n do begin
    write ('input data array a ke : ');
    readln(a[i]);
  end;

  writeln;
  writeln;
  for i:= 1 to n do begin
    write ('input data array b ke : ');
    readln(b[i]);
  end;

  for i:= 1 to n do begin
    c[i]:= a[i] + b[i];
  end;

  writeln;
  writeln('hasil penjumlahan:');
  writeln;
  for i := 1 to n do
    writeln(c[i],' ');
  readln;
end.