class Faktorisasi{
  int? hasil;

  fpb(int x , int y) {
    if (y ==0) {
      return x;
  }else{
    return fpb(y, x % y);
  }
}
  kpk(int x , int y){
    return x/fpb(x,y)*y;
  }
}

class KelipatanPersekutuanKecil implements Faktorisasi{
  @override
  int? hasil;

  @override
  fpb(int x, int y) {
    if (y ==0) {
      return x;
  }else{
    return fpb(y, x % y);
  }
}

  @override
  kpk(int x, int y) {
    return x/fpb(x,y)*y;
  }
}

class FaktorPersekutuanBesar implements Faktorisasi{
  @override
  int? hasil;

  @override
  fpb(int x, int y) {
    if (y ==0) {
      return x;
  }else{
    return fpb(y, x % y);
  }
}
  @override
  kpk(int x, int y) {
    return x/fpb(x,y)*y;
  }
}
void main(List<String> args) {
  Faktorisasi f1 = Faktorisasi();

  int hasil = (f1.fpb(10, 5));
  print("FPB dari angka diatas adalah : $hasil");

  Faktorisasi f2 = Faktorisasi();
  double answer = f2.kpk(10, 4);
  print("KPK dari angka diatas adalah: $answer");

}
