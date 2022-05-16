import 'package:flutter/material.dart';
import 'package:task_22/jawaban.dart';
import 'package:task_22/kontak.dart';
import 'package:task_22/tambah_kontak.dart';
import 'package:task_22/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  PageRouteBuilder routeBuilder(Widget widget, RouteSettings routeSettings) {
    return PageRouteBuilder(
        settings: routeSettings,
        pageBuilder: (_, __, ___) => widget,
        transitionsBuilder: (_, animation, __, child) {
          final tween = Tween(begin: 0.0, end: 1.0);
          return ScaleTransition(
            scale: animation.drive(tween),
            child: child,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Section 22',
      initialRoute: Kontak.route,
      // routes: {
      //   Kontak.route: (context) => Kontak(),
      //   TambahKontak.route: (context) => TambahKontak(),
      //   // Detail.route: (context) => Detail(),
      //   // KontakBaru.route: (context) => KontakBaru(),
      //   Jawaban.route: (context) => Jawaban()
      // },
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case Jawaban.route:
            return routeBuilder(Jawaban(), setting);
          case Kontak.route:
            return  routeBuilder(Kontak(), setting);
          case TambahKontak.route:
            return routeBuilder(TambahKontak(), setting);
          
          default:
            return routeBuilder(Detail(), setting);
        }
      },
    );
  }
}
