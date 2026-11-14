program MatriksKondisi;
uses crt;
var
  A : array[1..5,1..5] of integer;
  i,j : integer;
begin
  clrscr;
  for i := 1 to 5 do
  begin
    for j := 1 to 5 do
    begin
      if i = j then
        A[i,j] := i * i
      else if i > j then
        A[i,j] := i + j
      else
        A[i,j] := j - i;
    end;
  end;

  writeln('Hasil Matriks :');
  for i := 1 to 5 do
  begin
    for j := 1 to 5 do
    begin
      write(A[i,j]:5);
    end;
    writeln;
  end;
  readln;
end.