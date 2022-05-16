import 'package:sec26/model/food_model.dart';
import 'package:dio/dio.dart';

class FoodAPI {
  Future<List<Food>> getFood() async {
    final response = await Dio(BaseOptions(connectTimeout: 3000)).get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/food');

    List<Food> foods = (response.data as List)
        .map((e) => Food(
              id: e['id'],
              name: e['name'],
            ))
        .toList();

    return foods;
  }
}
