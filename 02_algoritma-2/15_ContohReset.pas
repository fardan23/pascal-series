Program ContohReset;
Uses crt;
Var
  F    : TextFile;
  Teks : string;
Begin
  Assign (F, 'C:\FPC\3.2.2\bin\i386-win32\data.txt');
  Reset (F);
  While not eof(F) do
  begin
    Readln (F, teks);   {membaca data dari file}
    Writeln (teks);      {menampilkan ke layar}
  end;
  Close (F);
  Readln;
End.