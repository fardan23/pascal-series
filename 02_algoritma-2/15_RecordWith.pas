Program RecordWith;
type
  tanggal = record
    bulan, hari, tahun : integer;
  end;
Var
  waktu : tanggal;
Begin  {program utama}
  with waktu do    {mulai with}
  begin
    hari  := 25;
    bulan := 09;
    tahun := 1983;
    writeln('hari ini adalah ', hari, ':', bulan, ':', tahun)
  end;  {akhir with}
  readln;
end.