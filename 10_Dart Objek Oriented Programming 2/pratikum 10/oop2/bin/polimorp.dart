class Hewan{
   reproduksi(){
    print('tidak diketahui');
  }
  bernafas(){
    print('tidak diketahui');
  }
}
class Kambing extends Hewan{
  @override
  reproduksi() {
    print('melahirkan');
  }
  @override
  bernafas() {
    print('paru-paru');
  }
}

class Kucing extends Hewan{
  @override
  reproduksi() {
    print('melahirkan');
  }
  @override
  bernafas() {
    print('paru-paru');
  }
}
void main (){
  Hewan k1=Hewan();
  print(k1);

  k1 = Kambing();
  print(k1);
  k1.bernafas();

  k1 = Kucing();
  print(k1);
  k1.bernafas();
}