// Problem 2 - Azimuth/Back-Azimuth
// Buatlah sebuah fungsi yang:
// -Menerima sebuah angka 
// -Jika masukan lebih dari 180 maka return masukan -180
// -Jika kurang dari 180 return masukan + 180 
// -Jika return <= 0 maka return 0
// -Jika retun >=360 maka return 0

// void main(){
//   int input = 370;

//   if (input > 180 && input <=360){
//     print("Hasil return terdeteksi > 180 \nHasil return dari ${input}${input-180}");
   
//   }else if (input < 180 ){
//     return 
//     print("Hasil return terdeteksi < 180 \nHasil return dari ${input}${input+180}");

//   }else if (input<=0 ){
//     print("Hasil return terdeteksi <=0 \nHasil return dari ${input}${input=0}");
  
//   }else {
//     print("Hasil return terdeteksi >=360 \nHasil return dari ${input} : ${input=0}");
//     //usia lebih dari 20 jadi screen show Dewasa
//   }
// }


import 'dart:io';

void main(){
    
    stdout.write("Masukan angka: ");
    String? angka = stdin.readLineSync();
    int? input = int.parse(angka!);

    if (input > 180 && input <=360){
    print("Hasil return terdeteksi > 180 \nHasil return dari ${input} adalah ${input-180}");
    }
    else if (input < 180 ){
        print("Hasil return terdeteksi < 180 \nHasil return dari ${input} adalah ${input+180}");

    }else if (input<=0 ){
      print("Hasil return terdeteksi <=0 \nHasil return dari ${input} adalah ${input=0}");
    
    }else {
      print("Hasil return terdeteksi >=360 \nHasil return dari ${input} adalah ${input=0}");
    }
  }