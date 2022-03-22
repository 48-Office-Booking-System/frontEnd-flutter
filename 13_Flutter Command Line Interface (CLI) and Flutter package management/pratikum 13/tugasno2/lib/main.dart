import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Barcode Alta.id'),
//       ),
//       body: Center(
//         child: BarcodeWidget(
//           barcode: Barcode.aztec(), // Barcode type and settings
//           data: 'https://alta.id/', // Content
//           width: 150,
//           height: 150,
//         ),
//       ),
//     );
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Barcode GIT Saya'),
//       ),
//       body: Center(
//         child: BarcodeWidget(
//           barcode: Barcode.aztec(), // Barcode type and settings
//           data: 'https://github.com/MacharaniRaschintasofi , Nama Panjang : Macharani Raschintasofi', // Content
//           width: 200,
//           height: 200,
//         ),
//       ),
//     );
//   }
// }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode FLUTTER ASIK'),
      ),
      body: Center(
        child: BarcodeWidget(
          barcode: Barcode.aztec(), // Barcode type and settings
          data: 'FLUTTER ASIK', // Content
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}