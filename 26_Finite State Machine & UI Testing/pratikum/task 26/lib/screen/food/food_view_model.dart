import 'package:flutter/widgets.dart';
import 'package:sec26/model/api/food_api.dart';
import 'package:sec26/model/food_model.dart';

class FoodViewModel with ChangeNotifier {
  List<Food> _foods = [];
  List<Food> get foods => _foods;

  getAllFood() async {
    var a = FoodAPI();
    final f = await a.getFood();
    _foods = f;
    notifyListeners();
  }
}
