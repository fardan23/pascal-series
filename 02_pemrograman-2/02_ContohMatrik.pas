program ContohMatrik;
uses crt;
Var
  Tabel : array [1..3, 1..2] of byte ;
  I, J : byte ;
Begin
  clrscr;
  Tabel[1,1] := 5;
  Tabel[1,2] := 25;
  Tabel[2,1] := 200;
  Tabel[2,2] := 22;
  Tabel[3,1] := 75;
  Tabel[3,2] := 50;

  For I := 1 to 3 do
  Begin
    For J := 1 to 2 do
      Write ( Tabel [I,J] : 10 ) ;
    Writeln;
  End;
  readln();
End.
