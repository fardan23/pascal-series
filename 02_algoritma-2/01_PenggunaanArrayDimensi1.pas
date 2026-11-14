Program PenggunaanArrayDimensi1;
Uses crt;
VAR
  A, N, Jml_Nilai : Integer;
  Nilai : ARRAY[1..10] Of Integer;
  Nil_Rata : Real;
BEGIN
  Clrscr;
  WriteLn('Program Latihan Array');
  WriteLn('=====================');
  WriteLn;

  Write('Masukan Banyak Data : ');
  ReadLn(N);

  FOR A := 1 TO N DO
  Begin
    Write('Nilai Ke- ',A,' = ');
    ReadLn(Nilai[A]);
  End;

  writeln;
  Nil_Rata := 0;
  Jml_Nilai := 0;
  FOR A := 1 TO N DO
  Begin
    Jml_Nilai := Jml_Nilai + Nilai[A];
    Writeln('Nilai Ke- ',A,' = ',Nilai[A]);
  End;

  writeln;
  Nil_Rata := Jml_Nilai / N;
  WriteLn('---------------------');
  WriteLn('Jumlah Nilai : ',Jml_Nilai);
  WriteLn('Nilai Rata-Rata : ',Nil_Rata:5:2);
  ReadLn;
END.
