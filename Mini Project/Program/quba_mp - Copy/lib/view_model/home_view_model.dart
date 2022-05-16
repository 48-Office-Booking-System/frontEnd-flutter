import 'package:flutter/material.dart';
import 'package:quba_mp/service/api_service.dart';
import 'package:quba_mp/model/detail_surah_model.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  List<Verse> _results = [];
  List<Verse> get result => _results;

  Future<void> getAllSurah() async {
    final apiService = ApiService();

    try {
      final newResult = await apiService.getSurahData();

      _results = newResult ?? [];

      print("hasilviewmodelSuccess: $_results");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }

    notifyListeners();
  }
}
