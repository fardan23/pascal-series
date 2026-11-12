program NotaMieGacoan;

uses
  Crt, Dos;

type
  TItemMenu = record
    Nama: string;
    Harga: LongInt;
  end;

const
  JumlahMenu = 26;

var
  DaftarMenu: array[1..JumlahMenu] of TItemMenu;
  JumlahPesanan: array[1..JumlahMenu] of LongInt;
  indeks, pilihan, jumlah, kodeKesalahan, pilihanLayanan: LongInt;
  teksMasukan, namaPelanggan, namaKasir, jenisLayanan, tanggalNota,
    waktuNota, teksTahun: string;
  selesai: Boolean;
  totalHarga, jumlahBayar, jumlahKembalian: Int64;
  lebarNota, lebarNama, lebarJumlah, lebarHarga: LongInt;
  tahun, bulan, hari, hariMinggu: Word;
  jam, menit, detik, seperseratusDetik: Word;

function DuaDigit(angka: Word): string;
begin
  DuaDigit := Chr(Ord('0') + (angka div 10)) +
    Chr(Ord('0') + (angka mod 10));
end;

function Tengah(teks: string): string;
var
  jumlahSpasi, spasiKiri, spasiKanan: LongInt;
begin
  if Length(teks) > lebarNota then
    teks := Copy(teks, 1, lebarNota);
  jumlahSpasi := lebarNota - Length(teks);
  if jumlahSpasi < 0 then
    jumlahSpasi := 0;
  spasiKiri := jumlahSpasi div 2;
  spasiKanan := jumlahSpasi - spasiKiri;
  Tengah := StringOfChar(' ', spasiKiri) + teks +
    StringOfChar(' ', spasiKanan);
end;

function RataKiri(teks: string; lebar: LongInt): string;
begin
  RataKiri := Copy(teks, 1, lebar) +
    StringOfChar(' ', lebar - Length(Copy(teks, 1, lebar)));
end;

function RataKanan(teks: string; lebar: LongInt): string;
begin
  teks := Copy(teks, 1, lebar);
  RataKanan := StringOfChar(' ', lebar - Length(teks)) + teks;
end;

procedure GarisNota;
begin
  Writeln('+', StringOfChar('-', lebarNota), '+');
end;

procedure BarisInfo(teks: string);
begin
  Writeln('| ', RataKiri(teks, lebarNota - 2), ' |');
end;

function FormatRupiah(jumlahUang: Int64): string;
var
  angka, hasilFormat: string;
  posisi, jumlahDigit: LongInt;
begin
  angka := '';
  repeat
    angka := Chr(Ord('0') + (jumlahUang mod 10)) + angka;
    jumlahUang := jumlahUang div 10;
  until jumlahUang = 0;

  hasilFormat := '';
  jumlahDigit := 0;
  for posisi := Length(angka) downto 1 do
  begin
    hasilFormat := angka[posisi] + hasilFormat;
    jumlahDigit := jumlahDigit + 1;
    if (jumlahDigit mod 3 = 0) and (posisi > 1) then
      hasilFormat := '.' + hasilFormat;
  end;
  FormatRupiah := 'Rp ' + hasilFormat;
end;

procedure TampilkanMenu;
var
  nomor: LongInt;
begin
  Writeln;
  Writeln('DAFTAR MENU');
  Writeln('MIE                                     DIMSUM');
  for nomor := 1 to 17 do
  begin
    Write(nomor:2, '. ', DaftarMenu[nomor].Nama:22, ' - ',
      FormatRupiah(DaftarMenu[nomor].Harga):9, '   ');
    if nomor <= 5 then
      Writeln((nomor + 17):2, '. ', DaftarMenu[nomor + 17].Nama:22,
        ' - ', FormatRupiah(DaftarMenu[nomor + 17].Harga):9)
    else if nomor = 7 then
      Writeln('MINUMAN')
    else if (nomor >= 8) and (nomor <= 11) then
      Writeln((nomor + 15):2, '. ', DaftarMenu[nomor + 15].Nama:22,
        ' - ', FormatRupiah(DaftarMenu[nomor + 15].Harga):9)
    else
      Writeln;
  end;

  Writeln;
  Writeln(' 0. Selesai dan cetak nota');
end;

procedure SiapkanNota;
var
  nomor: LongInt;
  totalBaris: Int64;
  teksAngka: string;
begin
  totalHarga := 0;
  lebarNama := 29;
  lebarJumlah := 6;
  lebarHarga := 17;

  for nomor := 1 to JumlahMenu do
    if JumlahPesanan[nomor] > 0 then
    begin
      totalBaris := Int64(DaftarMenu[nomor].Harga) * JumlahPesanan[nomor];
      totalHarga := totalHarga + totalBaris;

      if Length(DaftarMenu[nomor].Nama) > lebarNama then
        lebarNama := Length(DaftarMenu[nomor].Nama);
      Str(JumlahPesanan[nomor], teksAngka);
      if Length(teksAngka) > lebarJumlah then
        lebarJumlah := Length(teksAngka);
      if Length(FormatRupiah(totalBaris)) > lebarHarga then
        lebarHarga := Length(FormatRupiah(totalBaris));
    end;

  if Length(FormatRupiah(totalHarga)) > lebarHarga then
    lebarHarga := Length(FormatRupiah(totalHarga));
  if Length(FormatRupiah(jumlahBayar)) > lebarHarga then
    lebarHarga := Length(FormatRupiah(jumlahBayar));
  if Length(FormatRupiah(jumlahKembalian)) > lebarHarga then
    lebarHarga := Length(FormatRupiah(jumlahKembalian));

  lebarNota := lebarNama + lebarJumlah + lebarHarga + 6;
  if Length('Pelanggan : ' + namaPelanggan) + 2 > lebarNota then
    lebarNota := Length('Pelanggan : ' + namaPelanggan) + 2;
  if Length('Kasir     : ' + namaKasir) + 2 > lebarNota then
    lebarNota := Length('Kasir     : ' + namaKasir) + 2;
  lebarNama := lebarNama + lebarNota -
    (lebarNama + lebarJumlah + lebarHarga + 6);
end;

procedure CetakNota;
var
  nomor: LongInt;
  teksJumlah: string;
begin
  Writeln;
  GarisNota;
  Writeln('|', Tengah('MIE GACOAN'), '|');
  Writeln('|', Tengah('JAKARTA TIMUR - CONDET'), '|');
  Writeln('|', Tengah('Jl. Raya Condet, RT. 5/RW. 3'), '|');
  Writeln('|', Tengah('IG: @mie.gacoan'), '|');
  Writeln('|', Tengah('NOTA PEMBELIAN'), '|');
  GarisNota;
  BarisInfo('Pelanggan : ' + namaPelanggan);
  BarisInfo('Tanggal   : ' + tanggalNota);
  BarisInfo('Waktu     : ' + waktuNota);
  BarisInfo('Layanan   : ' + jenisLayanan);
  BarisInfo('Kasir     : ' + namaKasir);
  GarisNota;
  Writeln('| ', RataKiri('Menu', lebarNama), ' |',
    RataKanan('Jumlah', lebarJumlah), ' |',
    RataKanan('Subtotal', lebarHarga), ' |');
  GarisNota;

  for nomor := 1 to JumlahMenu do
    if JumlahPesanan[nomor] > 0 then
    begin
      Str(JumlahPesanan[nomor], teksJumlah);
      Writeln('| ', RataKiri(DaftarMenu[nomor].Nama, lebarNama), ' |',
        RataKanan(teksJumlah, lebarJumlah), ' |',
        RataKanan(FormatRupiah(Int64(DaftarMenu[nomor].Harga) *
        JumlahPesanan[nomor]), lebarHarga), ' |');
    end;

  GarisNota;
  Writeln('| ', RataKiri('TOTAL', lebarNama), ' |',
    RataKanan('', lebarJumlah), ' |',
    RataKanan(FormatRupiah(totalHarga), lebarHarga), ' |');
  Writeln('| ', RataKiri('BAYAR', lebarNama), ' |',
    RataKanan('', lebarJumlah), ' |',
    RataKanan(FormatRupiah(jumlahBayar), lebarHarga), ' |');
  Writeln('| ', RataKiri('KEMBALIAN', lebarNama), ' |',
    RataKanan('', lebarJumlah), ' |',
    RataKanan(FormatRupiah(jumlahKembalian), lebarHarga), ' |');
  GarisNota;
  Writeln('|', Tengah('Terima kasih atas kunjungan Anda.'), '|');
  Writeln('|', Tengah('Selamat datang kembali.'), '|');
  Writeln('|', Tengah('Kritik dan keluhan, hubungi: 0896-3934-5020'), '|');
  GarisNota;
end;

begin
  DaftarMenu[1].Nama := 'Mie Gacoan Lv 1';
  DaftarMenu[2].Nama := 'Mie Gacoan Lv 2';
  DaftarMenu[3].Nama := 'Mie Gacoan Lv 3';
  DaftarMenu[4].Nama := 'Mie Gacoan Lv 4';
  DaftarMenu[5].Nama := 'Mie Gacoan Lv 5';
  DaftarMenu[6].Nama := 'Mie Gacoan Lv 6';
  DaftarMenu[7].Nama := 'Mie Gacoan Lv 7';
  DaftarMenu[8].Nama := 'Mie Gacoan Lv 8';
  DaftarMenu[9].Nama := 'Mie Hompimpa Lv 1';
  DaftarMenu[10].Nama := 'Mie Hompimpa Lv 2';
  DaftarMenu[11].Nama := 'Mie Hompimpa Lv 3';
  DaftarMenu[12].Nama := 'Mie Hompimpa Lv 4';
  DaftarMenu[13].Nama := 'Mie Hompimpa Lv 5';
  DaftarMenu[14].Nama := 'Mie Hompimpa Lv 6';
  DaftarMenu[15].Nama := 'Mie Hompimpa Lv 7';
  DaftarMenu[16].Nama := 'Mie Hompimpa Lv 8';
  DaftarMenu[17].Nama := 'Mie Suit';

  DaftarMenu[18].Nama := 'Lumpia Udang';
  DaftarMenu[19].Nama := 'Pangsit Goreng';
  DaftarMenu[20].Nama := 'Siomay Ayam';
  DaftarMenu[21].Nama := 'Udang Keju';
  DaftarMenu[22].Nama := 'Udang Rambutan';

  DaftarMenu[23].Nama := 'Es Genderuwo';
  DaftarMenu[24].Nama := 'Es Gobak Sodor';
  DaftarMenu[25].Nama := 'Es Petak Umpet';
  DaftarMenu[26].Nama := 'Es Sluku Bathok';

  for indeks := 1 to 17 do
    DaftarMenu[indeks].Harga := 14000;
  for indeks := 18 to JumlahMenu do
    DaftarMenu[indeks].Harga := 12000;

  for indeks := 1 to JumlahMenu do
    JumlahPesanan[indeks] := 0;

  ClrScr;
  Write('Nama pelanggan: ');
  ReadLn(namaPelanggan);
  Write('Nama kasir: ');
  ReadLn(namaKasir);
  Writeln('Jenis layanan:');
  Writeln('1. Dine in');
  Writeln('2. Take away');
  Write('Pilih layanan (1/2): ');
  ReadLn(teksMasukan);
  Val(teksMasukan, pilihanLayanan, kodeKesalahan);
  while (kodeKesalahan <> 0) or
    ((pilihanLayanan <> 1) and (pilihanLayanan <> 2)) do
  begin
    Writeln('Pilihan tidak valid. Masukkan 1 atau 2.');
    Write('Pilih layanan (1/2): ');
    ReadLn(teksMasukan);
    Val(teksMasukan, pilihanLayanan, kodeKesalahan);
  end;
  if pilihanLayanan = 1 then
    jenisLayanan := 'Dine in'
  else
    jenisLayanan := 'Take away';

  selesai := False;
  while not selesai do
  begin
    ClrScr;
    TampilkanMenu;
    Write('Pilih nomor menu (0 untuk selesai): ');
    ReadLn(teksMasukan);
    Val(teksMasukan, pilihan, kodeKesalahan);

    if kodeKesalahan <> 0 then
      Writeln('Input tidak valid. Masukkan nomor menu.')
    else if pilihan = 0 then
      selesai := True
    else if (pilihan < 1) or (pilihan > JumlahMenu) then
      Writeln('Nomor menu tidak tersedia.')
    else
    begin
      Write('Jumlah ', DaftarMenu[pilihan].Nama, ': ');
      ReadLn(teksMasukan);
      Val(teksMasukan, jumlah, kodeKesalahan);
      if (kodeKesalahan <> 0) or (jumlah <= 0) then
        Writeln('Jumlah harus berupa angka lebih dari 0.')
      else
        JumlahPesanan[pilihan] := JumlahPesanan[pilihan] + jumlah;
    end;
    if not selesai then
    begin
      Write('Tekan tombol apa saja untuk melanjutkan...');
      ReadKey;
    end;
  end;

  ClrScr;
  GetDate(tahun, bulan, hari, hariMinggu);
  GetTime(jam, menit, detik, seperseratusDetik);
  Str(tahun, teksTahun);
  tanggalNota := DuaDigit(hari) + '-' + DuaDigit(bulan) + '-' + teksTahun;
  waktuNota := DuaDigit(jam) + ':' + DuaDigit(menit) + ':' + DuaDigit(detik);
  SiapkanNota;
  Write('Total belanja: ', FormatRupiah(totalHarga), LineEnding);
  repeat
    Write('Jumlah pembayaran: Rp ');
    ReadLn(teksMasukan);
    Val(teksMasukan, jumlahBayar, kodeKesalahan);
    if kodeKesalahan <> 0 then
      Writeln('Masukkan jumlah pembayaran berupa angka.')
    else if jumlahBayar < totalHarga then
      Writeln('Pembayaran kurang. Minimal pembayaran: ',
        FormatRupiah(totalHarga));
  until (kodeKesalahan = 0) and (jumlahBayar >= totalHarga);
  jumlahKembalian := jumlahBayar - totalHarga;
  SiapkanNota;
  CetakNota;
  Write('Tekan tombol apa saja untuk keluar...');
  ReadKey;
end.
