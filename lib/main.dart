import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_bloc/counter.dart';

void main() {
  runApp(const MyApp());
}

final String kontak = "/kontak";
final String kontakBaru = "/kontakBaru";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tugas Live Section 21',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          kontak: (_) => const Kontak(),
          kontakBaru: (_) => KontakBaru(),
        },
        initialRoute: kontak,
      ),
    );
  }
}

class Kontak extends StatelessWidget {
  const Kontak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, kontakBaru);
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (ctx, index) => ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    faker.image.image(),
                  ),
                ),
                title: Text(
                  faker.person.name(),
                ),
                subtitle: Text(faker.phoneNumber.us()),
              ),
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 25),
    );
  }
}

class KontakBaru extends StatelessWidget {
  KontakBaru({Key? key}) : super(key: key);
  // tampung nilai
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputHp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak Baru"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextFormField(
            // untuk pasang variabel yang akan digunakan
            controller: inputNama,
            decoration: const InputDecoration(
              label: Text("Nama"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          TextFormField(
            controller: inputHp,
            decoration: const InputDecoration(
              label: Text("Nomor HP"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            keyboardType: TextInputType.phone,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (samting) {
                    return AlertDialog(
                      content: Column(
                        children: [
                          Text("Nama     : ${inputNama.text}"),
                          Text("Nomor Hp : ${inputHp.text}"),
                        ],
                      ),
                    );
                  });
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
