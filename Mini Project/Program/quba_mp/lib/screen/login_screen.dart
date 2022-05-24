import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quba_mp/screen/regist_screen.dart';
import 'package:quba_mp/utils/color_utils.dart';
import 'package:quba_mp/screen/introduction_screen.dart';
import '../reusable_widget/reusable_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("B689C0"),
          hexStringToColor("947EC3"),
          hexStringToColor("6A67CE")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Email", Icons.mail_outline, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                LoginRegisterButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController
                              .text, //macharaniras.smkn4jbi@gmail.com , pw : sofi123
                          password: _passwordTextController.text)
                      .then((value) {
                    // Navigator.of(context).pushNamed('/welcome');
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return const IntroductionScreen();
                        },
                        transitionDuration: Duration(milliseconds: 1500),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          final tween = Tween(
                              begin: const Offset(0, 5), end: Offset.zero);
                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        }));
                  }).onError((error, stackTrace) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("${error.toString()}"),
                    ));
                  });
                }),
                registOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row registOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).pushNamed('/register');
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const RegistScreen();
                },
                transitionDuration: Duration(milliseconds: 1500),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  final tween =
                      Tween(begin: const Offset(5, 0), end: Offset.zero);
                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                }));
          },
          child: const Text(
            " Register",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
