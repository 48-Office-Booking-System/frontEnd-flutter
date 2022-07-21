import 'package:map_koba/model/User/getAllUser_model.dart';
import 'package:dio/dio.dart';
import 'package:map_koba/model/User/postAddNewUser_model.dart';

class KobaApiService {
  Future<GetAllUser> getAllUser() async {
    final _dio = Dio();

    try {
      final response = await _dio.get("http://34.207.166.213/user/all");
      print("${response.data}");
      final res = GetAllUser.fromJson(response.data);
      return res;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  // Future <PostAddNewUser> postAddUser() async {
  //   final _dio = Dio();

  //   try {
  //     final response = await _dio.get("http://34.207.166.213/post/all");
  //     print("${response.data}");
  //     final res = GetAllUser.fromJson(response.data);
  //     return res;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }

  // }
}
