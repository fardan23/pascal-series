program ArrayHuruf;
uses crt;
var
  nilai : array['A'..'E'] of integer;
  h : char;
begin
  clrscr;
  for h := 'A' to 'E' do
  begin
    write('Masukkan nilai untuk ', h, ': ');
    readln(nilai[h]);
  end;

  for h := 'A' to 'E' do
  begin
    writeln('Nilai ', h, ' = ', nilai[h]);
  end;
  readln;
end.
