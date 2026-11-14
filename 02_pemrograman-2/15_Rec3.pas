Program Rec3;
Uses crt;
Type
  RecTanggal = Record
    Tanggal,
    Bulan,
    Tahun : Integer
  End;
  RecPegawai = Record
    Nomor    : LongInt;
    Nama     : string [35];
    TglLahir : RecTanggal;
    Gaji     : longInt
  End;
Var
  DataPeg : RecPegawai; {variabel bertipe record}
Begin
  Clrscr;
  {Penugasan nilai terhadap field-field}
  DataPeg.Nomor           := 56789;
  DataPeg.Nama            := 'Badu';
  DataPeg.TglLahir.Tanggal:= 24;
  DataPeg.TglLahir.Bulan  := 12;
  DataPeg.TglLahir.Tahun  := 1972;
  DataPeg.Gaji            := 750000;
  {menampilkan isi field}
  Writeln ('Nama Pegawai : ', DataPeg.Nama);
  Writeln ('Tanggal Lahir : ', DataPeg.TglLahir.Tanggal,
    '/', DataPeg.TglLahir.Bulan,
    '/', DataPeg.TglLahir.Tahun);
  Readln
End.