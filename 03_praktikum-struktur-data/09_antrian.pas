program antrian_09;

uses crt;

type
  antrian = ^node;
  node = record
    isi  : string[10];
    next : antrian;
  end;

var
  dpn, blk : antrian;
  hasil, x : string;
  pil      : char;

{ procedure baru digunakan untuk inisialisasi awal list }
procedure baru(x: string; var tunjuk: antrian);
begin
  new(tunjuk);
  tunjuk^.isi  := x;
  tunjuk^.next := nil;
end;

{ function isempty digunakan untuk mengecek apakah list kosong atau tidak }
function isempty(depan, belakang: antrian): boolean;
begin
  isempty := (depan = nil) and (belakang = nil);
end;

{ procedure tambahantri digunakan untuk menambah jumlah orang dalam antrian }
procedure tambahantri(var depan, belakang: antrian);
var
  x      : string;
  tunjuk : antrian;
begin
  write('Masukkan nama orang yang mau masuk antrian : ');
  readln(x);
  baru(x, tunjuk);
  if isempty(depan, belakang) then
  begin
    depan    := tunjuk;
    belakang := tunjuk;
  end
  else
  begin
    belakang^.next := tunjuk;
    belakang       := tunjuk;
  end;
end;

{ procedure hapusdpn digunakan untuk menghapus elemen terdepan antrian }
procedure hapusdpn(var depan, belakang: antrian);
var
  bantu : antrian;
begin
  if isempty(depan, belakang) then
    writeln('Antrian Kosong')
  else
  begin
    bantu := depan;
    depan := depan^.next;
    if depan = nil then belakang := nil;
    dispose(bantu);
  end;
end;

{ procedure selesaiantri digunakan untuk mengambil orang yang telah selesai antri }
procedure selesaiantri(var depan, belakang: antrian; var x: string);
begin
  if depan = nil then
    x := 'Antrian Kosong'
  else
  begin
    x := depan^.isi;
    hapusdpn(depan, belakang);
  end;
end;

{ procedure kosongkan: membebaskan seluruh memori antrian }
procedure kosongkan(var depan, belakang: antrian);
begin
  while not isempty(depan, belakang) do
    hapusdpn(depan, belakang);
end;

{ procedure buatantrian untuk membangun antrian dengan input data interaktif }
procedure buatantrian(var depan, belakang: antrian);
var
  c      : char;
  tunjuk : antrian;
  i      : integer;
  x      : string;
begin
  kosongkan(depan, belakang);
  i := 0;
  repeat
    i := i + 1;
    write('masukkan nama ke-', i, ' = ');
    readln(x);
    baru(x, tunjuk);
    if isempty(depan, belakang) then
    begin
      depan    := tunjuk;
      belakang := tunjuk;
    end
    else
    begin
      belakang^.next := tunjuk;
      belakang       := tunjuk;
    end;

    repeat
      write('tambah data yang antri [Y/T] = ');
      readln(c);
    until c in ['T', 't', 'Y', 'y'];
  until c in ['T', 't'];
end;

{ procedure cetak untuk mencetak isi antrian;
  pintu keluar di sebelah kanan, pintu masuk di sebelah kiri }
procedure cetak(depan: antrian; var output: string);
var
  bantu : antrian;
  y     : string;
begin
  bantu  := depan;
  output := ' Loket Pendaftaran';
  if depan = nil then
    output := 'Antrian Kosong'
  else
  begin
    while bantu <> nil do
    begin
      y      := bantu^.isi;
      output := y + '->>' + output;
      bantu  := bantu^.next;
    end;
    output := 'pintu masuk antrian ->>' + output;
  end;
end;

begin
  clrscr;
  dpn := nil;
  blk := nil;
  buatantrian(dpn, blk);
  repeat
    repeat
      writeln;
      writeln('----------------------------------------');
      writeln('[1] Buat Antrian Baru');
      writeln('[2] Tambah Antrian Pendaftar');
      writeln('[3] Ambil Orang yang selesai daftar');
      writeln('[4] Loket Pendaftaran ditutup');
      writeln('----------------------------------------');
      write('Pilihan anda: ');
      pil := readkey;
      writeln(pil);
      writeln;
    until (pil >= '1') and (pil <= '4');

    case pil of
      '1': begin
             buatantrian(dpn, blk);
             writeln;
           end;
      '2': begin
             tambahantri(dpn, blk);
             writeln;
             writeln('Setelah ditambah antrian menjadi : ');
             cetak(dpn, hasil);
             writeln(hasil);
             writeln;
           end;
      '3': begin
             selesaiantri(dpn, blk, x);
             if x = 'Antrian Kosong' then
               writeln('Antrian Kosong')
             else
               writeln(x, ' telah selesai mendaftar, maka ia keluar dari antrian');
             writeln;
             writeln('Antrian menjadi :');
             cetak(dpn, hasil);
             writeln(hasil);
             writeln;
           end;
      '4': begin
             writeln('Loket telah ditutup');
             writeln('Antrian dilanjutkan hari berikutnya');
           end;
    end;
  until pil = '4';

  kosongkan(dpn, blk);
  readln;
end.
