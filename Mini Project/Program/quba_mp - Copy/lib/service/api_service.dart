import 'package:dio/dio.dart';
import 'package:quba_mp/view_model/home_view_model.dart';
import 'package:quba_mp/model/detail_surah_model.dart';

import 'package:quba_mp/model/detail_surah_model.dart';

class ApiService {
  Future<List<Verse>?> getSurahData() async {
    final response = await Dio().get("https://api.quran.sutanlab.id/surah/1");

    final res = DetailSurah.fromJson(response.data);

    List<Verse>? verse = res.verses;

    return verse;
  }
}
