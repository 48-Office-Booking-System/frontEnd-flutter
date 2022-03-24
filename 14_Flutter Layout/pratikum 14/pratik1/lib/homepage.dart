import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView in Flutter"),
        actions: const [Icon(Icons.search)],
      ),
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    faker.image.image(
                        random: true,
                        keywords: ["people"],
                        width: 90,
                        height: 90),
                  )),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.word()),
              trailing: Column(
                children: [
                  Text(faker.date.time()),
                  const Chip(
                    label: Text("3"),
                    backgroundColor: Colors.green,
                  )
                ],
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: 30),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).popAndPushNamed("/barcode");
                },
                child: const ListTile(
                  // ignore: unnecessary_const
                  leading: Icon(Icons.qr_code),
                  title: Text("Barcode"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//300416