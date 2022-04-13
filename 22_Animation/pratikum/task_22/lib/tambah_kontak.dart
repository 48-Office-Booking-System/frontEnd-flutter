import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:task_22/kontak_baru.dart';

class TambahKontak extends StatefulWidget {
  const TambahKontak({Key? key}) : super(key: key);

  static const String route = '/tambahKontak';

  @override
  State<TambahKontak> createState() => _TambahKontakState();
}

class _TambahKontakState extends State<TambahKontak> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputHp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Map<String, String> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak Baru"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 15,),
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
                ]),
                const SizedBox(height: 15),
                ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (sesuatu) {
                    return AlertDialog(
                      content: Column(
                        children: [
                          Text("Nama     : ${inputNama.text}"),
                          Text("Nomor Hp : ${inputHp.text}"),
                        ],
                      ),
                    );
                  },);
                  //Navigator.pushNamed(context, KontakBaru.route, arguments: data);
            },
            child: const Text("Simpan"),
          ),
          ],
        ),
      ),
    );
  }
}
