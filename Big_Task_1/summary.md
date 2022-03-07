Nama : Macharani Raschintasofi
Kelas : 8040190071

1. Problem 1 - Ganjil Genap
   Buatlah sebuah fungsi yang :
   -Menerima sebuah Angka
   -Mereturn true jika nilai inputan genap
   -Mereturn false jika nilai inputan ganjil

[soal1](./screenshots/soal1.png)

import 'dart:io';

void main() {
cekAngka();
}

void cekAngka() {
stdout.write("Masukkan Angka : ");
String? angka = stdin.readLineSync();
int? hasil = int.parse(angka!); //mengkonversi string yang berisi angka literal menjadi angka

if (hasil.isOdd) { //.isOdd digunakan untuk bilangan ganjil
print(" $hasil adalah angka Ganjil bukan Genap => ${false}");
} else if (hasil.isEven) { //. isEven digunakan untuk bilangan genap
print(" $hasil adalah angka Genap => ${true}");
}
}
[jawaban1](./screenshots/jawabancode1.png)

2. Problem 2 - Azimuth/Back-Azimuth
   Buatlah sebuah fungsi yang:
   -Menerima sebuah angka
   -Jika masukan > 180 maka return masukan -180
   -Jika < 180 return masukan + 180
   -Jika return <= 0 maka return 0
   -Jika retun >=360 maka return 0

[soal2](./screenshots/soal2.png)

import 'dart:io';

void main(){

    stdout.write("Masukan angka: ");
    String? angka = stdin.readLineSync();
    int? input = int.parse(angka!);

    if (input > 180 && input <=360){      //jika input > 180 dan <=360 return - 180
    print("Hasil return terdeteksi > 180 \nHasil return dari ${input} adalah ${input-180}");
    }
    else if (input < 180 ){               //jika input <180 return + 180
        print("Hasil return terdeteksi < 180 \nHasil return dari ${input} adalah ${input+180}");

    }else if (input<=0 ){                 //jika input <=0 maka return 0
      print("Hasil return terdeteksi <=0 \nHasil return dari ${input} adalah ${input=0}");

    }else {                               //selain diatas maka 0 (lebih dari 360)
      print("Hasil return terdeteksi >=360 \nHasil return dari ${input} adalah ${input=0}");
    }

}

[jawaban2](./screenshots/jawabancode2.png)

3. Problem 3 - Jam Pasir
   Buatlah sebuah fungsi yang dapat :
   -Menerima sebuah angka
   -Menampilkan jam pasir sesuai dengan masukan

[soal3](./screenshots/soal3.png)

import 'dart:io';

void main() {
int nilai = 0; //karena input angka
stdout.write("Masukkan nilai: ");
String? input = stdin.readLineSync(); //

if (input != null) {
nilai = int.parse(input);
}
int i, j, k, n = nilai;

for (i = 0; i <= n - 1; i++) {
for (j = 0; j < i; j++) { //untuk segitiga atas
stdout.write(" ");
}
for (k = i; k <= n - 1; k++) {
stdout.write("_" + " "); //untuk segitiga bawah
}
stdout.writeln(" ");
}
for (i = n - 1; i >= 0; i--) {
for (j = 0; j < i; j++) { //untuk segitiga atas
stdout.write(" ");  
 }
for (k = i; k <= n - 1; k++) {
stdout.write("_" + " "); //untuk segitiga bawah
}
stdout.writeln("");
}
}

[jawaban3](./screenshots/jawabancode3.png)

4.  Problem 4 - Diagonal Angka
    Buatlah sebuah fungsi yang dapat
    -Menerima sebuah angka
    -Menampilkan angka secara diagonal

[soal4](./screenshots/soal4.png)

import 'dart:io';

void main() {
stdout.write("Masukkan Angka : ");
int? angka = int.parse(stdin.readLineSync()!);

for(int i = 0; i <= angka; i++)
{
for(int j = 1; j <= i; j++)
{
if(j == i){
stdout.write(j);
}
stdout.write(' ');
}
stdout.writeln();
}
}

[jawaban4](./screenshots/jawabancode4.png)
