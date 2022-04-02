import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              
              itemBuilder: (ctx, index) {
                
                final String imageUrl = faker.image.image(random: true); //hanya digunakan pada variable itemBuilder

                return InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      Text(faker.lorem.word())
                    ],
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (ctx) {
                          return Image.network(imageUrl);
                        });
                  },
                );
              },
              itemCount: 15,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (ctx, index) {
                final String imageUrl = faker.image
                    .image(random: true); //hanya digunakan pada variable itemBuilder

                return InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      Text(faker.lorem.word())
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
      ),
    );
  }
}

