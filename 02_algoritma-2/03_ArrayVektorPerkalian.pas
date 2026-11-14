program ArrayVektorPerkalian;
uses crt;
var
  a, b : array[1..100] of integer;
  n, i, k : integer;
begin
  writeln('=============');
  write('masukan jumlah data : '); readln(n);

  writeln;
  for i:= 1 to n do begin
    write ('input data array a ke ', i, ': ');
    readln(a[i]);
  end;

  writeln;
  for i:= 1 to n do begin
    write ('input data array b ke ', i, ': ');
    readln(b[i]);
  end;

  k:=0;
  for i:= 1 to n do begin
    k:= k + a[i] * b[i];
  end;

  writeln;
  writeln('hasil.dot product:');
  writeln;
  {for i := 1 to n do }
  writeln('  ',k,' ');
  readln;
end.
