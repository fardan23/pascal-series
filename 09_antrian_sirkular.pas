program antrian_sirkular;

uses crt;

const
  N = 6;   { jumlah lokasi memori (sesuai latihan no. 2) }

var
  queue       : array [1..N] of char;
  front, rear : integer;   { 0 = Null / antrean kosong }
  pil         : char;
  data        : char;
  i           : integer;

procedure inisialisasi;
var k: integer;
begin
  front := 0;
  rear  := 0;
  for k := 1 to N do queue[k] := ' ';
end;

procedure tampil;
var k: integer;
begin
  write('  Queue : ');
  for k := 1 to N do write('[', queue[k], ']');
  writeln;
  write('  Index :  ');
  for k := 1 to N do write(k, '  ');
  writeln;
  writeln('  F = ', front, '   R = ', rear);
  writeln;
end;

{ QINSERT (QUEUE, N, FRONT, REAR, DATA) }
procedure qinsert(d: char);
begin
  { 1. apakah antrean penuh }
  if ((front = 1) and (rear = N)) or (front = rear + 1) then
  begin
    writeln('  OVERFLOW: antrean penuh');
    exit;
  end;
  { 2. tentukan nilai Rear yang baru }
  if front = 0 then
  begin
    front := 1;
    rear  := 1;
  end
  else if rear = N then
    rear := 1
  else
    rear := rear + 1;
  { 3. masukkan elemen baru }
  queue[rear] := d;
end;

{ QDELETE (QUEUE, N, FRONT, REAR, DATA) }
procedure qdelete(var d: char);
begin
  { 1. apakah antrean kosong }
  if front = 0 then
  begin
    writeln('  UNDERFLOW: antrean kosong');
    d := ' ';
    exit;
  end;
  { 2. ambil data }
  d := queue[front];
  queue[front] := ' ';
  { 3. tentukan nilai Front yang baru }
  if front = rear then
  begin
    front := 0;
    rear  := 0;
  end
  else if front = N then
    front := 1
  else
    front := front + 1;
end;

{ Demo latihan no. 2: Insert F,G,H,I ; Insert J ; Remove ; Insert K ; Insert L }
procedure demo;
var
  d : char;
begin
  inisialisasi;
  writeln('Awal antrean hampa'); tampil;

  writeln('(a) Insert F, G, H, I');
  qinsert('F'); qinsert('G'); qinsert('H'); qinsert('I'); tampil;

  writeln('(b) Insert J');
  qinsert('J'); tampil;

  writeln('(c) Remove');
  qdelete(d);
  writeln('  Elemen yang dihapus: ', d);
  tampil;

  writeln('(d) Insert K');
  qinsert('K'); tampil;

  writeln('(e) Insert L');
  qinsert('L'); tampil;
end;

begin
  clrscr;
  inisialisasi;
  repeat
    writeln('==== ANTREAN ARRAY SIRKULAR (N = ', N, ') ====');
    writeln('[1] Insert');
    writeln('[2] Remove');
    writeln('[3] Demo latihan no. 2');
    writeln('[4] Keluar');
    write('Pilihan anda: ');
    pil := readkey;
    writeln(pil);
    writeln;
    case pil of
      '1': begin
             write('  Masukkan 1 karakter: ');
             readln(data);
             qinsert(data);
             tampil;
           end;
      '2': begin
             qdelete(data);
             if front >= 0 then writeln('  Elemen yang dihapus: ', data);
             tampil;
           end;
      '3': demo;
    end;
  until pil = '4';
end.
