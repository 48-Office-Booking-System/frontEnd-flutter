import 'bangunruang.dart';

class BangunRuang {
  int? panjang;
  int? lebar;
  int? tinggi;
//constructor

  volume(int panjang, int lebar, int tinggi) {
    print("Panjang : $panjang, Lebar : $lebar, Tinggi : $tinggi");
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  int? sisi;

  hitungSisi(int sisi) {
    print("Sisi : $sisi");
    return (sisi * sisi * sisi);
  }

  @override
  volume(int panjang, int lebar, int tinggi) {
    print("Panjang : $panjang, Lebar : $lebar, Tinggi : $tinggi");
    return panjang * lebar * tinggi;
  }
}

class Balok extends BangunRuang {
  @override
  volume(int panjang, int lebar, int tinggi) {
    print("Panjang : $panjang, Lebar : $lebar, Tinggi : $tinggi");
    return panjang * lebar * tinggi;
  }
}

void main(List<String> args) {
  BangunRuang v1 = BangunRuang();

  int hasil = (v1.volume(5, 5, 5));
  print("Volume dari Kubus Diatas diatas adalah : $hasil");

  BangunRuang v2 = BangunRuang();
  int answer = v2.volume(10, 4, 7);
  print("Volume dari Balok Diatas diatas adalah : $answer");

}