import 'dart:io';
import 'hewan.dart';
import 'mobil.dart';

//hewan
class Hewan {
  int? berat;
}

//mobil
class Mobil {
  int kapasitas = 4; //kapasitas mobil
  List<Hewan> hewans = [];

  void tambahMuatan(Hewan hewan) {
    if (hewans.length < kapasitas) {  //kalau length melebihi kapasitas
      hewans.add(hewan);
    } else {
      print('Kapasitas maksimal!'); //print ini
    }
  }

  void totalMuatan() {
    int muatan = hewans.length;
    print('Total muatan = $muatan');
  }
}
void main() {
  Mobil mobil = new Mobil();
  Hewan hewan = new Hewan();

  stdout.write("Nama Hewan : ");
  String? inputHewan = stdin.readLineSync();

  stdout.write("Jenis Mobil : ");
  String? inputMobil = stdin.readLineSync();

  mobil.tambahMuatan(hewan);
  mobil.tambahMuatan(hewan);
  mobil.tambahMuatan(hewan); //length hewan
  mobil.tambahMuatan(hewan);
  mobil.tambahMuatan(hewan);

  mobil.totalMuatan();
}