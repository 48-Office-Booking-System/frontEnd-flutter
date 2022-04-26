import 'package:flutter/material.dart';

class Jawaban extends StatefulWidget {
  const Jawaban({Key? key}) : super(key: key);

  static const String route = '/jawaban';

  @override
  State<Jawaban> createState() => _JawabanState();
}

class _JawabanState extends State<Jawaban> {
  bool isZoom = true;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> sesuatu =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: sesuatu["Nama"],
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Image.network(
                sesuatu["Foto"],
              ),
              width: isZoom ? 500 : 300,
              height: isZoom ? 500 : 300,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isZoom = !isZoom;
              });
            },
            child: Text("Zoom In/Out"),
          ),
        ],
      ),
    );
  }
}

class ReturnParam {
  final String option;
  final Color color;

  ReturnParam(this.option, this.color);
}
