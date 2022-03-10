import 'hewan.dart';
import 'mobil.dart';

void main() {
  Mobil mobil = new Mobil();
  Hewan hewan = new Hewan();

  mobil.tambahMuatan(hewan);
  mobil.tambahMuatan(hewan);
  mobil.tambahMuatan(hewan);
  mobil.tambahMuatan(hewan);
  mobil.tambahMuatan(hewan);
 

  mobil.totalMuatan();
}