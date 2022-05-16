import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sec26/screen/food/food_screen.dart';
import 'package:sec26/screen/food/food_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FoodScreen(),
      ),
    ),
  );
}
