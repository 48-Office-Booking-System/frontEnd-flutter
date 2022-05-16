import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title :'Flutter Demo',
        theme : ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        );
  }
}