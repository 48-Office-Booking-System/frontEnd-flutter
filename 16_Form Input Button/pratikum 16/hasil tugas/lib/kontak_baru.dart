import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KontakBaru extends StatefulWidget {
  const KontakBaru({Key? key}) : super(key: key);

  @override
  State<KontakBaru> createState() => _KontakBaruState();
}

class _KontakBaruState extends State<KontakBaru> {
  TextEditingController InputController = TextEditingController();

  // final int InputNumber = TextEditingController() as int;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    InputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create New Contacts ",
        ),
        centerTitle: true,
      ),
      body: Container(
        //untuk memberikan jarak textFormField
        padding: const EdgeInsets.symmetric(
          vertical: 150,
          horizontal: 25,
        ),
        child: Form(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //const Padding(padding: EdgeInsets.all(8)),
              TextFormField(
                controller: InputController,
                //untuk terus memeriksa form telah terisi atau belum
                //autovalidateMode: true,

                //untuk memeriksa form telah diisi semua
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return "Name Cannot be empty";
                //   }
                //   return null;
                // },
                //controller: InputController,
                decoration: InputDecoration(
                  labelText: "Name",
                  //untuk memberikan garis luar
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                // keyboardType: TextInputType.name,
              ),
              //memberikan jarak antara name dan phone number
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                //untuk terus memeriksa form telah terisi atau belum
                //autovalidateMode: true,

                //untuk memeriksa form telah diisi semua
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return "Number Phone cannot be empty";
                //   }
                //   return null;
                // },
                //controller: InputController,
                decoration: InputDecoration(
                  labelText: "Number Phone",
                  //untuk memberikan garis luar
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Done"),
                //untuk membuat sudut button bulat
                // style: ElevatedButton.styleFrom(
                //   fixedSize: Size(300, 100),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(50),
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
