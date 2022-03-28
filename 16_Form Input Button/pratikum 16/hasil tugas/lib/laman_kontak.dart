import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:tugas/kontak_baru.dart';

class LamanKontak extends StatelessWidget {
  const LamanKontak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    final String imageUrl = faker.image.image(random: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const KontakBaru(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (ctx, index) => ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      title: Text(faker.person.name()),
                      subtitle: Text(faker.phoneNumber.us()),
                    ),
                separatorBuilder: (ctx, index) {
                  return const Divider();
                },
                itemCount: 20),
          ),
        ],
      ),
    );
  }
}
