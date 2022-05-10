import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:quba_app/home.dart';
import 'app/routes/app_pages.dart';
import 'login.dart';

void main() => runApp(MyApp());
//     GetMaterialApp(
//       title: "Application",
//       initialRoute: Routes.INTRODUCTION,
//       getPages: AppPages.routes,
//     ),
//   );
// }

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isUser = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initCheck();
  }

  //const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Splash(isUser),
    );
  }

  void _initCheck() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('isUser') != null) {
      setState(() {
        isUser = prefs.getBool('isUser')!;
      });
    }
  }
}

class Splash extends StatefulWidget {
  //const Splash({ Key? key }) : super(key: key);
  final bool isUser;
  Splash(this.isUser);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (c) => widget.isUser ? Home() : Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Menunggu...'),
    ));
  }
}
