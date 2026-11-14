program PenggajianKaryawan;
uses crt;
var
   golongan, pendidikan: string;
   gajiPokok, tunjangan, gaji: longint;
begin
   clrscr;
   write('Input Golongan Karyawan: '); readln(golongan);
   write('Input Pendidikan Karyawan: '); readln(pendidikan);
   
   if (golongan = 'A') or (golongan = 'a') then
   begin
      if (pendidikan = 'SMA') or (pendidikan = 'sma') then
      begin
         gajiPokok := 3000000;
         tunjangan := 2000000;
      end
      else if (pendidikan = 'S1') or (pendidikan = 's1') then
      begin
         gajiPokok := 4000000;
         tunjangan := 3000000;
      end;
   end
   else if (golongan = 'B') or (golongan = 'b') then
   begin
      if (pendidikan = 'SMA') or (pendidikan = 'sma') then
      begin
         gajiPokok := 4000000;
         tunjangan := 3000000;
      end
      else if (pendidikan = 'S1') or (pendidikan = 's1') then
      begin
         gajiPokok := 6000000;
         tunjangan := 5000000;
      end;
   end;

   gaji := gajiPokok + tunjangan;
   writeln;
   writeln('Gaji Pokok : Rp', gajiPokok);
   writeln('Tunjangan  : Rp', tunjangan);
   writeln('Gaji yang didapat adalah : Rp', gaji);
   readln;
end.