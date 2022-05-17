import 'package:dio/dio.dart';
//import '../model/detail_surah_model.dart' as surahDetail;
import '../model/surah_model.dart' as surah;

class ApiService {
  Future<List<surah.Data>?> getSurah() async {
    //semua surah
    final response = await Dio().get("https://api.quran.sutanlab.id/surah/");

    final res = surah.Surah.fromJson(response.data);

    List<surah.Data>? result = res.data;

    return result;
  }

  Future<List<surah.Data>?> getSurahData(String id) async {
    //perdetail surah
    final response2 =
        await Dio().get("https://api.quran.sutanlab.id/surah/${id}");

    print(response2.data);

    final res = surah.Surah.fromJson(response2.data);

    print("Result: $res");

    List<surah.Data>? result = res.data;

    return result;
  }
}
