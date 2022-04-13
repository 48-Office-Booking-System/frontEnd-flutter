import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:task_22/detail.dart';
import 'package:task_22/tambah_kontak.dart';

class Kontak extends StatelessWidget {
  const Kontak({Key? key}) : super(key: key);

  static const String route = '/kontak';

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();

    Map<String, String> data = {
      "Foto": faker.image.image(),
      "Nama": faker.person.name(),
      "Nomor HP": faker.phoneNumber.us(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, TambahKontak.route, arguments: data);
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            final String img = faker.image.image();
            final String nama = faker.person.name();
            final String nomor = faker.phoneNumber.us();

            Map<String, String> data = {
              "Foto": img,
              "Nama": nama,
              "Nomor HP": nomor,
            };
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Detail.route, arguments: data);
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(img),
                ),
                title: Text(nama),
                subtitle: Text(nomor),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: 25),
    );
  }
}
