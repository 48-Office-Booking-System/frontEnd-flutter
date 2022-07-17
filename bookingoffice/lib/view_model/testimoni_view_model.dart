import 'package:map_koba/model/testimoni_model.dart';
import 'package:flutter/material.dart';

enum TestimoniViewState {
  none,
  loading,
  loaded,
  error,
}

class TestimoniViewModel with ChangeNotifier {
  TestimoniViewState _state = TestimoniViewState.none;
  TestimoniViewState get state => _state;

  List<TestimoniModel> testimoniModelData = [
    TestimoniModel(
      name: 'Building A',
      img: 'assets/images/gedung1.png',
      title: 'Not bad for urgently meeting, they can handle, Good',
      username: 'Mr. William',
    ),
    TestimoniModel(
      name: 'Building B',
      img: 'assets/images/gedung2.png',
      title: 'Brings new experience for us. Thanks ehelping ours event.',
      username: 'Mr. Jaden',
    ),
    TestimoniModel(
      name: 'Building C',
      img: 'assets/images/gedung3.png',
      title: 'This platform so great, I found room instant for meeting',
      username: 'Mr. Wakthu',
    ),
    TestimoniModel(
      name: 'Building D',
      img: 'assets/images/gedung4.png',
      title: 'Not bad for urgently meeting, they can handle, Good',
      username: 'Mr. William',
    ),
    TestimoniModel(
      name: 'Building E',
      img: 'assets/images/gedung5.png',
      title: 'Brings new experience for us. Thanks ehelping ours event',
      username: 'Mr. Jaden',
    ),
    TestimoniModel(
      name: 'Building F',
      img: 'assets/images/gedung6.png',
      title: 'This platform so great, I found room instant for meeting',
      username: 'Mr. Wakthu',
    ),
  ];
  List<TestimoniModel> get list => testimoniModelData;

  changeState(TestimoniViewState s) {
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
