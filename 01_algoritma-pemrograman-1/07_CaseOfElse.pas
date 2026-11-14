program CaseOfElse;
uses crt;
var
   grade: char;
begin
   clrscr;
   write('Input grade (A-E): '); readln(grade);
   case (grade) of
      'A' : writeln('Sangat memuaskan');
      'B' : writeln('Memuaskan');
      'C' : writeln('Cukup');
      'D' : writeln('Kurang Baik');
      'E' : writeln('Gagal');
   else
      begin
         writeln('Maaf, format yang Anda masukkan salah!');
         writeln('Harap input grade berupa huruf: A/B/C/D/E');
      end;
   end;
   readln;
end.