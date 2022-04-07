import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:materi_contact/stores/contact.dart'as contact_store;

import 'homepage.dart';
void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(_)=>contact_store.Contact(),
    ),
  ],
  child :const MyApp(),
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title : 'Contact',
      home : HomePage(),
    );
  }
}