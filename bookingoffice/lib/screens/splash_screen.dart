import 'dart:async';

import 'package:cp_koba/homepage.dart';
import 'package:cp_koba/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cp_koba/homepage.dart';
import 'login_screen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xff606FAA),
                gradient: LinearGradient(colors: [
                  (new Color(0xff606FAA)),
                  Color.fromARGB(255, 159, 172, 224)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/logo.png"),
            ),
          )
        ],
      ),
    );
  }
}
