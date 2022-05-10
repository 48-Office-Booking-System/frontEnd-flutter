// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

class Login extends StatefulWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: _isLoading
            ? Center(
                child: Text('Tunggu...'),
              )
            : Column(
                children: <Widget>[
                  TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    controller: _pass,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    child: Text('Login'),
                    onPressed: _login,
                  )
                ],
              ),
      ),
    );
  }

//email = user@gmail.com || pass = 123456
  Future<void> _login() async {
    if (_email.text.isNotEmpty && _pass.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });

      //shrd pref
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('isUser', true);

      Future.delayed(Duration(seconds: 2), () {
        if (_email.text == 'user@gmail.com' && _pass.text == '12345') {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (c) => Home()));
        }
      });
    }
  }
}
