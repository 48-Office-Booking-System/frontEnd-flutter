import 'package:flutter/material.dart';
import 'package:materi/state_management.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter State Management',
      home: StateManagement(),
    );
  }
}
