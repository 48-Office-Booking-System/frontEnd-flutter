import 'package:flutter/material.dart';
import 'package:kobaspace/components/result_state.dart';
import 'package:kobaspace/services/remote_services.dart';

class ReviewViewModel extends ChangeNotifier {
  final RemoteServices remoteServices;

  ReviewViewModel({required this.remoteServices}) {
    dataReview();
  }

  String _message = '';
  late dynamic _dataResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _dataResult;
  ResultState get state => _state;

  Future<dynamic> dataReview() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final dataReview = await remoteServices.dataReview();
      _state = ResultState.hasData;
      notifyListeners();
      return _dataResult = dataReview.data;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}
