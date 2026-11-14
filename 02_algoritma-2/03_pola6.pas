program pola6;
var
  i,j : integer;
begin
  for i := 1 to 5 do
  begin
    for j := 1 to 5 do
    begin
      if i + j = 6 then
        write('X ')
      else
        write('0 ');
    end;
    writeln;
  end;
  readln;
end.