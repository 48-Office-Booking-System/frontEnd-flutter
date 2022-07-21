import 'package:map_koba/model/User/getAllUser_model.dart';
import 'package:map_koba/services/koba_api_service.dart';
import 'package:flutter/cupertino.dart';

class KobaViewModel extends ChangeNotifier {
  GetAllUser _resultUser = GetAllUser(
      id: 1,
      role: Role(id: 1, name: "Ario Updated"),
      name: "Ario Updated",
      email: "ario@email.com",
      password: "passssss",
      photoUrl: "www.poto.com",
      number: "08123456789",
      bookings: []);
  GetAllUser get resultUser => _resultUser;

  Future<void> user() async {
    final getAll = KobaApiService();

    try {
      final newAllUser = await getAll.getAllUser();
      _resultUser = newAllUser;
      print("Sukses : ${_resultUser}");
    } catch (e) {
      print("hasil eror : $e");
    }
    notifyListeners();
  }
}
