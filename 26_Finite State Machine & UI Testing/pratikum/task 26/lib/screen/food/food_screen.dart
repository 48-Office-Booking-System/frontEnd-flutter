import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sec26/screen/food/food_view_model.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPersistentFrameCallback((timeStamp) {
      Provider.of<FoodViewModel>(context, listen: false).getAllFood();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<FoodViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FOODS'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: modelView.foods.length,
        itemBuilder: ((context, index) {
          final food = modelView.foods[index];
          return ListTile(
            title: Text(food.name),
          );
        }),
      ),
    );
  }
}
