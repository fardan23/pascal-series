Program Rec1;
Uses crt;
Type
  RecBarang = Record
    Nama     : String[25];
    Kualitas : Char;
    Harga    : LongInt
  End;
Var
  Barang : RecBarang; {variabel bertipe record}
Begin
  Clrscr;
  {Penugasan nilai terhadap field-field}
  Barang.Nama     := 'Ubin TISKA 20x20';
  Barang.Kualitas := 'A';
  Barang.Harga    := 14000;
  {menampilkan isi field}
  writeln ('Nama Barang : ', Barang.Nama);
  writeln ('Kualitas    : ', Barang.Kualitas);
  writeln ('Harga       : ', Barang.Harga);
  Readln
End.