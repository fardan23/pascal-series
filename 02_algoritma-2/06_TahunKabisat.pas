program TahunKabisat;
uses crt;
var th : integer;

function Kabisat(th : integer) : boolean;
begin
  if (th mod 4 = 0) and (th mod 100 <> 0) or (th mod 400 = 0) then
    Kabisat := true
  else
    Kabisat := false;
end;

begin
  clrscr;
  write('Masukkan tahun = '); readln(th);
  if Kabisat(th) then
    writeln(th, ' adalah tahun kabisat')
  else
    writeln(th, ' bukan tahun kabisat');
  readln;
end.