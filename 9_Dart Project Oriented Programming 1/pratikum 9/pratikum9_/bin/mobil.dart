import 'hewan.dart';

class Mobil {
  int kapasitas = 4;
  List<Hewan> hewans = [];

  void tambahMuatan(Hewan hewan) {
    if (hewans.length < kapasitas) {
      hewans.add(hewan);
    } else {
      print('Kapasitas maksimal!');
    }
  }

  void totalMuatan() {
    int muatan = hewans.length;
    print('Total muatan = $muatan');
  }
}