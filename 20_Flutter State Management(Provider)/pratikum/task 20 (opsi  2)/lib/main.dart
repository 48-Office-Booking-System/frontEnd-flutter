import 'package:flutter/material.dart';
import 'laman_kontak.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Section 20',
      home: LamanKontak(),
    );
  }
}
