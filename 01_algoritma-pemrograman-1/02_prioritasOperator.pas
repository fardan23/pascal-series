program prioritasOperator;
uses crt;
var
   satu, dua, tiga, empat: Integer;
   lima: Boolean;
begin
   clrscr;
   satu := 10 div 5 * 4 + 4 - 3;
   dua := 5 * 10 div 2 - 13 + 7;
   tiga := (10 mod 3) + (5 * 3 + 3);
   empat := 9 mod 2;
   lima := 3 + 5 * 3 < 10;

   writeln('1). 10 : 5 x 4 + 4 - 3 = ', satu);
   writeln('2). 5 x 10 : 2 - 13 + 7 = ', dua);
   writeln('3). (10 % 3) + (5 x 3 + 3) = ', tiga);
   writeln('4). 9 % 2 = ', empat);
   writeln('5). 3 + 5 x 3 < 10 = ', lima);
   readln;
end.
