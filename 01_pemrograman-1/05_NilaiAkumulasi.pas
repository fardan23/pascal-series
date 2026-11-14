program NilaiAkumulasi;
uses crt;
var
   tugas, uts, uas, nilaiAkhir: real;
   nilaiHuruf: char;
begin
   clrscr;
   write('Input nilai Tugas: '); readln(tugas);
   write('Input nilai UTS  : '); readln(uts);
   write('Input nilai UAS  : '); readln(uas);

   nilaiAkhir := (20 / 100 * tugas) + (30 / 100 * uts) + (50 / 100 * uas);

   if (nilaiAkhir >= 91) then
      nilaiHuruf := 'A'
   else if (nilaiAkhir >= 76) then
      nilaiHuruf := 'B'
   else if (nilaiAkhir >= 61) then
      nilaiHuruf := 'C'
   else if (nilaiAkhir >= 41) then
      nilaiHuruf := 'D'
   else
      nilaiHuruf := 'E';

   writeln('Nilai Akhir: ', nilaiAkhir:0:0);
   writeln('Nilai Huruf: ', nilaiHuruf);

   if (nilaiAkhir >= 70) then
      writeln('Selamat anda dinyatakan lulus')
   else
      writeln('Maaf anda dinyatakan tidak lulus');
   readln;
end.
