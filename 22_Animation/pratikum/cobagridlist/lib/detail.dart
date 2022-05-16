import 'package:flutter/material.dart';

import 'new.dart';

class Detail extends StatefulWidget {
  // Detail({Key? key, required this.image, required this.tagName})
  //     : super(key: key);

  // final String image;
  // final String tagName;

  static const String route = '/detail';

  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final String optionOne = "Real Madrid";

  final String optionTwo = "Barcelona";
  bool iszoom = true;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> tampil =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TADA"),
      ),
      body: Column(
        children: [
          Hero(
            tag: tampil['tagName'],
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              child: Image.network(
                tampil['imageUrl'],
              ),
              width: iszoom ? 400 : 300,
              height: iszoom ? 400 : 300,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context, ReturnParam(optionOne, Colors.black));
                  },
                  child: Text(optionOne),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black))),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context, ReturnParam(optionTwo, Colors.blueAccent));
                },
                child: Text(optionTwo),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueAccent)),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                iszoom = !iszoom;
              });
            },
            child: Text('Toggle Image'),
          ),
          ElevatedButton(
            onPressed: () {
             Navigator.pushNamed(context, Baru.route);
            },
            child: Text('NewPage'),
          )
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
