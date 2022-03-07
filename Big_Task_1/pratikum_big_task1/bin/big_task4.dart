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