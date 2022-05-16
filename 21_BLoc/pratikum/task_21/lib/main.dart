import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_21/counter.dart';

void main() {
  runApp(const MyApp());
}

const String kontak = "/kontak";
const String kontakBaru = "/kontakBaru";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BLOC to SharedPreference',
        routes: {
          kontak: (_) => const Kontak(),
          kontakBaru: (_) => KontakBaru(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        
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

    late SharedPreferences kontak;
    late bool newContact;

    void checkNomor()async{
      kontak = await SharedPreferences.getInstance();
      newContact = kontak.getBool('kontak')??true;

      if(newContact==false){
        Navigator.pushAndRemoveUntil(
         context,
         MaterialPageRoute(
           builder: (context) => const Kontak(),
         ),
         (route) => false);
      }
      }

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
            return const Divider();
          },
          itemCount: 25),
    );
  }
}

// ignore: must_be_immutable
class KontakBaru extends StatelessWidget {
  KontakBaru({Key? key}) : super(key: key);
  
  // tampung nilai
  TextEditingController _inputNama = TextEditingController();
  TextEditingController _inputHp = TextEditingController();

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
            controller: _inputNama,
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
            controller: _inputHp,
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
                          Text("Nama     : ${_inputNama.text}"),
                          Text("Nomor Hp : ${_inputHp.text}"),
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
