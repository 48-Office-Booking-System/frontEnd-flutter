import 'dart:convert';
import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quba_mp/screen/home.dart';
import 'package:quba_mp/screen/home_screen.dart';
import 'package:quba_mp/screen/introduction_screen.dart';
import 'package:quba_mp/screen/login_screen.dart';
import 'package:quba_mp/screen/reading_page.dart';
import 'package:quba_mp/screen/regist_screen.dart';
import 'package:quba_mp/view_model/home_view_model.dart';

import 'model/surah_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCufx4Fdl9y55vqMNbX1O4HCJ-nIA0uzwg",
      appId: "1:694387299836:android:a93be65205bd1384eace7",
      messagingSenderId: "694387299836",
      projectId: "login-quba",
    ),
  );
  runApp(const MyApp());
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Quba App',
    theme: ThemeData(primarySwatch: Colors.purple),
    home: HomePage(),
    initialRoute: '/',
    routes: {
      '/login': (context) => LoginScreen(),
      '/register': (context) => RegistScreen(),
      '/homepage': (context) => HomePage(),
      '/homescreen': (context) => HomeScreen(),
      // '/readingscreen': (context) => SurahPage(: ),
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
        create: (context) => HomeViewModel(),
        child: MaterialApp(
          title: 'Quba App',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: HomePage(),
        ));
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   @override
//   List<Surah> surahList = [];
//   int selectedIndex = 0;
//   bool isReverse = false;
//   ScrollController _controller = ScrollController();
//   @override
//   void initState() {
//     readJson();
//     super.initState();
//   }

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/surah.json');
//     final data = await json.decode(response);
//     for (var item in data["chapters"]) {
//       surahList.add(Surah.fromJson(item));
//     }
//     debugPrint(surahList.length.toString());
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Transform.rotate(
//           angle: isReverse ? pi : 2 * pi,
//           child: IconButton(
//               icon: Icon(Icons.sort),
//               onPressed: () {
//                 setState(() {
//                   isReverse = !isReverse;
//                 });
//               }),
//         ),
//       ),
//       body: surahList.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : chaptersList(isReverse ? surahList.reversed.toList() : surahList),
//     );
//   }

//   Widget chaptersList(List<Surah> chapters) {
//     return ListView.separated(
//       controller: _controller,
//       itemBuilder: (context, index) => ListTile(
//         leading: CircleAvatar(
//           child: Text(chapters[index].name.toString()),
//         ),
//         title: Text(chapters[index].name.toString()),
//         subtitle: Text(chapters[index].numberOfVerses.toString()),
//         trailing: Text(
//           chapters[index].name.toString(),
//           style: GoogleFonts.cairo(
//             fontSize: 18,
//           ),
//         ),
//         onTap: () => Navigator.push(
//           context,
//           MaterialPageRoute<void>(
//             builder: (BuildContext context) =>
//                 SurahPage(surah: chapters[index]),
//           ),
//         ),
//       ),
//       separatorBuilder: (context, index) => Divider(height: 1),
//       itemCount: chapters.length,
//     );
//   }
// }
