import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cobagridlist/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  PageRouteBuilder routeBuilder(Widget widget, RouteSettings routeSettings) {
    return PageRouteBuilder(
        settings: routeSettings,
        pageBuilder: (_, __, ___) => widget,
        transitionsBuilder: (_, animation, __, child) {
          final tween = Tween(begin: 0.0, end: 1.0);

          return ScaleTransition(
            scale: animation.drive(tween),
            child: child,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.rowdies().fontFamily,
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(),
      initialRoute: MyHomePage.route,
      routes: {
        Detail.route: (context) => Detail(),
        MyHomePage.route: (context) => MyHomePage(),
      },
      onGenerateRoute: (set) {
        switch (set.name) {
          case Detail.route:
            return routeBuilder(Detail(), set);
          default:
            return routeBuilder(MyHomePage(), set);
        }
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const String route = '/';
  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid View"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(10),
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    final String imageUrl = faker.image.image(random: true);
                    final String tagName = faker.person.firstName();
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Hero(
                              tag: tagName,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(imageUrl),
                              ),
                            ),
                            Text(faker.lorem.word())
                          ],
                        ),
                        onTap: () async {
                          final argument = {
                            'imageUrl': imageUrl,
                            'tagName': tagName,
                          };
                          final ReturnParam result = await Navigator.pushNamed(
                                  context, Detail.route, arguments: argument)
                              as ReturnParam;

                          ScaffoldMessenger.of(context)
                            ..removeCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                              content: Text(
                                result.option,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              backgroundColor: result.color,
                            ));
                        },
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return const Divider();
                  },
                  itemCount: 30),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemBuilder: (ctx, index) {
                  final String imageUrl = faker.image.image(random: true);

                  return InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                        FittedBox(child: Text(faker.lorem.word()))
                      ],
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (ctx) {
                            return Image.network(imageUrl);
                          });
                    },
                  );
                },
                itemCount: 32,
                padding: const EdgeInsets.all(10),
              ),
            ),
          ],
        ));
  }
}
