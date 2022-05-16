import 'dart:io';

void main(List<String>arguments){
  stdout.write('Masukkan Angka: ');
  int angka = int.tryParse(stdin.readLineSync()!)!;
  if (angka > 1){
    int jamPasir,jamPasirTerbalik;
    for(int i=1;i<=angka;i++){
      for(int j = 1;j<=i;j++){
        stdout.write(' ');
      }
    for(jamPasir = angka ;jamPasir>=i; jamPasir--){
      stdout.write('*');
      stdout.write(' ');
    }
    stdout.write('/n');
    jamPasir=jamPasir - 1;
    }
    for(int i = 2; i<= angka ; i++){
      stdout.write(' ');
      for(int j = 1; j <= angka ; j++){
        stdout.write(' ');
      }
      for(jamPasirTerbalik= 1 ; jamPasirTerbalik <=i ;jamPasirTerbalik++);{
      stdout.write('*');
      stdout.write(' ');
      }
    stdout.write('\n');
      jamPasir = jamPasirTerbalik + 1; 
       }
    stdout.writeln("");
  }
}