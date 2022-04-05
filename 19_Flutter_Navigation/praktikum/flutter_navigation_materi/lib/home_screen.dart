import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title :const Text('Home Screen'),
        centerTitle: true,
        ),
        body: Center(
          child:ElevatedButton(
            onPressed: (){
              Navigator.of(context).
              pushNamed('/about',arguments: 'Data Dari HomeScreen' );
               },
           
            child : const Text('Go To About Page'),
          ),
        ),
    );
  }
}