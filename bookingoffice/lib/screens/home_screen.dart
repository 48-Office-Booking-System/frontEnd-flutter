import 'package:cp_koba/screens/login_screen.dart';
import 'package:cp_koba/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              child: Text("Logout"),
              onPressed: () {
                print("Registrasi");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnboardingScreen()));
              })),
    );
  }
}
