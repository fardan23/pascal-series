program MatriksDasar;
var
  i,j : integer;
begin
  for i := 1 to 5 do
  begin
    for j := 1 to 5 do
    begin
      write('(',i,',',j,') ');
    end;
    writeln;
  end;
  readln;
end.