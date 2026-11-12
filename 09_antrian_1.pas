program antrian_1;

uses crt;

type
  data = array [1..3] of string;

var
  d     : data;
  i     : integer;
  antri : integer;
  temp  : string;

begin
  clrscr;
  antri := 0;

  { untuk input }
  for i := 1 to 3 do
  begin
    writeln('masukkan nama ke ', i);
    readln(d[i]);
    antri := antri + 1;
  end;

  { untuk output }
  for i := 1 to 3 do
  begin
    temp  := d[i];
    antri := antri - 1;
  end;

  { lihat output di var temp setelah pengambilan }
  writeln('hasil var temp=', temp);
  readln;
end.
