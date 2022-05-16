import 'package:flutter/material.dart';
import 'package:quba_mp/service/api_service.dart';
import '../model/surah_model.dart';

class HomeViewModel extends ChangeNotifier {
  List<Data> _results = [];
  List<Data> get result => _results;

  Future<void> getAllResult() async {
    final apiService = ApiService();

    try {
      final newResult = await apiService.getSurah();

      _results = newResult ?? [];

      print("HomeViewModel Success: $_results");
    } catch (e) {
      print("HomeViewModel Error: $e");
    }

    notifyListeners();
  }
}
