import 'package:barcode_widget/barcode_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class BarcodePage extends StatelessWidget {
  const BarcodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    return Scaffold(
      appBar: AppBar(title: const Text("Barcode")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BarcodeWidget(
            data: faker.person.firstName(),
            barcode: Barcode.qrCode(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            faker.person.firstName(),
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
