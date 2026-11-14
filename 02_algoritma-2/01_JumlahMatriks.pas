Program JumlahMatriks;
Uses crt;
Const
  Jbaris = 2;
  Jkolom = 3;
Type
  Matriks23 = array [1..Jbaris, 1..Jkolom] of integer;
Var
  A,B,C : Matriks23;
  j, k : integer;
begin
  clrscr;
  writeln('Matriks A');
  for j:= 1 to Jbaris do begin
    for k:= 1 to Jkolom do begin
      write('A[', j, ',' , k, '] = '); readln(A[j,k]);
    end;
    writeln;
  end;
  writeln;

  writeln('Matriks B');
  for j:= 1 to Jbaris do begin
    for k:= 1 to Jkolom do begin
      write('B[', j, ',' , k, '] = '); readln(B[j,k]);
    end;
    writeln;
  end;
  writeln;

  writeln('Hasil Penjumlahan');
  for j:= 1 to Jbaris do begin
    for k:= 1 to Jkolom do begin
      C[j,k]:= A[j,k] + B[j,k];
      write('C[', j, ',' , k, '] = ', C[j,k], ' ');
    end;
    writeln;
  end;
  readln;
end.
