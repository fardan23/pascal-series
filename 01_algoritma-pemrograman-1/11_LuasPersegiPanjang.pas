program LuasPersegiPanjang;
uses crt;
var
   panjang, lebar, luas: integer;
   jawab: char;
begin
   repeat
      clrscr;
      write('Input nilai panjang: '); readln(panjang);
      write('Input nilai lebar: '); readln(lebar);
      luas := panjang * lebar;
      writeln('Luas persegi panjang adalah ', luas);
      write('Apakah Anda ingin mengulang program? (Y/N)'); readln(jawab);
   until (jawab = 'N') OR (jawab = 'n');
   writeln('Terimakasih');
   readln;
end.