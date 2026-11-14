Program ContohAppend;
Uses Crt;
Var
  F: TextFile;
Begin
  Assign (F,'C:\FPC\3.2.2\bin\i386-win32\data.txt');
  Append (F); {membuka file untuk ditambah isinya}
  writeln (F,'Ini adalah data pertama yang ditambahkan');
  writeln (F,'Ini adalah data kedua yang ditambahkan');
  close(F);
end.
