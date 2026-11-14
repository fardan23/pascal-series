Program ContohRewrite;
Var
  F : TextFile;
Begin
  Assign (F, 'C:\FPC\3.2.2\bin\i386-win32\data.txt');
  Rewrite (F);
  Close(F);
End.