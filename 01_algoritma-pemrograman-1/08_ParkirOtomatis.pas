program ParkirOtomatis;
uses crt;
var
   kendaraan: string;
   lama, tarif: integer;
begin
   clrscr;
   write('Jenis Kendaraan: '); readln(kendaraan);
   write('Lama Parkir (Jam): '); readln(lama);
   if (kendaraan = 'Motor') or (kendaraan = 'motor') then
      begin
         if (lama <= 2) then
            tarif := 3000
         else 
            tarif := 3000 + ((lama - 2) * 1000);
      end
   else if (kendaraan = 'Mobil') or (kendaraan = 'mobil') then
      begin
         if (lama <= 2) then
            tarif := 5000
         else
         tarif := 5000 + ((lama - 2) * 2000);
      end
   else
      tarif := 0;
   
   if (tarif = 0) then
      writeln('Jenis kendaraan tidak valid')
   else
      writeln('Tarif Parkir: Rp', tarif);
   readln;
end.