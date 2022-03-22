import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Contoh Badges'),
    ),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Chip(
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.deepPurple,
            label: Text('BADGE', style: TextStyle(color: Colors.white)),
          ),

          //menambahkan spasi berbentuk garis pada chip dan badge
          //Divider(),

          Badge(
            //toAnimate: false,
            padding: const EdgeInsets.all(10),
            shape: BadgeShape.square,
            badgeColor: Colors.deepPurple,
            borderRadius: BorderRadius.circular(8),//atur radius lengkungan siku
            badgeContent:
                const Text('BADGE', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ));
  }
}