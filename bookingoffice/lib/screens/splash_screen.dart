import 'dart:async';

import 'package:map_koba/components/bottom_navigation.dart';
import 'package:map_koba/pages/home_page.dart';
import 'package:map_koba/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:map_koba/components/bottom_navigation.dart';
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
        context, MaterialPageRoute(builder: (context) => BottomNavigation()));
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
                color: new Color(0xff303B79),
                gradient: LinearGradient(colors: [
                  (new Color(0xff303B79)),
                  Color.fromARGB(255, 90, 100, 175)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            //   child: Container(
            //     child: Image.asset("assets/logo.png"),
            //   ),
            // )
            child: Image(
              image: AssetImage(
                'assets/logo.png',
              ),
              height: 300.0,
              width: 300.0,
            ),
          ),
        ],
      ),
    );
  }
}
