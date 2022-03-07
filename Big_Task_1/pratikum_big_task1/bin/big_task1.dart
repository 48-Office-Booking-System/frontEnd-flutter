// Problem 1 - Ganjil Genap
//Buatlah sebuah fungsi yang :
// -Menerima sebuah Angka
// -Mereturn true jika nilai inputan genap
// -Mereturn false jika nilai inputan ganjil

// void main() {
//   print(cekBilGenap(14));
//   print(cekBilGenap(7));
// }
//   cekBilGenap(int numbers) {
//   if (numbers % 2 == 0) {
//     return true;
//   }
//   return false;
  
//   // lebih singkat
//   // return number % 2 == 0;
// }

import 'dart:io';

void main() {
  cekAngka();
}

void cekAngka() {
  stdout.write("Masukkan Angka : ");
  String? angka = stdin.readLineSync();
  int? hasil = int.parse(angka!);

  if (hasil.isOdd) {
    print(" $hasil adalah angka Ganjil bukan Genap => ${false}");
  } else if (hasil.isEven) {
    print(" $hasil adalah angka Genap => ${true}");
  }
}