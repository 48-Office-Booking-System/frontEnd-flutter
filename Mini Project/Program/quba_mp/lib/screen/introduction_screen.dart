import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quba_mp/screen/home.dart';
import 'package:quba_mp/screen/login_screen.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "QUBA ",
              style: TextStyle(
                fontSize: 80,
                fontFamily: 'Macondo',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Text(
                "Alquran diturunkan untuk menjadi obat bagi penyakit manusia dan rahmat bagi orang-orang yang beriman(QS.Al-Isra:82)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              height: 300,
              child: Lottie.asset(
                "assets/lotties/animasi1.json",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
              onPressed: () {
                // Navigator.of(context).pushNamed('/');
                Navigator.of(context).push(
                  PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                    return const HomePage();
                  }, transitionDuration: Duration(milliseconds: 1500),
                  transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                    final tween =
                        Tween(begin: const Offset(0, -5), end: Offset.zero);
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  }));
              },
              child: Text("Mulai dengan Bismillah"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepPurple),
              ),
              onPressed: () {
                // Navigator.of(context).pushNamed('/');
                Navigator.of(context).push(
                  PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                    return const LoginScreen();
                  }, transitionDuration: Duration(milliseconds: 1500),
                  transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                    final tween =
                        Tween(begin: const Offset(0, -5), end: Offset.zero);
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  }));
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
