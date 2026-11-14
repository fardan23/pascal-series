program TampilkanData;
Uses crt;
Var x : array [1..100] of integer;
n,i :integer;
Begin
  clrscr;
  Writeln('Program Array');
  Writeln('==============');
  Writeln;
  Write('Masukkan Jumlah Data: '); readln(n);
  Writeln;
  
  For i:= 1 to n do
    Readln(x[i]);
  Writeln;
  Write('Data Yang Telah Dimasukkan: ');
  For i:= 1 to n do
    Write(x[i],' ');
  readln;
End.