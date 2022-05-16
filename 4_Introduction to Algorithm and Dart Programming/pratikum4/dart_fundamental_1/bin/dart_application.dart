import 'dart:io';

void main() {
  //deklarasi variabel
  String? nama;
  int? nilaiPertama;
  int? nilaiKedua;

  //perulangan cari nama & print hasilnya
  while (nama == null || nama.isEmpty) {
    stdout.write("Masukkan Nama Anda: ");

    nama = stdin.readLineSync();
  }
  print("Nama Anda : $nama");
  print("==============");

  //perulangan cari nilai pertama & print hasilnya
  while (nilaiPertama == null) {
    stdout.write("Masukkan Nilai Pertama: ");

    nilaiPertama = int.tryParse(stdin.readLineSync().toString());
  }
  print("Berhasil, nilai pertama anda adalah: $nilaiPertama");
  print("==============");

  //perulangan cari nilai kedua & print hasilnya
  while (nilaiKedua == null) {
    stdout.write("Masukkan Nilai Kedua: ");

    nilaiKedua = int.tryParse(stdin.readLineSync().toString());
  }
  print("Berhasil, nilai kedua  anda adalah: $nilaiKedua");
  print("==============");

  //deklarasi nilaiFinal
  int nilaiFinal = rataRataNilai(nilaiPertama, nilaiKedua).toInt();

  //print hasil nilai final
  print(
      "nilai final dari $nama adalah $nilaiFinal. termasuk dalam kategori ${kategoriNilai(nilaiFinal)}");
}

//function cari rata2 nilai
double rataRataNilai(int nilaiPertama, int nilaiKedua) {
  return (nilaiPertama + nilaiKedua) / 2;
}

//function cari kategori nilai
String kategoriNilai(int nilaiFinal) {
  String kategoriNilai;

  if (nilaiFinal < 40) {
    kategoriNilai = "buruk";
  } else if (nilaiFinal > 40 && nilaiFinal < 80) {
    kategoriNilai = "biasa";
  } else {
    kategoriNilai = "baik";
  }

  return kategoriNilai;
}
