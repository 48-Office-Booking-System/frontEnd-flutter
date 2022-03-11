class BangunRuang {
  int? panjang;
  int? lebar;
  int? tinggi;

volume(int panjang, int lebar, int tinggi) {
    print("Panjang : $panjang, \nLebar : $lebar, \nTinggi : $tinggi");
    return panjang * lebar * tinggi;
  }
}