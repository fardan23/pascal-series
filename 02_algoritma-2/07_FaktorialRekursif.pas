program FaktorialRekursif;
uses crt;

function faktorial(nilai : integer) : longint;
begin
  if nilai <= 0 then
    faktorial := 1
  else
    faktorial := nilai * faktorial(nilai - 1);
end;

var N : integer;
begin
  clrscr;
  write('Berapa faktorial ? '); readln(N);
  writeln(N, ' faktorial = ', faktorial(N));
  readln;
end.