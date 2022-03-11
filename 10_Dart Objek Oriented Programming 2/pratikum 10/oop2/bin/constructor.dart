class Hewan{
  int? mata ;
  int? kaki;

  Hewan (){
    mata = 0;
    kaki = 0;
  }
  reproduksi(){
    print('tidak diketahui');
  }

  void bernafas() {}
  // bernafas(){
  //   print('tidak diketahui');
  // }reproduksi(){
  //   print('tidak diketahui');
  // }
  // bernafas(){
  //   print('tidak diketahui');
  // }
}
void main(){
  var hewan = Hewan();
  print(hewan.mata);
  print(hewan.kaki);
}