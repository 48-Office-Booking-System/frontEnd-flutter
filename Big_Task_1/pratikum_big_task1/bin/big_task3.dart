import 'dart:io';

void main() {
  int nilai = 0;
  stdout.write("Masukkan nilai: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    nilai = int.parse(input);
  }
  int i, j, k, n = nilai;

  for (i = 0; i <= n - 1; i++) {
    for (j = 0; j < i; j++) {   // segitiga atas
      stdout.write(" ");
    }
    for (k = i; k <= n - 1; k++) {
      stdout.write("*" + " ");  //segitiga bawah 
    }
    stdout.writeln(" ");
  }
  for (i = n - 1; i >= 0; i--) {
    for (j = 0; j < i; j++) {     //atas
      stdout.write(" ");      
    }
    for (k = i; k <= n - 1; k++) {
      stdout.write("*" + " ");      //bawah
    }
    stdout.writeln("");
  }
}