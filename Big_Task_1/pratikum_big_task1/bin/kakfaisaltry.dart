import 'dart:io';

void main()async{ 
//dapatkan input user
  stdout.write("Inputkan nilai: ");
  int? nilai=int.tryParse(stdin.readLineSync().toString()); //(!)dipaksa convert
//loop for vertical
  for(int i = 1; i<= nilai!; i++){
//loop fo horizontal
  for(int j=1; j<i;j++){
    stdout.write(" ");
  }
    stdout.writeln("$i");
  }
}