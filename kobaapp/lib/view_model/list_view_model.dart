import 'package:flutter/material.dart';
import 'package:map_koba/components/result_state.dart';
import 'package:map_koba/services/remote_services.dart';

class ListViewModel extends ChangeNotifier {
  final RemoteServices remoteServices;

  ListViewModel({required this.remoteServices}) {
    dataList();
  }

  String _message = '';
  late dynamic _dataResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _dataResult;
  ResultState get state => _state;

  Future<dynamic> dataList() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final dataList = await remoteServices.dataList();
      _state = ResultState.hasData;
      notifyListeners();
      return _dataResult = dataList.data;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}
