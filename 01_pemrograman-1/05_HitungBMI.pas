program HitungBMI;
uses crt;
var
   bmi, berat, tinggi: real;
   kategori: String;
begin
   clrscr;
   write('Input berat badan Anda (kg): '); readln(berat);
   write('Input tinggi badan Anda (m): '); readln(tinggi);
   bmi := berat / (tinggi * tinggi);
   if (bmi > 30) then
      kategori:= 'Berat badan obesitas'
   else if (bmi > 23) then
      kategori:= 'Berat badan berlebih'
   else if (bmi > 18.5) then
      kategori:= 'Berat badan normal'
   else
      kategori:= 'Berat badan kurang';
   writeln('Nilai BMI Anda adalah     : ', bmi:0:2);
   writeln('Kategori berat badan Anda : ', kategori);
   readln;
end.