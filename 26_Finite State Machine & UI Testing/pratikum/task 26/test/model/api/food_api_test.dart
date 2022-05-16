import 'package:sec26/model/api/food_api.dart';
import 'package:sec26/model/food_model.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'food_api_test.mocks.dart';

// // @GenerateMocks([FoodAPI])
// void main() {
//   // group('FoodAPI', () {
//     // FoodAPI foodAPI = MockFoodAPI();

//     test('get all food return data', () async {
//       when(foodAPI.getFood()).thenAnswer((_) => <Food>[
//             Food(id: 1, name: 'miayam'),
//           ]);
//       var foods = await FoodAPI().getFood();
//       expect(foods.isNotEmpty, true);
//     });
//   });
// }

@GenerateMocks([FoodAPI])
void main() {
  group('FoodApiTEST', () {
    test('get all food return data', () async {
      var foodApi = MockFoodAPI();
      when(foodApi.getFood()).thenAnswer((_) async => <Food>[
            Food(
              id: 1,
              name: 'miayam',
            ),
            Food(
              id: 2,
              name: 'bakso',
            ),
            Food(
              id: 3,
              name: 'pecel',
            ),
          ]);
      var foods = await foodApi.getFood();
      // expect(foods.isNotEmpty, true);
      expect(foods.length, 3);

      var _foods = await FoodAPI().getFood();
      expect(_foods.isNotEmpty, true);
    });
  });
}
