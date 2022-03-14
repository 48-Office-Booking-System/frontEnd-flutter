import 'dart:html';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// class MyApp extends StatelessWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home : Scaffold(
//         body: SafeArea(child: Text('Selamat Datang di Flutter')),
//       ),
//     );
//   }
// }



// class MyApp extends StatefulWidget {
//   const MyApp({ Key? key }) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home : Scaffold(
//         body: SafeArea(child: Text('Selamat Datang di Flutter')),
//       ),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
      ),
        body: const Text('Selamat Datang di Flutter'),
      ),
    );
  }
}