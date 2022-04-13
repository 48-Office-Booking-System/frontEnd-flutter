import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:task_22/jawaban.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  static const String route = '/detail';

  @override
  Widget build(BuildContext context) {
    Map<String, String> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final Faker faker = Faker();
    final String imageUrl = faker.image.image(random: true);
    final String nama = faker.person.name();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak Baru"),
      ),
      body: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: nama,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Image.network(data["Foto"]!),
            ),
            Text(data["Nama"]!),
            Text(data["Nomor HP"]!),
          ],
        ),
        onTap: () async {
          final argument = {
            "Foto": imageUrl,
            'Nama': nama,
          };
          final ReturnParam result = await Navigator.pushNamed(
              context, Jawaban.route,
              arguments: argument) as ReturnParam;
        },
      ),
    );
  }
}
