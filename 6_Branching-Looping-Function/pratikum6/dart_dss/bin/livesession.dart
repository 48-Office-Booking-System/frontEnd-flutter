import 'dart:io';
void main(List<String>arguments){
  //Step 1 deklarasi variabel 
  String? nama;
  int? nilaiPertama;
  int? nilaiKedua;

//step 2 dapatin hasil inputan nama 
  stdout.write("Masukan nama anda: ");
  nama = stdin.readLineSync();
  
  print("Nama yang diinput adalah : $nama");
  print("=====================");

//step 3 dapetin hasil inputan nilai pertamanya
  stdout.write("Masukan nilai pertama");
  nilaiPertama = int.tryParse(stdin.readLineSync().toString());//pharse nilai 

  print("Nilai pertama adalah : $nilaiPertama");
  print("=====================");

//step 4 dapetin hasil inputan nilai keduanya
  stdout.write("Masukan nilai pertama");
  nilaiPertama = int.tryParse(stdin.readLineSync().toString());//pharse nilai 

  print("Nilai pertama adalah : $nilaiPertama");
  print("=====================");

//step 5 dapetin nilai final dibikin function baru
int nilaiFinal=
rataRataNilai(nilaiPertama ?? 0 : nilaiPertama, nilaiKedua ?? 0).toInt();

//step 6 kategorisasi nilai final 
  double rataRataNilai(int nilaiPertama,int nilaiKedua){
    return (nilaiPertama+ nilaiKedua)/2;

  }
}