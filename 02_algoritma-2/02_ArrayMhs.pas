program ArrayMhs;
uses wincrt;
type mhs=array[1..7] of string;
var
  m:mhs;
  i:integer;
begin
  for i:=1 to 7 do
  begin
    writeln('masukan nama mahasiswa ke ',' ',i,'=');
    readln(m[i]);
  end;

  writeln('================================');
  for i:=1 to 7 do
    writeln('mahasiswa ke',' ',i,' ',m[i]);
  readln;
end.