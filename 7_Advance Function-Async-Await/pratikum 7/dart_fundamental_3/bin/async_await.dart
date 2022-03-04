void p1(){
  Future.delayed(Duration(seconds: 1),(){
    print('Hello by p1');
  });
}

void p2(){
  print('Hello by p2');
}

void main(){
  p1();
  p2();
}

// Future<void> p1()async{
//   await Future.delayed(Duration(seconds: 1),(){
//     print('Hello by p1');
//   });
// }

// void p2(){
//   print('Hello by p2');
// }

// void main()async{
//   await p1();
//   p2();
// }