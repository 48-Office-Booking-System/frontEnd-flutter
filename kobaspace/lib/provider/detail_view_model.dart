import 'package:flutter/material.dart';
import 'package:kobaspace/components/result_state.dart';
import 'package:kobaspace/services/remote_services.dart';

class DetailViewModel extends ChangeNotifier {
  final RemoteServices remoteServices;
  final int id;

  DetailViewModel({required this.remoteServices, required this.id}) {
    dataDetail(id);
  }

  String _message = '';
  late dynamic _dataResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _dataResult;
  ResultState get state => _state;

  Future<dynamic> dataDetail(int id) async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final dataDetail = await remoteServices.dataDetail(id);
      _state = ResultState.hasData;
      notifyListeners();
      return _dataResult = dataDetail.data;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}
