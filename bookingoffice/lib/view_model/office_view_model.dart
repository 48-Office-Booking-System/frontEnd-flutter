import 'package:map_koba/model/office_model.dart';
import 'package:flutter/material.dart';

enum OfficeViewState {
  none,
  loading,
  loaded,
  error,
}

class OfficeViewModel with ChangeNotifier {
  OfficeViewState _state = OfficeViewState.none;
  OfficeViewState get state => _state;

  List<BuildingModel> buildingModelData = [
    BuildingModel(
      id: 1,
      name: 'Building A',
      img: 'assets/images/gambar1.png',
      title:
          'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
      location: '-INFINITI OFFICE -',
      locationdetail:
          'Permata Regency D/37 , Jln H.Kelik ,Srengseng , Kec.Kembangan ,Kota Jakarta Barat , DKI Jakarta',
      facility:
          'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
      pricehours: 'Rp 500.000 x 1 Jam',
      category: 'Indoor',
      capacity: '51-60',
      price: 500000,
      nohp: '+62895401010022',
    ),
    BuildingModel(
      id: 2,
      name: 'Building B',
      img: 'assets/images/gambar2.png',
      title:
          'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
      location: '-VANTAGE OFFICE-',
      locationdetail:
          'APL Tower - Central Park 26th floor Unit T3 ,Jl. Letjen S. Parman 28, Tanjung Duren Selatan , Grogol petamburan, Jakarta Barat, 11470, Indonesia',
      facility:
          'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
      pricehours: 'Rp 550.000 x 1 Jam',
      category: 'Indoor',
      capacity: '31-40',
      price: 550000,
      nohp: '+6282171007526',
    ),
    BuildingModel(
      id: 3,
      name: 'Building C',
      img: 'assets/images/gambar3.png',
      title:
          'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
      location: '-UNIFAM TOWER-',
      locationdetail:
          'Jl. Panjang Raya 7, Kedoya Utara , Kebon Jeruk , West Jakarta City , Jakarta ',
      facility:
          'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
      pricehours: 'Rp 950.000 x 1 Jam',
      category: 'Indoor',
      capacity: '11-20',
      price: 950000,
      nohp: '+62895401010022',
    ),
    BuildingModel(
      id: 4,
      name: 'Building D',
      img: 'assets/images/gambar4.png',
      title:
          'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
      location: '-SPACE INC COWORKING-',
      locationdetail:
          'Rukan Daan Mogot , Jalan Daan Mogot Raya No.47 , Tanjung Duren Utara , Kec . Grogol-Petamburan , Kota Jakarta Barat , DKI Jakarta ',
      facility:
          'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
      pricehours: 'Rp 500.000 x 1 Jam',
      category: 'Outdoor',
      capacity: '51-60',
      price: 800000,
      nohp: '+6282171007526',
    ),
    BuildingModel(
      id: 5,
      name: 'Building E',
      img: 'assets/images/gambar5.png',
      title:
          'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
      location: '-GO WORK LIPPO MALL PURI-',
      locationdetail:
          'Lippo Mall Puri Lt. Ground Floor( Dekat Lobby Banking Hall) , Jln.Puri Indah Raya ,Blok U1 , Puri Indah CBD , Jkt Barat , DKI Jakarta ',
      facility:
          'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
      pricehours: 'Rp 500.000 x 1 Jam',
      category: 'Outdoor',
      capacity: '51-60',
      price: 500000,
      nohp: '+62895401010022',
    ),
    BuildingModel(
      id: 6,
      name: 'Building F',
      img: 'assets/images/gambar6.png',
      title:
          'Ruang Meeting indoor yang berkualitas dengan mementingkan kenyamanan dan fasilitas yang mendukung kegiatan meeting anda. Meeting bersama rekan kerja akan berjalan dengan lancar.',
      location: 'SOMA COWORKING CAFE',
      locationdetail:
          'Jl.Arjuna Utara No.35 , Duri Kepa , Kec.Kebon Jeruk , Kota Jakarta Barat , DKI Jakarta ',
      facility:
          'Dilengkapi dengan AC, proyektor, bangku, sofa, meja, papan tulis dan lainnya.',
      pricehours: 'Rp 500.000 x 1 Jam',
      category: 'Indoor',
      capacity: '41-50',
      price: 500000,
      nohp: '+6282171007526',
    ),
  ];
  List<BuildingModel> get list => buildingModelData;

  changeState(OfficeViewState s) {
    _state = s;
    notifyListeners();
  }

  // fetchProduct() async {
  //   changeState(BestSellerViewState.loading);
  //   try {
  //     final apiusers = await RemoteServices.fetchProduct();
  //     _list = apiusers ?? [];
  //     notifyListeners();
  //     changeState(BestSellerViewState.loaded);
  //   } catch (e) {
  //     changeState(BestSellerViewState.error);
  //   }
  //   notifyListeners();
  // }
}
