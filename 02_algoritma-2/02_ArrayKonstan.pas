program ArrayKonstan;
uses crt;
const
  bulan: array[1..12] of string = ('januari','februari','mei','april',
  'mei','juni','juli','agustus','september','oktober','november',
  'desember');
var
  nobulan,i,n : integer;
begin
  clrscr;
  nobulan :=1;
  while (nobulan <= 12 ) do begin
    write('masukan no bulan ke : ');
    readln(nobulan);
    Writeln;
    writeln('adalah',' ',bulan[nobulan]);
    writeln('tekan enter untuk memasukan nilai berikutnya ');
    readln;
  end;
end.