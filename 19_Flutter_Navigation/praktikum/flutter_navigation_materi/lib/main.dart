import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      initialRoute:'/',
      routes: {
        '/':(_)=>const HomeScreen(),
        '/about':(_)=> const AboutScreen()
      },
    );
  }
}
