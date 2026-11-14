program InputDataMahasiswa;
uses crt;
var
   nama, alamat: String;
   umur: integer;
   ipk: real;
begin
   clrscr;
   writeln('Input Data Mahasiswa');
   writeln('=====================');
   write('Nama   : '); readln(nama);
   write('Alamat : '); readln(alamat);
   write('Umur   : '); readln(umur);
   write('IPK    : '); readln(ipk);

   writeln();
   writeln('======= Hasil =======');
   writeln('Nama saya adalah ', nama, ', saya berasal dari ', alamat, ', ');
   writeln('berusia ', umur, ' tahun, ipk saya saat ini adalah ', ipk:0:2, '.');
   readln;
end.
