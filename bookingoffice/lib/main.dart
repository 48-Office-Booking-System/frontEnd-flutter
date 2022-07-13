import 'package:bookingoffice/components/bottom_navigation.dart';
import 'package:bookingoffice/providers/office_view_model.dart';
import 'package:bookingoffice/providers/review_view_model.dart';
import 'package:bookingoffice/providers/testimoni_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => OfficeViewModel(),
          ),
          ChangeNotifierProvider(
            create: (_) => TestimoniViewModel(),
          ),
          ChangeNotifierProvider(
            create: (_) => RiviewViewModel(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: BottomNavigation(),
        ),
    );
  }
}