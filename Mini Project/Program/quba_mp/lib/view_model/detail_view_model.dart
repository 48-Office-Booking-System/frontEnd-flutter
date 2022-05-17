import 'package:flutter/material.dart';
// import 'package:quba_mp/model/detail_surah_model.dart';
import 'package:quba_mp/model/surah_model.dart';
import 'package:quba_mp/service/api_service.dart';

//belum digunakan karena eror
class DetailViewModel extends ChangeNotifier {
  List<Data> _results = [];
  List<Data> get result => _results;

  Future<void> getOneResult(String id) async {
    final apiService = ApiService();

    try {
      final newResult = await apiService.getSurahData(id);

      _results = newResult ?? [];

      print("DetailViewModel Success: $_results");
    } catch (e) {
      print("DetailViewModel Error: $e");
    }

    notifyListeners();
  }
}
