import 'dart:io';

void main() {
  stdout.write("Masukkan Angka : ");
  int? angka = int.parse(stdin.readLineSync()!);
  if (angka > 1){
    int out = 1;
    for(int j=0;j <=angka ; j++){
      if(j==out){
        stdout.write(out);
        break;
      }else {
        stdout.write(" ");
      }
    }
      stdout.write("");
      out++;
    }
  }
