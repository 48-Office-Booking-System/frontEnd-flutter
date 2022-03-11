abstract class Hewan{
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

void main (){
  var k1 = Kambing();
  k1.reproduksi();
  k1.bernafas();

}