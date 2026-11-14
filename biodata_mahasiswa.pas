program BiodataMahasiswa;
{
  Program  : Input dan Tampil Biodata Mahasiswa
  Deskripsi: Menggunakan array of record, record di dalam record
             (tanggal lahir), dan perulangan for.
}

type
    TTanggal = record
        tanggal : integer;
        bulan : integer;
        tahun : integer;
    end;

    TMahasiswa = record
        nama         : string[30];
        NIM          : string[12];
        alamat       : string[50];
        noHP         : string[15];
        tempatLahir  : string[25];
        tglLahir     : TTanggal;      { record di dalam record }
    end;

var
    mhs  : array[1..100] of TMahasiswa;
    n, i : integer;

begin
    write('Jumlah mahasiswa yang akan diinput : ');
    readln(n);
    writeln;

    { Perulangan input }
    for i := 1 to n do
    begin
        writeln('--- Data Mahasiswa ke-', i, ' ---');
        write('Nama          : '); readln(mhs[i].nama);
        write('NIM           : '); readln(mhs[i].NIM);
        write('Alamat        : '); readln(mhs[i].alamat);
        write('No. HP        : '); readln(mhs[i].noHP);
        write('Tempat Lahir  : '); readln(mhs[i].tempatLahir);
        writeln('Tanggal Lahir (isi dengan angka):');
        write('   Tanggal (1-31)   : '); readln(mhs[i].tglLahir.tanggal);
        write('   Bulan (1-12)     : '); readln(mhs[i].tglLahir.bulan);
        write('   Tahun (mis. 2004): '); readln(mhs[i].tglLahir.tahun);
        writeln;
    end;

    { Perulangan tampil data }
    writeln('==============================');
    writeln('        DATA MAHASISWA');
    writeln('==============================');
    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i);
        writeln('Nama              : ', mhs[i].nama);
        writeln('NIM               : ', mhs[i].NIM);
        writeln('Alamat            : ', mhs[i].alamat);
        writeln('No. HP            : ', mhs[i].noHP);
        writeln('Tempat, Tgl Lahir : ', mhs[i].tempatLahir, ', ',
                mhs[i].tglLahir.tanggal, '-',
                mhs[i].tglLahir.bulan, '-',
                mhs[i].tglLahir.tahun);
        writeln('------------------------------');
    end;

    readln;
end.
