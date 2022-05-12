import 'package:flutter/material.dart';
import 'package:quba_mp/reusable_widget/reusable_widget.dart';
import 'package:quba_mp/screen/home_screen.dart';

import '../utils/color_utils.dart';
import 'package:quba_mp/screen/login_screen.dart';

class RegistScreen extends StatefulWidget {
  const RegistScreen({Key? key}) : super(key: key);

  @override
  State<RegistScreen> createState() => _RegistScreenState();
}

class _RegistScreenState extends State<RegistScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Register",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
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
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Username", Icons.person_outline, false,
                    _usernameTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Email", Icons.messenger_outline, true,
                    _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Password", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                LoginRegisterButton(context, false, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomeScreen())));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
