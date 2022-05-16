import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Baru extends StatefulWidget {
  const Baru({Key? key}) : super(key: key);

  static const String route = '/Baru';

  @override
  State<Baru> createState() => _BaruState();
}

class _BaruState extends State<Baru> with TickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  bool isUp = false;

  @override
  void initState() {
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween<double>(begin: 0, end: -300).animate(animationController)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Laman Baru"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.8),
              child: Transform.translate(
                  offset: Offset(0, animation.value),
                  child: Image.network(Faker().image.image())),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    if (isUp) {
                      animationController.reverse();
                    } else {
                      animationController.forward();
                    }
                    setState(() {
                      isUp = !isUp;
                    });
                  },
                  child: Text('New')),
            )
          ],
        ));
  }
}
