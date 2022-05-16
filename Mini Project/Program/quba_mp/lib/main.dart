import 'package:firebase_core/firebase_core.dart';
import 'package:quba_mp/screen/detail.dart';
import 'package:quba_mp/screen/home.dart';
import 'package:quba_mp/screen/introduction_screen.dart';
import 'package:quba_mp/screen/regist_screen.dart';
import 'package:quba_mp/view_model/detail_view_model.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:quba_mp/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
        create: (context) => HomeViewModel(),
        child: ChangeNotifierProvider<DetailViewModel>(
          create: (context) => DetailViewModel(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'QUBA',
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
            ),
            home: const LoginScreen(),
            // initialRoute: '/login',
            // routes: {
            //   '/': (_) => const HomePage(),
            //   '/login': (_) => const LoginScreen(),
            //   '/register': (_) => const RegistScreen(),
            //   '/welcome': (_) => const IntroductionScreen(),
            //   '/detail': (_) => DetailPage(),
            // },
          ),
        ));
  }
}
