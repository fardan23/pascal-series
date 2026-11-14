Program Rec2;
Uses crt;
Type
  RecBarang = Record
    Nama     : string[25];
    Kualitas : char;
    Harga    : longInt
  End;
Var
  Barang1, Barang2 : RecBarang; {variabel bertipe record}
Begin
  Clrscr;
  {penugasan nilai terhadap field-field}
  Barang1.Nama     := 'Ubin TISKA 20x20';
  Barang1.Kualitas := 'A';
  Barang1.Harga    := 14000;
  {menyalin record}
  Barang2 := Barang1;
  {menampilkan isi field}
  Writeln ('Nama Barang : ', Barang2.Nama);
  Writeln ('Kualitas    : ', Barang2.Kualitas);
  Writeln ('Harga       : ', Barang2.Harga);
  Readln
End.