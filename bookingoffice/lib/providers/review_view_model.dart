import 'package:bookingoffice/models/review_model.dart';
import 'package:flutter/material.dart';

enum RiviewViewState{
  none,
  loading,
  loaded,
  error,
}

class RiviewViewModel with ChangeNotifier{
  RiviewViewState _state = RiviewViewState.none;
  RiviewViewState get state => _state;

  List<ReviewModel> riviewModelData = [
    ReviewModel(
      name: 'Joko',
      img: 'assets/images/joko.png',
      title: 'Meeting diruangan ini nyaman banget, adem. Pokoknya ga bosen meeting lama - lama disini. Pelayanannya juga bagus, lengkap, dan sesuai dengan kebutuhan untuk meeting.',
    ),
    ReviewModel(
      name: 'Dina',
      img: 'assets/images/dina.png',
      title: 'Harga sewanya terjangkau. Ruangannya juga luas, cukup buat banyak orang. Tapi AC nya tidak terlalu dingin, jadi agak panas. Fasilitasnya juga cukup bagus.',
    ),
    ReviewModel(
      name: 'Nana',
      img: 'assets/images/nana.png',
      title: 'Karyawannya kurang ramah, tapi fasilitasnya cukup baik. Overall, baik deh. letaknya juga strategis',
    ),
  ];
  List<ReviewModel> get list => riviewModelData;

  changeState(RiviewViewState s){
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